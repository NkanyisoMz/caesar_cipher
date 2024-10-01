require './lib/caesar_cipher'

describe '#caesar_cipher' do
  context 'when shifting lowercase letters' do
    it 'shifts a single lowercase letter correctly' do
      expect(caesar_cipher('a', 1)).to eql('b')
    end

    it 'wraps around from z to a' do
      expect(caesar_cipher('z', 1)).to eql('a')
    end

    it 'shifts a word of lowercase letters correctly' do
      expect(caesar_cipher('hello', 3)).to eql('khoor')
    end
  end

  context 'when shifting uppercase letters' do
    it 'shifts a single uppercase letter correctly' do
      expect(caesar_cipher('A', 1)).to eql('B')
    end

    it 'wraps around from Z to A' do
      expect(caesar_cipher('Z', 1)).to eql('A')
    end

    it 'shifts a word of uppercase letters correctly' do
      expect(caesar_cipher('HELLO', 3)).to eql('KHOOR')
    end
  end

  context 'when handling mixed cases' do
    it 'shifts a mix of uppercase and lowercase letters correctly' do
      expect(caesar_cipher('Hello', 3)).to eql('Khoor')
    end
  end

  context 'when handling non-alphabetic characters' do
    it 'leaves non-alphabetic characters unchanged' do
      expect(caesar_cipher('Hello, World!', 5)).to eql('Mjqqt, Btwqi!')
    end
  end

  context 'when shifting with negative numbers' do
    it 'shifts backward with negative shift' do
      expect(caesar_cipher('b', -1)).to eql('a')
    end

    it 'wraps around from a to z with negative shift' do
      expect(caesar_cipher('a', -1)).to eql('z')
    end
  end
end
