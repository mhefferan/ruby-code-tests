require './fizzbuzz'

describe Fizzbuzz do
  it 'outputs to stdout' do
    expect{ Fizzbuzz.new(100).print }.to output.to_stdout
  end
end
