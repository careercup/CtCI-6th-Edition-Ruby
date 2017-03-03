require_relative('../Q1_03_URLify')

describe '' do
	let(:string){"Jason Loves TDD"}
	let(:url) {"Jason%20Loves%20TDD"}
	let(:name){"jason"}



	it 'it should convert convert the string if it contains spaces' do
		expect(urlify(string)).to eq(url)
	end

	it 'it should output the word if it does not contain spaces' do
		expect(urlify(name)).to eq(name)
	end
end
