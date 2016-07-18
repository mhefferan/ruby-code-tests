class Fizzbuzz
  attr_reader :lines_to_print

  def initialize(lines_to_print)
    @lines_to_print = lines_to_print
  end

  def print
    1.upto(lines_to_print) do |i|
      puts i
    end
  end
end

