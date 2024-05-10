module HackerRank
  class Anagram
    def initialize(line)
      @line = line
      midpoint = line.length / 2
      @part1 = line[0...midpoint]
      @part2 = line[midpoint..]
    end

    def calc_min_number_of_moves
      return -1 if part1.empty?
      return -1 if part1.length != part2.length

      part1_differences_map.values.sum
    end

    def part1_differences_map
      @part1_differences_map ||= part2_char_map.inject({}) do |memo, (char, count)|
        diff = [count - (part1_char_map[char] || 0), 0].max
        diff = count if diff.zero? && part2_char_map[char].nil?
        memo[char] = diff
        memo
      end
    end


    def part1_char_map
      to_char_map(part1)
    end

    def part2_char_map
      to_char_map(part2)
    end

    def part1
      @part1 ||= @line[0...midpoint]
    end

    def part2
      @part2 ||= @line[midpoint..]
    end

    private

    def midpoint
      @line.length / 2
    end

    def to_char_map(str)
      str.chars.inject({}) do |memo, char|
        memo[char] = 0 unless memo.key?(char)
        memo[char] += 1
        memo
      end
    end
  end
end
