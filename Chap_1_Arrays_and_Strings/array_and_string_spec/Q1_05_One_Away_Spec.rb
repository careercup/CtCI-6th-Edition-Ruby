require_relative('../Q1_05_One_Away')

describe 'Checks if two words are one edit away' do
	let(:pale) {'pale'}
	let(:ple) {'ple'}
	let(:cake) {'cake'}
	let(:bake) {'bake'}
	let(:cat) {'cat'}
	let(:dog) {'dog'}
	let(:cakess) {'cakess'}
	let(:elp) {'elp'}

	it 'it will return true if 1 edit away' do
		expect(one_away(pale, ple)).to eq(true)
	end

	it 'it will return true if 1 edit away' do
		expect(one_away(cake, bake)).to eq(true)
	end

	it 'it will return false due to over 1 edit away' do
		expect(one_away(cat, dog)).to eq(false)
	end

	it 'it will return false due to over 1 edit away' do
		expect(one_away(cake, cakess)).to eq(false)
	end

	it 'returns false if over 1 edit away' do
		expect(one_away(pale, elp)).to eq(false)
	end

end
