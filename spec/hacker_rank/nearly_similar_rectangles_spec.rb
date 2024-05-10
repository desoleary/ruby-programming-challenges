module HackerRank
  class NearlySimilarRectangles
    def calc(sides)
      number_of_pairs = 0
      # Write your code here
      sides.each_with_index do |side1, index1|
        sides[(index1 + 1)..].each do |side2|
          a, b = side1
          c, d = side2
          result = is_similar_rectangles(a, b, c, d)
          number_of_pairs += 1 if result
        end
      end
      number_of_pairs
    end

    def is_similar_rectangles(a, b, c, d)
      return false if [a,b,c,d].compact.length < 4


      (a / c) == (b / d)
    end
  end
end

RSpec.describe HackerRank::NearlySimilarRectangles do
  describe '.calc' do
    it 'does something' do
      puts described_class.new.calc([
                  [4,8],
                  [15,30],
                  [25,50],
                ])
    end
  end
end

