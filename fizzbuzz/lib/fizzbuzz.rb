class Fizzbuzz
  attr_reader :lines_to_print
  FIZZ = 'Fizz'.freeze
  BUZZ = 'Buzz'.freeze

  def initialize(lines_to_print)
    @lines_to_print = lines_to_print
  end

  def print
    data_array.each do |line|
      puts line
    end
  end

  def data_array
    1.upto(lines_to_print).map do |i|
      convert_number i
    end
  end

  def convert_number(number)
    output = ''
    output += FIZZ if number % 3 == 0
    output += BUZZ if number % 5 == 0
    output.empty? ? number : output
  end
end
