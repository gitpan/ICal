#!/usr/bin/perl

use lib "../blib/lib";
use lib "../blib/arch";
use lib "../";

use ICal;

use ICal::Component;
use ICal::Property;
use ICal::Parameter;
use ICal::Value;
use ICal::Store;

package main; 


print "Starting\n";

test_parser();


sub test_datetime{

  my $v = ICal::Value::DateTime::new_from_time(localtime());

  print $v->as_ical_string(),"\n";

}

sub test_store
{

  $s = new ICal::Store('store');

  if (0) {
    $c = new ICal::Component::Vcalendar($p,$d);
    $c->add(
	  new ICal::Property::Dtstart("19970101T" . sprintf("%02.0f",rand(1)*23) . sprintf("%02.0f",rand(1)*59) . sprintf("%02.0f",rand(1)*59) ),
	    new ICal::Property::Dtend("19970101T". sprintf("%02.0f",rand(1)*23) . sprintf("%02.0f",rand(1)*59) . sprintf("%02.0f",rand(1)*59) ),
	  new ICal::Property::Dtstamp("19970101T". sprintf("%02.0f",rand(1)*23) . sprintf("%02.0f",rand(1)*59) . sprintf("%02.0f",rand(1)*59) )
	   );

    $s->store($c);
  }

  $s->set_min_dtstart('19970101T080000');
  $s->set_max_dtstart('19970101T185959');

  $s->set_min_dtend('19970101T10000000');
  $s->set_max_dtend('19970101T11000000');


  my @refs = $s->get_component_refs();

  foreach $i (@refs) {
    my $c = $s->get_component($i);
    print $c->as_ical_string() if $c;
  }

}

sub test_prop {

  $c = new ICal::Component::Vcalendar();

  $c->add(
	  new ICal::Property::Dtstart("19970101T123456"),
	  new ICal::Property::Dtend("19970101T123456"),
	  new ICal::Property::Dtstamp("19970101T123456")
	 );

  @props = $c->get_properties($ICal::ICAL_DTSTART_PROPERTY);

  foreach $i (@props) {
    print $i->as_ical_string();
  }

}

sub test_time {

  $p = new ICal::Property::Dtstart("19970101T123456");
  $v = $p->get_value_ref;
  
  print $v->as_ical_string(),"\n";
  
  $tt = ICal::icalvalue_get_datetime($v->[0]);

  print ICal::icaltimetype_month_get($tt),"\n";
  
  ICal::icaltimetype_month_set($tt,12);
  
  ICal::icalvalue_set_datetime($v->[0],$tt);
  
  print $v->as_ical_string(),"\n";
  
  
  ($sec,$min,$hour,$day,$mon,$year,$wday,$yday,$isdst) = $v->time();
  
  print "$sec,$min,$hour,$day,$mon,$year,$wday,$yday,$isdst\n";
  
}

sub test2  {

$d = new ICal::Component::Vfreebusy(new  ICal::Property::Comment('Blinky'));

$param = new ICal::Parameter::Cn("Foogle");

$p = new  ICal::Property::Comment('Bonko',$param);
$p->set_value("Booga");

$c = new ICal::Component::Vcalendar($p,$d);

$c->add(new ICal::Property::Dtstart("19970101T123456"),
       new ICal::Property::Dtend("19970101T123456"));

$v = $p->get_value_ref;

#print $c->as_ical_string(),"\n";

print $v->as_ical_string(),"\n";
$v->set("Fingie");
print $v->as_ical_string(),"\n";

}

sub test_parser
{

  while(<>)
  {
    $in .= $_;
  }
  
  
  my $c = new ICal::Component(\$in);print $c->as_ical_string(),"\n";
}


