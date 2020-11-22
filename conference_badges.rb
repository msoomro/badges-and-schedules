# requires a person's name
# returns a welcome/badge message
def badge_maker (name)
    "Hello, my name is #{name}."
end

# requires a list of names
# returns an array of badge messages
def batch_badge_creator (names)
    names.collect do |name|
        badge_maker(name)
    end
end

# requires a list of names
# returns a list of room assignment statements
def assign_rooms (speakers)
    speakers.collect do |speaker|
        "Hello, #{speaker}! You'll be assigned to room #{speakers.index(speaker) + 1}!"
    end
end

# outputs the result of batch_badge_creator (array of badge messages)
# outputs the result of assign_rooms (list of room assignment statements)
def printer (attendees)
    badge_messages = batch_badge_creator(attendees)
    room_assignments = assign_rooms(attendees)

    badge_messages.each do |message|
        puts message
    end

    room_assignments.each do |message|
        puts message
    end
end