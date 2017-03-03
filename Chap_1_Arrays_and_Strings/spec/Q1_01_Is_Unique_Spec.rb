require_relative('../Q1_01_Is_Unique')

describe 'detects if characters are unique in a word' do
  let(:word1) {"jason"}
  let(:word2) {"banana"}
  let(:word3) {"cool"}
  let(:word4) {"cat"}

  it 'Should return true, since nothing repeats' do
    expect(is_unique?(word1)).to eq(true)
  end

  it 'Should return true, since nothing repeats' do
    expect(is_unique?(word4)).to eq(true)
  end

  it 'Should return false, since there repeating characters' do
    expect(is_unique?(word2)).to eq(false)
  end

  it 'Should return false, since there repeating characters' do
    expect(is_unique?(word3)).to eq(false)
  end
end
