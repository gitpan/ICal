#!/usr/bin/perl

use lib "../perl/blib/lib";
use lib "../perl/blib/arch";
use lib "../perl/";

use ICal;

use ICal::Component;
use ICal::Property;
use ICal::Parameter;
use ICal::Value;
use ICal::Store; 

use Getopt::Std;

use MIME::Entity;
use MIME::Parser;


# Read an incoming mail and extract all of the iCAL components. For
# each meeting proposal, if the time slot of the proposal is un
# occupied, book the meeting and send back a confirmation. Otherwise,
# send back a rejection.


mkdir ('store',0775);

my $parser = new MIME::Parser output_dir  => "./mimemail",
                                      output_prefix  => "part",
                                      output_to_core => 20000;

$entity = $parser->read(\*STDIN) or die "couldn't parse MIME stream";
 
for($i=0; $i <$entity->parts; $i++){

  my $ent = $entity->parts($i);
  my $pre = $ent->preamble;
  my $head = $ent->head;

  # Found an iCAL component
  if ( $head->mime_attr('content-type') eq 'text/calendar'){

    my $comp_text = $ent->stringify_body;
    my $c = new ICal::Component(\$comp_text);

    #print $c->as_ical_string() if $c;

    my @method = $c->get_properties($ICal::ICAL_METHOD_PROPERTY);
    
    my @components = $c->get_components($ICal::ICAL_VEVENT_COMPONENT);


    if ($method[0] && $method[0]->get_value() eq "REQUEST"){

      foreach $i (@components) {
	book_meeting($i);
      }

    }
  }

}

sub book_meeting
{
  my $c = shift;
  my $s = new ICal::Store('store');

  my ($start) = $c->get_properties($ICal::ICAL_DTSTART_PROPERTY);
  my ($end) = $c->get_properties($ICal::ICAL_DTEND_PROPERTY);

  print $start->get_value," ", $end->get_value(),"\n";

  # Look for all components that have start or end times in the range

  $s->set_min_dtstart($start->get_value);
  $s->set_max_dtstart($end->get_value);

#  $s->set_min_dtend($start);
#  $s->set_max_dtend($end);

  my @refs = $s->get_component_refs();

  foreach $i (@refs) {
    my $c = $s->get_component($i);
    print "Found Conflicting Component:\n",$c->as_ical_string(),"\n" if $c;
  }
  
  if (! @refs ){
    print "No Conflicts. Booking meeting\n";
    $s->store($c);
  }

}
