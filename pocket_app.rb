# https://github.com/piotrmurach/tty-prompt
require "tty-prompt"


def ask_question (question, options = {})# defining a method called ask_question that takes two parameters.
    prompt = TTY::Prompt.new #creating a new prompt with the gem. nested it inside the ask_question method 
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
        "15 minutes" => 15, #saved hashes so i wouldnt have to type the whole prompt in my if statements 
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
        "I am feeling tired" => "Tired", #saved hashes so i wouldnt have to type the whole prompt in my if statements 
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


if time == 15
    cues(["Seated Cat/Cow, Seated Mountain, Seated Twist, Eagle Arms, Seated Savasana"])
end

# For Z
if location == "Desk" && (mental_state == "Anxious" || mental_state == "Tired") && time == 30
    cues(["Puppy dog with chair" ,"Seated Side Stretch" ,"Seated Twist","Seated mountain", "Seated Savasana"])
end 

# For Y

if location == "room" and mental_state == "Blocked" && (time > 15)
    cues(["Childs Pose","Cat/Cow", "Mountain", "Standing Twist", "Eagle Arms", "Bridge","Reclined Savasana"])
end 

# For C  
if location == "Desk" && (mental_state == "Anxious" || mental_state == "Tired") && time == 60  
    cues(["Seated Cat/Cow","Seated Mountain","Seated Twist","Sun Salutation with chair","Eagle", "Tree", "Seated Twist","Seated Savasana" ])   
end 

# For D 
if location == "Desk" && mental_state == "Great" && time >= 15
    cues(["Seated Cat/Cow", "Seated Mountain", "Seated Twist", "Eagle Arms", "Seated Twist", "Seated Savasana"])
end 

if location == "room" && mental_state == "Great" && time > 15 
    cues(["Cat Cow", "Thread the Needle", "Down Dog" "Sun A", "Sun B" "Warrior 1", "Warrior 2", "Warrior 3", "Childs", "Savasana"])
end 
#For Y ])

if location == "room" && mental_state != "Mental Block"
    if time == 30
    cues (["Corpse Pose", "Knee to Chest", "Reclined Twist", "Down Dog", "Sun A", "Sun B", "Wide Legged Forward Fold", "Mountain", "Happy Baby", "Savasana"]) 
    elsif time == 60
    puts "E"
    cues (["Hero Pose", "Thread the Needle","Down Dog","Down Dog Plank Cycle", "Down Dog", "Mountain","Eagle", "Sun Salutation A", "Sun Salutation B","Eagle (x2)","Tree (x2)","Legs up the Wall", "Savasana"])
end
end  


#For E 
