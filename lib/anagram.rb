# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :source_word
  def initialize(word)
    @source_word = word
  end

  def match(array_to_compare)
    #select leaves empty array if there's no return value
    array_to_compare.select {|x| x.split("").sort == @source_word.split("").sort }
  end
end

listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana))