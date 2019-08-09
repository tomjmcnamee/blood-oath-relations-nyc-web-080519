require 'pry'

class Follower
  attr_reader :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name 
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end 

  def join_cult(cult_inst)
    cult_inst.all_followers << self
  end

  def cults
    my_cults = []
    Cult.all.each do |cult_inst|
      cult_inst.all_followers.select do |follower_inst|
        if follower_inst  == self
          my_cults << cult_inst
        end
        #binding.pry
      end
    end
    my_cults
  end  #ends cult method

  def self.of_a_certain_age(f_age)
    self.all.select do |person|
      person.age >= f_age
    end # ends all.self loop
  end  # ends of_a_certain_age method




end  # ends Follower class