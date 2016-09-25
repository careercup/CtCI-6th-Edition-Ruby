require_relative('../Q3_03_Stack_of_Plates')

describe 'it can handle mix sizes' do
	let(:plates) {('a'..'z')}
	let(:small_plates) {('a'..'e')}

	it 'can fill a stack or many' do
		expect(fill_plates(plates).length).to_not eq(0)
	end

	it 'should return 6 for the number of stacks' do
		expect(fill_plates(plates).length).to eq(6)
	end

	it 'should return 1 for the number of stacks' do
		expect(fill_plates(small_plates).length).to eq(1)
	end

	it 'will add multiple plates to the colection' do
		expect(add_plates(small_plates, fill_plates(plates)).length).to eq(7)
	end

	it 'will delete as many plates as specified' do
		expect(remove_plates(5, fill_plates(plates)).length).to eq(5)
	end

	it 'will delete as many plates as specified' do
		expect(remove_plates(50, fill_plates(plates)).length).to eq(0)
	end
end
