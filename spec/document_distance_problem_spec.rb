require 'rspec'
require './class-2/document_distance_problem'

describe 'Document Distance Problem' do
  describe '.count_words' do
    it "returns an hash with words count" do
      words = ["a", "long", "time", "ago", "in", "a", "galaxy", "far", "far", "away"]
      counted_words = {"a" => 2, "long" => 1, "time" => 1, "ago" => 1, "in" => 1,
                       "galaxy" => 1, "far" => 2, "away" => 1}

      expect(count_words(words)).to eq counted_words
    end
  end
end
