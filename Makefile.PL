#!/usr/bin/perl
# -*- Mode: perl -*-

use ExtUtils::MakeMaker;
WriteMakefile(
	      'MAKEFILE'=> 'Makefile',
	      'VERSION' => '0.01',
	      'NAME'    => 'ICal',  
	      'INC'     => '-I/home/eric/proj/local/include', 
	      'LIBS'    => ['-lm -L/home/eric/proj/local/lib -lical'],
	      'OBJECT'  => 'ical_wrap.o'  # Object files
	      
	     );

sub MY::top_targets
{
  my $self = shift;

  my $old = $self->MM::top_targets;

  return "all::  ical_wrap.o\n$old";

}

sub MY::postamble
{

  return <<EOM;

ical_wrap.c: ical.i
	swig -perl5 ical.i
EOM
}
