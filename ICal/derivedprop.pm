# -*- Mode: Perl -*-
#  ======================================================================
#  $Id: derivedprop.pm,v 1.1 1999/11/17 07:14:14 eric Exp eric $
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
#  The original code is icalproperty.h
#
#  ======================================================================*/


package ICal::Property::Method; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_METHOD_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::LastModified; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_LASTMODIFIED_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIME_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Uid; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_UID_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Prodid; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_PRODID_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Status; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_STATUS_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Description; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_DESCRIPTION_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Duration; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_DURATION_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DURATION_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Categories; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_CATEGORIES_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Version; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_VERSION_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Tzoffsetfrom; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_TZOFFSETFROM_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_UTCOFFSET_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Rrule; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_RRULE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_RECUR_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Attendee; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_ATTENDEE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_CALADDRESS_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Contact; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_CONTACT_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::RelatedTo; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_RELATEDTO_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Organizer; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_ORGANIZER_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_CALADDRESS_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Comment; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_COMMENT_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Trigger; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_TRIGGER_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TRIGGER_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::XLicError; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_XLICERROR_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Class; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_CLASS_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::X; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_X_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Tzoffsetto; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_TZOFFSETTO_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_UTCOFFSET_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Transp; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_TRANSP_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Sequence; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_SEQUENCE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_INTEGER_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Location; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_LOCATION_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::RequestStatus; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_REQUESTSTATUS_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Exdate; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_EXDATE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEDATE_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Tzid; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_TZID_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Resources; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_RESOURCES_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Tzurl; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_TZURL_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_URI_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Repeat; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_REPEAT_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_INTEGER_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Priority; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_PRIORITY_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_INTEGER_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Freebusy; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_FREEBUSY_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_PERIOD_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Dtstart; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_DTSTART_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEDATE_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::RecurrenceId; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_RECURRENCEID_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEDATE_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Summary; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_SUMMARY_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Dtend; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_DTEND_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEDATE_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Tzname; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_TZNAME_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Rdate; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_RDATE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEPERIOD_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Url; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_URL_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_URI_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Attach; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_ATTACH_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_ATTACH_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Exrule; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_EXRULE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_RECUR_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::PercentComplete; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_PERCENTCOMPLETE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_INTEGER_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Calscale; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_CALSCALE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Created; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_CREATED_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIME_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Geo; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_GEO_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_GEO_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Completed; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_COMPLETED_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIME_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Dtstamp; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_DTSTAMP_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIME_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Due; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_DUE_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_DATETIMEDATE_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}


package ICal::Property::Action; 
use ICal::Property;
@ISA=qw(ICal::Property);
sub new
{
   my $self = [];
   my $package = shift;

   bless $self, $package;

   my $p = ICal::icalproperty_new($ICal::ICAL_ACTION_PROPERTY);

   $self->[0] = $p;

   $self->ICal::Property::_add_elements(\@_);

   return $self;
}

sub set_value
{
   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();


   if ( ref $v && ICal::icalvalue_isa_value($v->_impl())){
      ICal::icalproperty_set_value($impl,$v->_impl);
   } else { 
      my $value = ICal::icalvalue_new_from_string($ICal::ICAL_TEXT_VALUE,$v);
      die if !$impl;
      ICal::icalproperty_set_value($impl,$value) unless !$value;
   }

}

sub get_value
{
   my $self = shift;
   my $impl = $self->[0];   

   if (defined $impl){
     my $value = ICal::icalproperty_get_value($impl);
     return "" if !$value;
     return  ICal::icalvalue_as_ical_string($value);
   } else {
      return "";
   }
}

1;
