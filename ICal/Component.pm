#!/usr/bin/perl
# -*- Mode: perl -*-
#======================================================================
# FILE: Component.pm
# CREATOR: eric 16 August 1999
#
# DESCRIPTION:
#   
#
#  $Id: Component.pm,v 1.2 1999/11/17 07:14:14 eric Exp eric $
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
# The Original Code is Component.pm. The Initial Developer of the Original
# Code is Eric Busboom
#
#======================================================================

use ICal::derivedcomp;

package ICal::Component;
use ICal;

sub new {

  my $self = [];
  my $package = shift;
  my $string_r = shift;
  

  # Oddly, this will fail if you use "undef $\; $in =<>" to slurp up a
  # whole file into a string. I suspect that it interferes with the
  # flex lexer, but I don't really know.

  my $c = ICal::icalparser_parse_string($$string_r); 

  return undef if !$c ;
  
  $self->[0] = $c;
  
  bless $self, $package;
  
  return $self; 
  
}

sub new_from_ref{
   my $self = [];
   my $comp_ref = shift;

   $self->[0] = $comp_ref;

   return undef if !$comp_ref;

   my $value_type = ICal::icalcomponent_isa($comp_ref);

   my $type_name = ICal::icalenum_component_kind_to_string($value_type);

   my $ucf = join("",map {ucfirst(lc($_));}  split(/-/,$type_name));


   my $package = "ICal::Component::".$ucf;

   return bless $self, $package;
}



sub clone {
  my $self = shift;
  my $impl = $self->_impl();
}

sub type {
  my $self = shift;
  my $impl = $self->_impl();

  return ICal::icalcomponent_isa($impl);
}

sub is_valid {
  my $self = shift;
  my $impl = $self->_impl();
}


sub _add_elements{

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
  my $part;

  while($part = shift){
    next if $part eq undef;
    if ((ref $part) ne undef  and  ICal::icalcomponent_isa_component($part->_impl())) {
      ICal::icalcomponent_add_component($impl,$part->_impl());     
    } elsif ((ref $part) ne undef  and  ICal::icalproperty_isa_property($part->_impl)) { 
      ICal::icalcomponent_add_property($impl,$part->_impl());
    }
  }
}

sub as_ical_string {
  
  my $self = shift;

  return ICal::icalcomponent_as_ical_string($self->_impl());

}

sub get_properties{
  my $self = shift;
  my $prop_kind = shift;
  my @array;
  my $p;

  for($p = ICal::icalcomponent_get_first_property($self->_impl(),$prop_kind);
      $p != undef;
      $p = ICal::icalcomponent_get_next_property($self->_impl(),$prop_kind)
     ) 
  {
    my $prop = ICal::Property::new_from_ref($p);

    push (@array, $prop);
  }

  return @array;
}

sub get_components{
  my $self = shift;
  my $comp_kind = shift;

  my @array;
  my $c;

  for($c = ICal::icalcomponent_get_first_component($self->_impl(),$comp_kind);
      $c != undef;
      $c = ICal::icalcomponent_get_next_component($self->_impl(),$comp_kind)
     ) 
  {
    my $comp = ICal::Component::new_from_ref($c);
    push (@array, $comp);
  }


  return @array;
}



sub _impl{

  my $self = shift;
  return $self->[0];
}

sub DESTROY {
  my $self = shift;

  ICal::icalcomponent_free($self->_impl());
  
}

1;

