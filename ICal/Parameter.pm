#!/usr/bin/perl
# -*- Mode: perl -*-
#======================================================================
# FILE: Parameter.pm
# CREATOR: eric 16 August 1999
#
# DESCRIPTION:
#   
#
#  $Id: Parameter.pm,v 1.2 1999/11/17 07:14:14 eric Exp eric $
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
# The Original Code is Parameter.pm. The Initial Developer of the Original
# Code is Eric Busboom
#
#======================================================================

use ICal::derivedparam;

package ICal::Parameter;

sub new {
}

sub clone {
}

sub type {
  my $self = shift;
  my $impl = $self->_impl();

  return ICal::icalcomponent_isa($impl);
}


sub is_valid {
}

sub as_ical_string{
  my $self = shift;

  return ICal::icalcomponent_as_ical_string($self->_impl());

}

sub _impl {
  my $self = shift;
  return $self->[0];
}

sub DESTROY {
}


1;

