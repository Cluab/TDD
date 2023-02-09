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
end
