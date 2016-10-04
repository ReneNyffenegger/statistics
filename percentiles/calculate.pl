#
#   http://onlinestatbook.com/2/introduction/percentiles.html(
#
use warnings;
use strict;
use feature 'say';


say calculate_percentile(25, 3, 5, 7, 8, 9, 11, 13, 15);
say calculate_percentile(25, 4, 4, 5, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 9, 9, 9, 10, 10, 10);
say calculate_percentile(85, 4, 4, 5, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 9, 9, 9, 10, 10, 10);
say calculate_percentile(50, 2, 3, 5, 9);
say calculate_percentile(50, 2, 3, 5, 9, 11);


sub calculate_percentile {

  my $P      = shift;  # the desired percentile
  my @scores = @_;

  # The first step is to compute the rank (R) of the 25th percentile.
  
  my $N = @scores;  # the number of numbers
  
  # This is done using the following formula:
  
  my $R = $P/100 * ($N+1);
  
# print "N=$N, P=$P, Rank = $R\n";
  
  if ($R == int($R)) {
  # If R is an integer, the Pth percentile is the number with rank R.
    return $scores[$R-1], "\n";
  }
  else {
  
    my $IR = int($R) ; # Integer portion of $R
    my $FR = $R - $IR; # Fractional portion of $R

#   print "IR: $IR, FR: $FR\n";
  
    my $score_below = $scores[$IR   -1];
    my $score_above = $scores[$IR+1 -1];
  
  
    return $score_below + ( ($score_above-$score_below) * $FR);
  
  }
}
