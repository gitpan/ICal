#!/usr/bin/perl
# -*- Mode: perl -*-
#======================================================================
# FILE: Value.pm
# CREATOR: eric 16 August 1999
#
# DESCRIPTION:
#   
#
#  $Id: Value.pm,v 1.2 1999/11/17 07:14:14 eric Exp eric $
#  $Locker: eric $
#
# (C) COPYRIGHT 1999 Eric Busboom
# http://www.softwarestudio.org 
#
# The contents of this file are subject to the Mozilla Public License
# Version 1.0 (the "License"); you may not use this file except in
# compliance with the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
# 
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
# the License for the specific language governing rights and
# limitations under the License.
# 
# The Original Code is Value.pm. The Initial Developer of the Original
# Code is Eric Busboom
#
#======================================================================

package ICal::Value;

use ICal::derivedval;

sub new_from_ref{
   my $self = [];
   my $value_ref = shift;

   $self->[0] = $value_ref;

   return undef if !$value_ref;

   my $value_type = ICal::icalvalue_isa($value_ref);

   my $type_name = ICal::icalenum_value_kind_to_string($value_type);

   my $ucf = join("",map {ucfirst(lc($_));}  split(/-/,$type_name));

   my $package = "ICal::Value::".$ucf;


   return bless $self, $package;
}

sub _impl{

  return $_[0]->[0];
}

sub new_clone{
   my $self = [];
   my $package = shift;
   my $orig = shift;

   my $p = ICal::icalvalue_new_clone($orig->[0]);
   
   $self->[0] = $p;

   return bless $self, $package;
}


sub as_ical_string{

  my $self= shift;
  
  my $str = ICal::icalvalue_as_ical_string($self->[0]);

}

sub isa{
}


package ICal::Value::DateTime;
use ICal;
use Time::Local;
@ISA=qw(ICal::Value);
sub time
{
  my $self = shift;
  my $impl = $self->_impl();
  my $tt = ICal::icalvalue_get_datetime($impl);

  my ($year,$month,$day,$hour,$minute,$second,$isutc,$isdate) = 
  (ICal::icaltimetype_year_get($tt),
  ICal::icaltimetype_month_get($tt),
  ICal::icaltimetype_day_get($tt),
  ICal::icaltimetype_hour_get($tt),
  ICal::icaltimetype_minute_get($tt),
  ICal::icaltimetype_second_get($tt),
  ICal::icaltimetype_is_utc_get($tt),
  ICal::icaltimetype_is_date_get($tt));

  my ($usec,$umin,$uhour,$umday,$umon,$uyear,$uwday,$uyday,$uisdst);

  if($isutc) {

    ($usec,$umin,$uhour,$umday,$umon,$uyear,$uwday,$uyday,$uisdst) 
    = gmtime(timegm($second,$minute,$hour,$day,$month-1,$year-1900,
		    undef,undef,undef));
  } else {

    ($usec,$umin,$uhour,$umday,$umon,$uyear,$uwday,$uyday,$uisdst) 
    = localtime(timelocal($second,$minute,$hour,$day,$month-1,$year-1900,
		    undef,undef,undef));
  }

  return ($usec,$umin,$uhour,$umday,$umon,$uyear,$uwday,$uyday,$uisdst);

}

sub new_from_time
{
  my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = @_;


  return new ICal::Value::DateTime(sprintf("%04s%02s%02sT%02s%02s%02s",$year+1900,$mon+1,$mday,$hour,$min,$sec));

}

1;

