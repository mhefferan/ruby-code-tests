require_relative '../lib/fizzbuzz'

describe Fizzbuzz do
  let(:fizzbuzz) { Fizzbuzz.new(100) }

  context '#print' do
    let(:subject) { fizzbuzz.print }

    it 'outputs the array, separated by newlines to stdout' do
      expect{ subject }.to output(
        "#{fizzbuzz.data_array.join("\n")}\n"
      ).to_stdout
    end
  end

  context '#data_array' do
    it 'has 100 elements' do
      expect(fizzbuzz.data_array.count).to eq 100
    end

    it 'converts all the numbers' do
      expect(fizzbuzz).to receive(:convert_number).exactly(100).times
      fizzbuzz.data_array
    end
  end

  context '#convert_number' do
    context "when the number isn't divisible by 3 or 5" do
      it "returns the number" do
        [1, 2, 4, 22, 98].each do |i|
          expect(fizzbuzz.convert_number(i)).to eq i
        end
      end
    end

    context "when the number is divisble by 3" do
      it "returns Fizz" do
        [3, 6, 9, 42, 99].each do |i|
          expect(fizzbuzz.convert_number(i)).to eq Fizzbuzz::FIZZ
        end
      end
    end

    context "when the number is divisible by 5" do
      it "returns Fizz" do
        [5, 10, 85, 100].each do |i|
          expect(fizzbuzz.convert_number(i)).to eq Fizzbuzz::BUZZ
        end
      end
    end

    context "when the number is divisible by 3 and 5" do
      it "returns Fizz" do
        [15, 30, 45, 60, 75].each do |i|
          expect(fizzbuzz.convert_number(i)).
            to eq("#{Fizzbuzz::FIZZ}#{Fizzbuzz::BUZZ}")
        end
      end
    end
  end
end
