require "pry"

# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map{ |name| badge_maker(name) }
end

def assign_rooms(speakers)
  return_messages = []
  speakers.each_with_index do |name, index|
    # puts badge_maker(name)
    welcome_message = "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    return_messages.push(welcome_message)
    # binding.pry
  end
  return_messages
end

def printer(names)
  names.each do |name|
    puts badge_maker(name)
  end
  room_assignments = assign_rooms(names)
  room_assignments.each{ |assignment_message| puts assignment_message }
end

# speaker_list = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
# puts printer(speaker_list)