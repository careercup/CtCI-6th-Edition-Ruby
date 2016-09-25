require_relative('../Q3_02_Stack_Min')

describe 'Find the highest number' do
	let(:test_array) {[23,34,45,5,5,5,5,5,324,7,8,9,89,0]}

	it 'it should return 324' do
		expect(higest_num_stack(test_array)).to eq(324)
	end
end
