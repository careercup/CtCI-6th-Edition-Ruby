require_relative('../Q1_02_Solution2_Check_Permutation')

describe 'check if two words are permutations of each other' do
	let(:lemon) {'lemon'}
	let(:melon) {'melon'}
	let(:jason) {'jason'}
	let(:horse) {'horse'}

	it 'should true for being a permutation' do
		expect(check_permutation_solution2(lemon, melon)).to eq(true)
	end


	it 'should true for being a permutation' do
		expect(check_permutation_solution2(melon, lemon)).to eq(true)
	end


	it 'should false for not being a permutation' do
		expect(check_permutation_solution2(jason, horse)).to eq(false)
	end

	it 'can handle no input' do
		expect(check_permutation_solution2()).to eq(true)
	end
end
