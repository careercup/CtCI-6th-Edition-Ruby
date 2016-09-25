require_relative('../Q1_02_Solution2_Check_Permutation')

describe 'check if two words are permutations of each other' do
	let(:lemon) {'lemon'}
	let(:melon) {'melon'}
	let(:jason) {'jason'}
	let(:horse) {'horse'}

	it 'should true for being a permutation' do
		expect(check_permutation(lemon, melon)).to eq(true)
	end


	it 'should true for being a permutation' do
		expect(check_permutation(melon, lemon)).to eq(true)
	end


	it 'should false for not being a permutation' do
		expect(check_permutation(jason, horse)).to eq(false)
	end

	it 'can handle no input' do
		expect(check_permutation()).to eq(true)
	end
end
