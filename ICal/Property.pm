#!/usr/bin/perl
# -*- Mode: perl -*-
#======================================================================
# FILE: Property.pm
# CREATOR: eric 16 August 1999
#
# DESCRIPTION:
#   
#
#  $Id: Property.pm,v 1.2 1999/11/17 07:14:14 eric Exp eric $
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
# The Original Code is Property.pm. The Initial Developer of the Original
# Code is Eric Busboom
#
#======================================================================


package ICal::Property;
use ICal::Value;
use ICal::derivedprop; 

sub new{
   my $self = [];
   my $package = shift;
   my $arg = shift;
 
   my $p = ICal::icalproperty_new($arg);
   
   ICal::Property::_add_elements($p,\@_);

   $self->[0] = $p;

   return bless $self, $package;
}

sub new_clone{
   my $self = [];
   my $package = shift;
   my $orig = shift;

   my $p = ICal::icalproperty_new_clone($orig->[0]);
   
   $self->[0] = $p;

   return bless $self, $package;
}

sub new_from_string{
   my $self = [];
   my $package = shift;
   my $arg = shift;
 
   my $p = ICal::icalproperty_new_from_string($arg);
   
   $self->[0] = $p;

   return bless $self, $package;
}


sub new_from_ref{
   my $self = [];
   my $prop_ref = shift;

   $self->[0] = $prop_ref;

   return undef if !$prop_ref;

   my $value_type = ICal::icalproperty_isa($prop_ref);

   my $type_name = ICal::icalenum_property_kind_to_string($value_type);

   my $ucf = join("",map {ucfirst(lc($_));}  split(/-/,$type_name));


   my $package = "ICal::Property::".$ucf;

   return bless $self, $package;
}



sub as_ical_string{

  my $self= shift;
  
  my $str = ICal::icalproperty_as_ical_string($self->[0]);

}

sub isa{
}

sub isa_property{
}

sub get_parameters{
}

#sub set_value{
#}

sub get_value_ref{
  my $self = shift;
  my $impl = $self->[0];

  my $value_ref = ICal::icalproperty_get_value($impl);


  return ICal::Value::new_from_ref($value_ref);
}

sub _add_elements {

  my $self = shift;
  my $arrayref = shift;

  my $e;
  while( $e = shift @{$arrayref}) {

    $self->add($e);

  }
}

sub add { 
  my $self = shift;
  my $impl = $self->_impl();
  my $part = undef;

  while ($part = shift) {
    next if $part eq undef;

    if ($part ne undef and
        (ref $part) ne undef and
	ICal::icalparameter_isa_parameter($part->_impl)) { 
      
      ICal::icalproperty_add_parameter($impl,$part->_impl());

    } else {
      $self->set_value($part);
    }
  }

}


sub _impl {

  return $_[0]->[0];
}

sub DESTROY {

  my $self = shift;

  ICal::icalproperty_free($self);

}


1;

