require_relative('../three_in_one')

describe 'it can handle mix inputs and size' do
	let(:mix_array) {['jason',2,nil,nil,nil,nil,88,7,'pizza','hello',7.98,nil]}
	let(:small_array) {[4,'jason',nil]}
	let(:nil_array) {[nil, nil,nil,nil]}

	it 'should return 3 for the number of stacks' do
		expect(three_in_one(mix_array).length).to eq(3)
	end

	it 'should return 4 for the objects in the num stack' do
		expect(three_in_one(mix_array)[0].length).to eq(4)
	end

	it 'should return 3 array objects' do
		expect(three_in_one(mix_array)[1].length).to eq(3)
	end

	it 'should return 5 array objects' do
		expect(three_in_one(mix_array)[2].length).to eq(5)
	end

	it 'should return 0 fro number objects' do
		expect(three_in_one(nil_array)[0].length).to eq(0)
	end

	it 'should return 0 for string objects' do
		expect(three_in_one(nil_array)[1].length).to eq(0)
	end

	it 'should not return 0 for nil objects' do
		expect(three_in_one(nil_array)[2].length).to_not eq(0)
	end

	it 'should return the first string in the stack' do
		expect(three_in_one(small_array)[1].first).to eq('jason')
	end

	it 'should return the first number in the stack' do
		expect(three_in_one(small_array)[0].first).to eq(4)
	end

end

