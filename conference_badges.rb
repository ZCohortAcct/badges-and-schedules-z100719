require 'pry'

def badge_maker(name)
  # return "Hello, my name is #{name}." # explict return val
  # "Hello, my name is #{name}." # implicit return val
  "Hello, my name is " + name + "."
end

def batch_badge_creator(arr)
  # return an arry of badges
  # currently have an arr of names
  # create a new arr b/c need to return arr of badges

  # badges = []
  # arr.each do |first_name| 
  #   badges.push("Hello, my name is #{first_name}.")
  # end
  # badges

  # arr.map do |first_name|
  #   badge_maker(first_name)
  # end

  arr.map {|first_name| badge_maker(first_name)}
end

def assign_rooms(attendees)
  #need array for message
  # msg = []
  #need a var for room number
  # rm_num = 1

  # attendees.each do |speaker|
  #   msg << "Hello, #{speaker}! You'll be assigned to room #{rm_num}!"

  #   rm_num += 1
  # end

  # attendees.each_with_index do |speaker, idx|
  #   msg << "Hello, #{speaker}! You'll be assigned to room #{idx + 1}!"

  #   # rm_num += 1
  # end
  # msg

  # attendees.collect.with_index(1) do |speaker, idx|
  #    "Hello, #{speaker}! You'll be assigned to room #{idx}!"
  # end

  attendees.collect.with_index(1) {|speaker, idx| "Hello, #{speaker}! You'll be assigned to room #{idx}!"}
end

def printer(names_arr)
  #each method returns an array
  # batch_badge_creator(names_arr).each do |str|
  #   puts str
  # end 

  # assign_rooms(names_arr).each do |str|
  #   puts str
  # end 

  batch_badge_creator(names_arr).each {|str| puts str}

  assign_rooms(names_arr).each {|str| puts str}
end 

ppl_arr = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

printer(ppl_arr)