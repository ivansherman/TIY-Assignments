require './card'
class Hand
  include Comparable

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def to_s
    @cards.map{|card| "#{card}" }.join(', ')