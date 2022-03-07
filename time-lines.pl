#!/usr/bin/perl -w

# This Perl script copies its stdin to its stdout, but for each line,
# it appends the amount of time the line took.  (In other words, the
# number of seconds that have elapsed between when this line was printed,
# and when the following line is printed.)  This makes it possible to
# time how long it takes for each file to compile in a stack/cabal build.
#
# For example:
# stack build 2>&1 | ./time-lines.pl

use Time::HiRes qw(time);

my $t = undef;
my $len = undef;

$| = 1;

while (<>) {
    my $now = time;
    if (defined $t) {
        my $diff = $now - $t;
        my $pad = "";
        my $npad = 50 - $len;
        $pad = " " x $npad if ($npad > 0);
        printf "%s (%5.2f s)\n", $pad, $diff;
    }
    $t = $now;
    chomp;
    $len = length $_;
    print;
}

print "\n";
