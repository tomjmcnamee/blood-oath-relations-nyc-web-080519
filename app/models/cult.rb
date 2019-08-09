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

  def average_age
    total_age_arr = []
    self.all_followers.each do |foll|
      total_age_arr << foll.age
    end  #ends all_followers.each
    leng = total_age_arr.length
    av = total_age_arr.sum/leng.to_f
    av
  end # average_age

  def my_followers_mottos
     self.all_followers.each do |foll|
      puts  foll.life_motto
     end 
  end

  def self.least_popular
    # output_hash = {}
    # self.all.each do |cult|
    #   output_hash[cult] = cult.cult_population
    # end
    # output_hash

    population_arr = []
    cult_arr = []
      self.all.each do |cult|
        population_arr << cult.cult_population
        cult_arr << cult
      end
    least_pop_number = population_arr.min
    least_pop_index = population_arr.find_index(least_pop_number)
    least_populated_cult = cult_arr[least_pop_index]
    least_populated_cult
  end  # ends self.east_popular

  def self.most_common_location
    location_array = []
    self.all.each do |cult|
      location_array << cult.location
    end

    location_count = Hash.new(0)
    location_array.each {|location| location_count[location] += 1}
    location_count.sort_by {|location, count| count }.last[0]

    # pet_count = Hash.new(0)
    # pets.each {|pet| pet_count[pet] += 1}
    # pet_count.sort_by { |k,v| v }.last
    
  end #end of most_common_location


end  # ends Cult class