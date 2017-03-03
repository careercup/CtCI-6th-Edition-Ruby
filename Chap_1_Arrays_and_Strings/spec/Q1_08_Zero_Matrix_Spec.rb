require_relative('../Q1_08_Zero_Matrix')

describe 'it will zero out rows and col' do
	let(:matrix){[[1, 0, 3], [4, 5, 6], [7, 8, 9]]}
	let(:zeros){[[0, 0, 0], [4, 0, 6], [7, 0, 9]]}

	it 'return a new matrix with 0s replacing the row and col that the 0 was in' do
		expect(zero_matrix(matrix)).to eq(zeros)
	end
end
