require 'rails_helper'

RSpec.describe HackerRank::Anagram do
  describe '.number_of_moves_to_make_anagram' do
    [
      ['asdfjoieufoa', 3],
      ['fdhlvosfpafhalll', 5],
      ['mvdalvkiopaufl', 5],
      ['abccde', 2],
      ['aaabbb', 3],
      ['ab', 1],
      ['abc', -1],
      ['mnop', 2],
      ['xyyx', 0],
      ['xaxbbbxx', 1],
    ].each do |(line, expected_number_of_moves)|
      it "returns #{expected_number_of_moves} to make #{line} into anagram" do
        expect(described_class.new(line).calc_min_number_of_moves).to eql(expected_number_of_moves)
      end
    end
  end
end
