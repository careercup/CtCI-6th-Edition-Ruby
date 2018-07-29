require_relative('../Q1_04_Palindrome_Permutation')

describe 'check if two words are permutations of each other' do
	let(:lemon) {'Tact Coa'}
	let(:melon) {'melon'}
	let(:jason) {'jason'}
	let(:horse) {'horse horse'}
	let(:long) {'qwqwqwqw rereerr qq ww rr tt dd'}

	it 'should true for being a palindrome permutation' do
		expect(palindrome_permutation?(lemon)).to eq(true)
	end


	it 'should false for not being a palindrome permutation' do
		expect(palindrome_permutation?(melon)).to eq(false)
	end


	it 'should false for not being a palindrome permutation' do
		expect(palindrome_permutation?(jason)).to eq(false)
	end

	it 'should true for being a palindrome permutation' do
		expect(palindrome_permutation?(horse)).to eq(true)
	end
	
	it 'can handle a longer input' do
		expect(palindrome_permutation?(long)).to eq(true)
	end
end
