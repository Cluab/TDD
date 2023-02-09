require './spec/spec_helper'
describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    context 'with positive integers' do
      it 'returns the factorial for that number' do
        expect(solver.factorial(5)).to eq(120)
      end

      it 'returns the factorial of 0 as 1' do
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context 'with negative integers' do
      it 'raises an exception' do
        expect { solver.factorial(-1) }.to raise_error('Invalid argument: only positive integers and 0 are allowed')
      end
    end
  end
  describe '#reverse' do
    it 'returns the word reversed' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end
  describe '#fizzbuzz' do
    it "returns 'fizz' when N is divisible by 3" do
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end

    it "returns 'buzz' when N is divisible by 5" do
      expect(solver.fizzbuzz(5)).to eq('buzz')
    end

    it "returns 'fizzbuzz' when N is divisible by 3 and 5" do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns N as a string for any other case' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
