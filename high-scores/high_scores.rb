=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    max_three = []

    (1..3).each do
      max_three << @scores.delete_at(@scores.index(personal_best)) if @scores.length > 0
    end

    max_three
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end