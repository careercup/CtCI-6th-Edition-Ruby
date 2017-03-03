require_relative('../Q1_07_Rotate_Matrix')

describe 'turn an array 90 degrees to the right' do
	let(:portrait){[["a", "b", "c"],
				    ["d", "e", "f"],
				    ["g", "h", "i"]]}

	let(:portrait_90cc){[["g", "d", "a"],
					    ["h", "e", "b"],
					    ["i", "f", "c"]]}


	it 'it will return a new array that has been rotated' do
		expect(rotate_matrix(portrait)).to eq(portrait_90cc)
	end
end
