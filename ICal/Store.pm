#!/usr/bin/perl -w
# -*- Mode: perl -*-
#======================================================================
# FILE: Store.pm
# CREATOR: eric 4 October 1999
#
# DESCRIPTION:
#   
#
#  $Id: Store.pm,v 1.1 1999/11/17 07:14:14 eric Exp eric $
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
# The Original Code is Parser.pm. The Initial Developer of the Original
# Code is Eric Busboom
#
#======================================================================

package ICal::Store;
use ICal::Component;
use DB_File;

$DB_BTREE->{'flags'} = R_DUP;

sub new {

  my $package = shift;
  my $self = {};
  my $dir = shift;

  my $o = bless $self, $package;

  $self->{'dir'} = $dir;
  $self->{'dtstart_dbfile'} = "$dir/dtstart_dbfile";
  $self->{'dtend_dbfile'} = "$dir/dtend_dbfile";
  $self->{'dtstamp_dbfile'} = "$dir/dtstamp_dbfile";
  $self->{'method_dbfile'} = "$dir/method_dbfile";
  $self->{'all_dbfile'} = "$dir/all_dbfile";
  
  return $o;
}

sub _open_dtstart {
  my $self = shift;
  if (!defined $self->{'dtstart_db'}){
    $self->{'dtstart_dbfile_hash'} = {};
    $self->{'dtstart_db'} = 
    tie %{$self->{'dtstart_dbfile_hash'}}, "DB_File", $self->{'dtstart_dbfile'}, O_RDWR|O_CREAT, 0640, $DB_BTREE
    or die "Cannot open dtstamp_dbfile: $!\n";     
  }
}

sub _close_all {
  my $self = shift;

  untie %{$self->{'all_dbfile_hash'}};
  delete $self->{'all_db'};
}


sub _open_all {
  my $self = shift;
  if (!defined $self->{'all_db'}){
    $self->{'all_dbfile_hash'} = {};
    $self->{'all_db'} = 
    tie %{$self->{'all_dbfile_hash'}}, "DB_File", $self->{'all_dbfile'}, O_RDWR|O_CREAT, 0640, $DB_BTREE
    or die "Cannot open dtstamp_dbfile: $!\n";     
  }
}

sub _close_dtstart {
  my $self = shift;

  untie %{$self->{'dtstart_dbfile_hash'}};
  delete $self->{'dtstart_db'};
}


sub _open_dtend {
  my $self = shift;

  if (!defined $self->{'dtend_db'}){
    $self->{'dtend_dbfile_hash'} = {};
    $self->{'dtend_db'} = 
    tie %{$self->{'dtend_dbfile_hash'}}, "DB_File", $self->{'dtend_dbfile'}, O_RDWR|O_CREAT, 0640, $DB_BTREE
    or die "Cannot open dtstamp_dbfile: $!\n";     
  }
}

sub _close_dtend {
  my $self = shift;

  untie %{$self->{'dtend_dbfile_hash'}};
  delete $self->{'dtend_db'};
}


sub _open_dtstamp {
  my $self = shift;
  if (!defined $self->{'dtstamp_db'}){
    $self->{'dtstamp_dbfile_hash'} = {};
    $self->{'dtstamp_db'} = 
    tie %{$self->{'dtstamp_dbfile_hash'}}, "DB_File", $self->{'dtstamp_dbfile'}, O_RDWR|O_CREAT, 0640, $DB_BTREE
    or die "Cannot open dtstamp_dbfile: $!\n";     
  }
}

sub _close_dtstamp {
  my $self = shift;

  untie %{$self->{'dtstamp_dbfile_hash'}};
  delete $self->{'dtstamp_db'};
}


sub _open_method {
  my $self = shift;
  
  if (!defined $self->{'method_db'}){
    $self->{'method_dbfile_hash'} = {};
    $self->{'method_db'} = 
tie %{$self->{'method_dbfile_hash'}}, "DB_File", $self->{'method_dbfile'}, O_RDWR|O_CREAT, 0640, $DB_BTREE
    or die "Cannot open method_dbfile: $!\n";     
  }
}


sub _close_method {
  my $self = shift;

  untie %{$self->{'method_dbfile_hash'}};
  delete $self->{'method_db'};
}


sub set_min_dtstart {
  my $self = shift;
  
  $self->{'min_dtstart'}  = shift;
}

sub set_max_dtstart {
  my $self = shift;

  $self->{'max_dtstart'}  = shift;
}

sub set_min_dtend {
  my $self = shift;

  $self->{'min_dtend'}  = shift;
}

sub set_max_dtend {
  my $self = shift;

  $self->{'max_dtend'}  = shift;
}

sub set_min_dtstamp {
  my $self = shift;

  $self->{'min_dtstamp'}  = shift;
}

sub set_max_dtstamp {
  my $self = shift;

  $self->{'max_dtstamp'}  = shift;
}

sub set_method {
  my $self = shift;

  $self->{'method'}  = shift;
}

