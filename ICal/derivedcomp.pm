# -*- Mode: Perl -*-
#  ======================================================================
#  $Id: derivedcomp.pm,v 1.1 1999/11/17 07:14:14 eric Exp eric $
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



# VCALENDAR 
package ICal::Component::Vcalendar;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_VCALENDAR_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# VEVENT 
package ICal::Component::Vevent;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_VEVENT_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}




# VTODO 
package ICal::Component::Vtodo;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_VTODO_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# VJOURNAL 
package ICal::Component::Vjournal;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_VJOURNAL_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# VFREEBUSY 
package ICal::Component::Vfreebusy;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_VFREEBUSY_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# VTIMEZONE 
package ICal::Component::Vtimezone;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_VTIMEZONE_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# STANDARDTIME 
package ICal::Component::Standardtime;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_STANDARDTIME_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# DAYLIGHTSAVINGSTIME 
package ICal::Component::Daylightsavingstime;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_DAYLIGHTSAVINGSTIME_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# AUDIOALARM 
package ICal::Component::Audioalarm;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_AUDIOALARM_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# DISPLAYALARM 
package ICal::Component::Displayalarm;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_DISPLAYALARM_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# EMAILALARM 
package ICal::Component::Emailalarm;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_EMAILALARM_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}

# PROCEDUREALARM 
package ICal::Component::Procedurealarm;
@ISA=qw(ICal::Component);

sub new
{

   my $self = [];
   my $package = shift;
   
   my $c = ICal::icalcomponent_new($ICal::ICAL_PROCEDUREALARM_COMPONENT);

   $self->[0] = $c;

   bless $self, $package;

   $self->ICal::Component::_add_elements(\@_);

   return $self; 

}
