require 'rubygems'
require 'bundler/setup'

require_relative 'lib/user_comparer'

user1 = UserComparer::User.new('s_byrne')
user2 = UserComparer::User.new('silasrioux')
puts "#{user1.username}'s follower count: #{user1.followers}"
puts "#{user2.username}'s follower count: #{user2.followers}"

comparer = UserComparer::Comparer.new(user1,user2)
puts "The user with the most followers: #{comparer.compare}"