sub clear_constraints{
  my $self = shift;

  $self->{'min_dtstart'}   = undef;
  $self->{'max_dtstart'}   = undef;
  $self->{'min_dtend'}   = undef;
  $self->{'max_dtend'}   = undef;
  $self->{'min_dtstamp'}   = undef;
  $self->{'max_dtstamp'}   = undef;
  $self->{'method'}   = undef;

}

sub _scan {
  my $hash = shift;
  my $db = shift;
  my $min = shift;
  my $max = shift;
  my $intersect = shift; # Hash ref to check intersection against
  my $key;
  my $value;
  my $flag;


  if (!$min && !$max ) {

    if (defined $intersect) {

      # No constraints, so accept everything in the intersection hash,
      # if it exists
      %{$hash} = %{$intersect};
    
      return 1;

    } else {
      # Otherwise, the output hash will get all of the values in the dbfile
    }

  }

  if (!$min) {
    $key = '';
    $flag = R_FIRST;
  } else {
    $key = $min;
    $flag = R_CURSOR
  }


# HACK. This search will not distinguish between UTC and local times. 

  for ($status = $db->seq($key, $value, $flag) ;
       $status == 0 && ( $key le $max || !$max); 
       $status = $db->seq($key, $value, R_NEXT) )
  {

    # If the intersection hash is defined, add the value to the output
    # hash only if the value is also in the intersection hash

    if (
	((defined $intersect) && $intersect->{$value} > 0  ) or
	(! defined $intersect)
       )
    {
      $hash->{$value}++;
    } 

  }

  return 1;
}

sub get_component_refs{
  my $self = shift;

  my %dtend;
  my %dtstart;
  my %dtstamp;
  my %methods;

  my ($status, $value, $key);

  $self->_open_all();
  _scan(\%all,$self->{'all_db'} ,undef,undef, undef );
  $self->_close_all();

  $self->_open_dtstart();
  _scan(\%dtstart,$self->{'dtstart_db'} , $self->{'min_dtstart'},  $self->{'max_dtstart'}, \%all);
  $self->_close_dtstart();

  $self->_open_dtend();
  _scan(\%dtend,$self->{'dtend_db'} , $self->{'min_dtend'},  $self->{'max_dtend'}, \%dtstart);
  $self->_close_dtend();

  $self->_open_dtstamp();
  _scan(\%dtstamp,$self->{'dtstamp_db'} , $self->{'min_dtstamp'},  $self->{'max_dtstamp'},\%dtend);
  $self->_close_dtstamp();

  $self->_open_method();
  _scan(\%method,$self->{'method_db'} , $self->{'method'},  $self->{'method'},\%dtstamp);
  $self->_close_method();

  return keys %dtstamp;
}

sub get_component {
  my $self = shift;
  my $ref = shift;
  my $str;
  my $dir = $self->{'dir'};

  open (F,"$dir/$ref") || return undef;

  while(<F>)
  {
    $str .= $_;
  }
  
  close (F);

  return new ICal::Component(\$str);
  
}

sub store {
  my $self = shift;
  my $comp = shift;
  my $key;

  my @props = $comp->get_properties($ICal::ICAL_UID_PROPERTY);
  my $uid = $props[0];

  if (!$uid) {
    $host = `uname -n`; chop $host;
    $uid = $host."-".time."-".rand(2**32);
    $uidProp = new ICal::Property::Uid($uid);
    $comp->add($uidProp);
  }

  # All Objects

  $self->_open_all();

  $self->{'all_dbfile_hash'}->{$uid} = $uid;
  
  $self->_close_all();
  $key = undef;


  # DTSTART

  $self->_open_dtstart();
  @props = $comp->get_properties($ICal::ICAL_DTSTART_PROPERTY);
  $key = $props[0]->get_value_ref()->as_ical_string() if $props[0];

  $self->{'dtstart_dbfile_hash'}->{$key} = $uid if $key;
  
  $self->_close_dtstart();
  $key = undef;

  # DTEND

  $self->_open_dtend();
  @props = $comp->get_properties($ICal::ICAL_DTEND_PROPERTY);
  $key = $props[0]->get_value_ref()->as_ical_string() if $props[0];

  $self->{'dtend_dbfile_hash'}->{$key} = $uid if $key;

  $self->_close_dtend();
  $key = undef;


  # DTSTAMP

  $self->_open_dtstamp();
  @props = $comp->get_properties($ICal::ICAL_DTSTAMP_PROPERTY);
  $key = $props[0]->get_value_ref()->as_ical_string() if $props[0];

  $self->{'dtstamp_dbfile_hash'}->{$key} = $uid if $key;

  $self->_close_dtstamp();
  $key = undef;

  # METHOD

  $self->_open_method();
  @props = $comp->get_properties($ICal::ICAL_METHOD_PROPERTY);
  $key = $props[0]->get_value_ref()->as_ical_string() if $props[0];

  $self->{'method_dbfile_hash'}->{$key} = $uid if $key;

  $self->_close_method();
  $key = undef;

  my $outfile = $self->{'dir'} . "/$uid";
  open(F,">$outfile") || die "ICal::Store::store: Can't open $outfile";

  print F $comp->as_ical_string;

  close F;
  
}


1;

