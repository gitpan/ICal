#!/usr/bin/perl

use DB_File;

$DB_BTREE->{'flags'} = R_DUP;

$x = tie %h, "DB_File", $ARGV[0], O_RDWR|O_CREAT, 0640, $DB_BTREE
or die "Cannot open $ARGV[0]: $!\n";     

print "Dumping ",$ARGV[0],"\n";

for ($status = $x->seq($key, $value, R_FIRST) ;
     $status == 0;
     $status = $x->seq($key, $value, R_NEXT) )
{  print "$key -> $value\n" }

untie %h ;                                  
