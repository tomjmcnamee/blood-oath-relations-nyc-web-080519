require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

heavens = Cult.new("Heavens Gate", "not here", 1986, "Just do it")
jonestown = Cult.new("Jones Town rock", "Guyana", 1995, "Try the koolaid")
cult3 = Cult.new("Cult number 3", "over there", 2001, "Join us")
cult4 = Cult.new("Cult number 4", "over there", 2001, "Join us")
cult5 = Cult.new("Cult number 5", "over 2", 2001, "welcome")
cult6 = Cult.new("Cult number 6", "over 3", 2001, "give us money")


joe_follower = Follower.new("Joe", 25, "someone accept me")
bill_follower = Follower.new("Bill", 35, "help")
bob_follower = Follower.new("Bob", 54, "whats up")
jill_follower = Follower.new("Jill", 25, "Girl Power!!!")


bo_1 = BloodOath.new("2019-09-17", heavens, joe_follower)
bo_2 = BloodOath.new("2019-09-18", jonestown, bill_follower)
bo_4 = BloodOath.new("2019-09-12", jonestown, joe_follower)
bo_5 = BloodOath.new("2019-09-13", jonestown, bob_follower)
bo_6 = BloodOath.new("2019-09-14", cult3, bob_follower)
bo_3 = BloodOath.new("2019-09-19", heavens, bill_follower)

cult5.recruit_follower(bob_follower)
cult5.recruit_follower(bill_follower)
cult4.recruit_follower(bob_follower)
bob_follower.join_cult(cult6)
joe_follower.join_cult(cult6)
joe_follower.join_cult(cult3)
joe_follower.join_cult(heavens)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
