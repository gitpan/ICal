#!/usr/bin/perl -w

use DB_File;

$filename = "dbfoo";
$hash = {};


$DB_BTREE->{'flags'} = R_DUP;



$x = tie %{$hash}, "DB_File", $filename, O_RDWR|O_CREAT, 0640, $DB_BTREE
or die "Cannot open $filename: $!\n";     

if (0) {
  $hash->{'1'}=1;
  $hash->{'2'}=2;
  $hash->{'3'}=3;
  $hash->{'4'}=4;
  $hash->{'5'}=5;
  $hash->{'6'}=6;
  $hash->{'7'}=7;
  $hash->{'8'}=8;
  $hash->{'8'}=8.1;
  $hash->{'9'}=9;
  $hash->{'10'}=10;
  $hash->{'11'}=11;
  $hash->{'12'}=12;
  $hash->{'13'}=13;
  $x->put('9','9');
}

$key = '5';
$value = 0 ;
for ($status = $x->seq($key, $value, R_CURSOR) ;
     $status == 0 && $key < 9;
     $status = $x->seq($key, $value, R_NEXT) )
{  print "$key -> $value\n" }

undef $x ;
untie %{$hash}; ;                                  
