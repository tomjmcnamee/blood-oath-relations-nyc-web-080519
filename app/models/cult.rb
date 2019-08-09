require 'pry'

class Cult
  attr_reader :name, :location, :founding_year, :slogan
  attr_accessor :all_followers
  
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
    @all_followers = []
  end  #ends initialize

  def recruit_follower(follower_inst)
    self.all_followers << follower_inst
  end # recruit_follower

  def cult_population
    @all_followers.length
  end

  def self.all
    @@all
  end

  def self.find_by_name(cult_name)
    self.all.find do |cult|
      cult.name == cult_name
    end
  end

  def self.find_by_location(cult_location)
    self.all.select do |cult|
      cult.location == cult_location
    end
  end

  def self.find_by_founding_year(year)
    self.all.select do |cult|
      cult.founding_year == year
    end
  end





end  # ends Cult class