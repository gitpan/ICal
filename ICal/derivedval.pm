# -*- Mode: Perl -*-
#  ======================================================================
#  $Id: derivedval.pm,v 1.1 1999/11/17 07:14:14 eric Exp eric $
#    
#  (C) COPYRIGHT 1999 Eric Busboom 
#  http://www.softwarestudio.org
#
#  The contents of this file are subject to the Mozilla Public License
#  Version 1.0 (the "License"); you may not use this file except in
#  compliance with the License. You may obtain a copy of the License at
#  http://www.mozilla.org/MPL/
# 
#  Software distributed under the License is distributed on an "AS IS"
#  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
#  the License for the specific language governing rights and
#  limitations under the License. 
#
#  The original author is Eric Busboom
#  The original code is derivedvalues.h
#
#  ======================================================================*/


package ICal::Value::Attach; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_ATTACH_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_ATTACH_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_ATTACH_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Binary; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_BINARY_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_BINARY_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_BINARY_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Boolean; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_BOOLEAN_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_BOOLEAN_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_BOOLEAN_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::CalAddress; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_CALADDRESS_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_CALADDRESS_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_CALADDRESS_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Date; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_DATE_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_DATE_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_DATE_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::DateTime; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIME_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_DATETIME_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIME_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }
   }
}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::DateTimeDate; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEDATE_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_DATETIMEDATE_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEDATE_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::DateTimePeriod; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEPERIOD_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_DATETIMEPERIOD_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEPERIOD_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Duration; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_DURATION_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_DURATION_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_DURATION_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Float; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_FLOAT_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_FLOAT_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_FLOAT_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Geo; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_GEO_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_GEO_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_GEO_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Integer; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_INTEGER_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_INTEGER_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_INTEGER_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Period; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_PERIOD_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_PERIOD_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_PERIOD_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Recur; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_RECUR_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_RECUR_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_RECUR_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Text; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_TEXT_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Time; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_TIME_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_TIME_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_TIME_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Trigger; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_TRIGGER_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_TRIGGER_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_TRIGGER_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::Uri; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_URI_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_URI_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_URI_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;

package ICal::Value::UtcOffset; 
use ICal::Value;
@ISA=qw(ICal::Value);
sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p;

   if ($value){
      $p = ICal::icalvalue_new_from_string($ICal::ICAL_UTCOFFSET_VALUE,$value);
   } else {
      $p = ICal::icalvalue_new($ICal::ICAL_UTCOFFSET_VALUE);
   }

   $self->[0] = $p;

   return $self;
}

sub set
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   if ($v) {
      my $new_value = ICal::icalvalue_new_from_string($ICal::ICAL_UTCOFFSET_VALUE,$v);
      if ($new_value){
         ICal::icalvalue_free($self->[0]);
          $self->[0] = $new_value;
      }

   }


}

sub get
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){

     return  ICal::icalvalue_as_ical_string($impl);

   }
}

1;
