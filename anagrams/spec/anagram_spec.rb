require 'rspec'
require_relative '../lib/anagram.rb'

describe 'anagram' do

  it 'should exist' do
    anagram = Anagram.new
    anagram.should be_true
  end

  it 'should have a "generate" method' do
    anagram = Anagram.new
    anagram.should respond_to(:generate)
  end

  it 'should load the dictionary file at /usr/share/dict/words' do
    anagram = Anagram.new
    anagram.dictionary.should_not be_empty
  end

  it 'should create anagrams' do
    anagram = Anagram.new
    word = 'dog'
    anagram.generate(word).should == ['dog','odg','god','dgo', 'gdo', 'ogd']
  end

  describe 'dictionary word' do
    it 'should recognize dictionary words' do
      anagram = Anagram.new
      word = 'banana'
      anagram.in_dictionary?(word).should be_true
    end

    it 'should recognize words that are not dictionary words' do
      anagram = Anagram.new
      word = 'itoadaso'
      anagram.in_dictionary?(word).should be_false
    end
  end

end
