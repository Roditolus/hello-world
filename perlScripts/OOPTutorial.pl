#!/usr/bin/perl

use strict;
use warnings;

use lib 'myModules'; 
use Employee;  

my $object = new Employee( "Mohammad", "Saleem", 23234345);
# Get first name which is set using constructor.
my $firstName = $object->getFirstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$object->setFirstName( "Mohd." );

# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "Before Setting First Name is : $firstName\n";

$object->setId( "ms002" );
$object->setSalary( "40000" );

my $id 		= $object->getId();
my $salary 	= $object->getSalary();

print "ID is : $id\n";
print "Salary is : $salary\n";
