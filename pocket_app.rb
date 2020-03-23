# https://github.com/piotrmurach/tty-prompt
require "tty-prompt"


def ask_question (question, options = {})# defining a method called ask_question that takes two parameters.
    prompt = TTY::Prompt.new #creating a new prompt with the gem 
    if options.length == 0 # its asking if we have no options 
        return prompt.ask(question) # if so, ask question and return what they type in. they press enter and its returned back to the caller 
    else 
        return prompt.select(question, options) #if there are options, then we want to present the user with the choice of options        
    end
end 

def cues(poses)
    puts "Here are some great poses you can try:"
    poses.each do |pose|
        puts "  * #{pose}."
    end
end


puts "Welcome to My Pocket Wellness App!"


name = ask_question("What is your name?") #have a variable name that is set to the result of the method call ask question)
puts "Hello #{name}" 


time = ask_question(
    "How much time do we have today?", {
        "15 minutes" => 15,
        "30 min" => 30, 
        "1 hour" => 60
        }) #first paarameter is string, the second is an array with 3 values. The array's values has to be in quation marks to make it a string 


location = ask_question(
    "Cool! And will we be working at your desk or in a room with space?", {
        "At my desk" => "Desk",
        "In a room with space" => "room"
    }) 

mental_state = ask_question(
    "How are you feeling today?", {
        "I am feeling tired" => "Tired",
        "I am feeling anxious" => "Anxious",
        "I feel great" => "Great",
        "I have a mental block" => "Block"
    })

if location == "Desk" and time == 15
    puts "Got it! Let's be quick."
end
# ask_question("How are you feeling today?")
if location == "Desk" && mental_state == "Block" && time >=30
    cues([ "Seated Cat/Cow", "Seated Mountain", "Seated Twist", "Eagle Arms", "Seated Twist", "Seated Savasana"])
end 
