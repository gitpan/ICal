# -*- Mode: Perl -*-
#  ======================================================================
#  $Id: derivedparam.pm,v 1.1 1999/11/17 07:14:14 eric Exp eric $
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
#  The original code is derivedparams.h
#
#  ======================================================================*/


# ALTREP 

package ICal::Parameter::Altrep;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_ALTREP_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_altrep($impl,$v) unless !$v;
}


# CN 

package ICal::Parameter::Cn;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_CN_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_cn($impl,$v) unless !$v;
}


# CUTYPE 

package ICal::Parameter::Cutype;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_CUTYPE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_cutype($impl,$v) unless !$v;
}


# DELEGATED-FROM 

package ICal::Parameter::DelegatedFrom;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_DELEGATEDFROM_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_delegatedfrom($impl,$v) unless !$v;
}


# DELEGATED-TO 

package ICal::Parameter::DelegatedTo;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_DELEGATEDTO_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_delegatedto($impl,$v) unless !$v;
}


# DIR 

package ICal::Parameter::Dir;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_DIR_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_dir($impl,$v) unless !$v;
}


# ENCODING 

package ICal::Parameter::Encoding;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_ENCODING_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_encoding($impl,$v) unless !$v;
}


# FBTYPE 

package ICal::Parameter::Fbtype;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_FBTYPE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_fbtype($impl,$v) unless !$v;
}


# FMTTYPE 

package ICal::Parameter::Fmttype;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_FMTTYPE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_fmttype($impl,$v) unless !$v;
}


# LANGUAGE 

package ICal::Parameter::Language;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_LANGUAGE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_language($impl,$v) unless !$v;
}


# MEMBER 

package ICal::Parameter::Member;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_MEMBER_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_member($impl,$v) unless !$v;
}


# PARTSTAT 

package ICal::Parameter::Partstat;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_PARTSTAT_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_partstat($impl,$v) unless !$v;
}


# RANGE 

package ICal::Parameter::Range;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_RANGE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_range($impl,$v) unless !$v;
}


# RELATED 

package ICal::Parameter::Related;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_RELATED_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_related($impl,$v) unless !$v;
}


# RELTYPE 

package ICal::Parameter::Reltype;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_RELTYPE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_reltype($impl,$v) unless !$v;
}


# ROLE 

package ICal::Parameter::Role;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_ROLE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_role($impl,$v) unless !$v;
}


# RSVP 

package ICal::Parameter::Rsvp;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_RSVP_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_rsvp($impl,$v) unless !$v;
}


# SENT-BY 

package ICal::Parameter::SentBy;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_SENTBY_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_sentby($impl,$v) unless !$v;
}


# TZID 

package ICal::Parameter::Tzid;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_TZID_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_tzid($impl,$v) unless !$v;
}


# VALUE 

package ICal::Parameter::Value;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_VALUE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_value($impl,$v) unless !$v;
}


# X-LIC-ERRORTYPE 

package ICal::Parameter::XLicErrortype;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_XLICERRORTYPE_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_xlicerrortype($impl,$v) unless !$v;
}


# X 

package ICal::Parameter::X;
@ISA=qw(ICal::Parameter);

sub new
{
   my $self = [];
   my $package = shift;
   my $value = shift;

   bless $self, $package;

   my $p = ICal::icalparameter_new($ICal::ICAL_X_PARAMETER);

   $self->[0] = $p;

   if ($value) {
      $self->set($value);
   }


   return $self;
}

sub get
{
   my $self = shift;
   my $impl = $self->_impl();

   return ICal::icalparameter_as_ical_string($impl);

}

sub set
{

   my $self = shift;
   my $v = shift;

   my $impl = $self->_impl();

   ICal::icalparameter_set_x($impl,$v) unless !$v;
}

