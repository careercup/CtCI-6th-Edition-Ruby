require_relative('../Q1_09_String_Rotation')

describe 'checks 2 strings if they are rotations of each other' do
	let(:waterbottle){'waterbottle'}
	let(:erbottlewat){'erbottlewat'}
	let(:jason){'jason'}
	let(:not_jason){'pizza&tacos'}
	let(:trees){'trees'}
	let(:fishs){'fishs'}

	it 'it will return true if s1 is a rotation of s2' do
		expect(string_rotation(waterbottle, erbottlewat)).to be(true)
	end

	it 'it will return false if s1 is not a rotation of s2' do
		expect(string_rotation(jason, not_jason)).to be(false)
	end

	it 'it will return false if s1 is not a rotation of s2' do
		expect(string_rotation(trees, fishs)).to be(false)
	end
end
