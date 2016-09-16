require_relative('../One_Array')

describe 'Checks if two words are one edit away' do
	let(:pale) {'pale'}
	let(:ple) {'ple'}
	let(:cake) {'cake'}
	let(:bake) {'bake'}
	let(:cat) {'cat'}
	let(:dog) {'dog'}
	let(:cakess) {'cakess'}

	it 'it will return true if 1 edit away' do
		expect(one_array(pale, ple)).to eq(true)
	end

	it 'it will return true if 1 edit away' do
		expect(one_array(cake, bake)).to eq(true)
	end

	it 'it will return false due to over 1 edit away' do
		expect(one_array(cat, dog)).to eq(false)
	end

	it 'it will return false due to over 1 edit away' do
		expect(one_array(cake, cakess)).to eq(false)
	end

end
