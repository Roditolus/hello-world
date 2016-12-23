package Employee;
$VERSION = v0.0.1;

# use strict;
use warnings;
use Person;

# inherits from person
our @ISA = "Person";

# override constructor
sub new {
    my ($class) = @_;
    # Call the constructor of the parent class, Person.
    my $self = $class->SUPER::new( $_[1], $_[2], $_[3] );
    # Add few more attributes
    $self->{_id}    	= undef;
    $self->{_salary} 	= undef;
    bless $self, $class;
    return $self;
}

sub setId {
    my ($self, $id) = @_;
    $self->{_id} = $id if defined($id);
    return $self->{_id};
}

sub getId {
    my ($self) = @_;
    return $self->{_id};
}

sub setSalary {
    my ($self, $salary) = @_;
    $self->{_salary} = $salary if defined($salary);
    return $self->{_salary};
}

sub getSalary {
    my ($self) = @_;
    return $self->{_salary};
}

1;
