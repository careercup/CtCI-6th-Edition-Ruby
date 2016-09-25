require_relative('../Q1_06_String_Compression')

describe 'string compression' do
	let(:aabcccccaaa){'aabcccccaaa'}
	let(:a2b1c5a3){'a2b1c5a3'}
	let(:abcc){'abcc'}

	it 'it should compress the word down ' do
		expect(string_compression(aabcccccaaa)).to eq(a2b1c5a3)
	end

	it 'it does not compress the word down that are smaller than compress version' do
		expect(string_compression(abcc)).to eq(abcc)
	end
end
