#!/usr/bin/perl

use lib "../perl/blib/lib";
use lib "../perl/blib/arch";
use lib "../perl/";

use ICal;

use ICal::Component;
use ICal::Property;
use ICal::Parameter;
use ICal::Value;

use Getopt::Std;

use MIME::Entity;

my $method;

getopt('t');


foreach ($opt_t){

  /event_prop/ && do {
    
    break;
  }

} 


open F,"event_prop" || die "Can't find event_prop for opening";

while(<F>)
{
  $in .= $_;
}


my $c = new ICal::Component(\$in);
@props = $c->get_properties($ICal::ICAL_METHOD_PROPERTY);

if ($props[0]){
  $method = $props[0]->get_value_ref->as_ical_string();
} else {
  $method = "PUBLISH";
}

$top = build MIME::Entity Type    =>"multipart/mixed",
From    => "eric\@busboom.org",
To      => "alice",
Subject => "Hello, nurse!",
Data => "This is a calendar";


$top->attach (Data=>"Hey! Come to the meeting!");

$cal = MIME::Entity->build (Data        =>  $c->as_ical_string(),
			    Type        => "text/calendar",
			    Encoding    => "7bit");

$top->add_part($cal);



$cal->head->replace('content-type', "text/calendar; method=$method; charset=US-ASCII");


$top->print(\*STDOUT);
