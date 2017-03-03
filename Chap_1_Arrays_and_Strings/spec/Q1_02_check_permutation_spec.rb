require_relative '../Q1_02_check_permutation'

describe CheckPermutation do 
  describe '::with_hash' do
    context 'when the strings are permutations' do 
      it 'returns true' do
        expect(CheckPermutation.with_hash('lemon', 'melon')).to be true
        expect(CheckPermutation.with_hash('horse', 'shore')).to be true
      end
    end

    context 'when the strings are not permutations of each other' do 
      it 'returns false' do
        expect(CheckPermutation.with_hash('lemon', 'horse')).to be false
        expect(CheckPermutation.with_hash('horse', 'lemon')).to be false
      end
    end
  end

  describe '::with_array' do
    context 'when the strings are permutations' do 
      it 'returns true' do
        expect(CheckPermutation.with_array('lemon', 'melon')).to be true
        expect(CheckPermutation.with_array('horse', 'shore')).to be true
      end
    end

    context 'when the strings are not permutations of each other' do 
      it 'returns false' do
        expect(CheckPermutation.with_array('lemon', 'horse')).to be false
        expect(CheckPermutation.with_array('horse', 'lemon')).to be false
      end
    end
  end

  describe '::with_sort' do
    context 'when the strings are permutations' do 
      it 'returns true' do
        expect(CheckPermutation.with_sort('lemon', 'melon')).to be true
        expect(CheckPermutation.with_sort('horse', 'shore')).to be true
      end
    end

    context 'when the strings are not permutations of each other' do 
      it 'returns false' do
        expect(CheckPermutation.with_sort('lemon', 'horse')).to be false
        expect(CheckPermutation.with_sort('horse', 'lemon')).to be false
      end
    end
  end
end
