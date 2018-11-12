package Intercept;

my %used_INC;

sub new {
    my $class = shift;
    my $self = {};
    %register_INC = %INC;
    $self->{'used_INC'} = \%used_INC;
    bless $self, $class;
    return $self;
}

sub registerinc {
    my $self = shift;
    unshift @INC, [ 
        sub {
	    %used_INC =  (
		%used_INC,
		%INC
	    )
	}];
    return $self;
}

sub disengage {
    my $self = shift;
    use Data::Dumper;
    print Dumper \%INC;
}

1;
