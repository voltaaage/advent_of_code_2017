require 'minitest/autorun'
require './solution.rb'

describe 'is_valid_passphrase' do
  it 'returns true if a passphrase is valid' do
    input = 'aa bb cc dd ee'
    result = is_valid_passphrase?(input)

    assert_equal(true, result)
  end

  it 'returns false if a passphrase contains a word more than once' do
    input = 'aa bb cc dd aa'
    result = is_valid_passphrase?(input)

    assert_equal(false, result)
  end

  it 'returns true if a passphrase is valid' do
    input = 'aa bb cc dd aaa'
    result = is_valid_passphrase?(input)

    assert_equal(true, result)
  end
end

describe 'is_valid_passchars' do
  it 'returns true if a passphrase is valid' do
    input = 'abcde fghij'
    result = is_valid_passchars?(input)

    assert_equal(true, result)
  end

  it 'returns false if a passphrase contains a word with the same letters as another word' do
    input = 'abcde xyz ecdab'
    result = is_valid_passchars?(input)

    assert_equal(false, result)
  end

  it 'returns true if a passphrase is valid' do
    input = 'iiii oiii ooii oooi oooo'
    result = is_valid_passchars?(input)

    assert_equal(true, result)
  end
end
