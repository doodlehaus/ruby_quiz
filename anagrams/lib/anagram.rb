#!/usr/bin/ruby -w

class Anagram

  attr_accessor :dictionary

  def initialize
    @dictionary = create_dictionary
  end

  def create_dictionary
    words = []
    File.open('/usr/share/dict/words', 'r').each_line do |word|
      words << word.chomp
    end
    words
  end

  def generate(word)
    anagrams = []
    factorial(word.length)

  end

  def in_dictionary?(word)
    @dictionary.include?(word)
  end

  def factorial(n)
    factorial = 1
    while n > 0
      factorial *= (n-1)
      n -= 1
    end
  end

end
