# Pocket Wellness App 

##  Statement of purpose and scope 

The Pocket Wellness app is designed for office workers  sit at a desk for the majority of their workday. Studies have shown sitting at a desk for extended period of time can contribute to fatigue, soreness in the body, mental block, and anxiety. Office workers are particularly prone to experiencing these issues because they are the main population that sits at a work desk for the majority of the day. 

The Pocket Wellness app can be used to alleviate all of the aforementioned common common issues  by targeting the users’ mental and physical state through different yoga stretches. The program takes the information input by the user and creates a customised sequence of  yoga poses according to the  mental state, location, and time limits of the user. Moreover, the  poses given to the user are designed to target different areas in the body that experience tension and tightness as a result of sitting at a desk throughout the day. Shoulder, upper back, hips, and hamstrings are targeted throughout each sequence so that the user can experience a full body stretch.

I am developing this application because I wanted to create a program  I could actually see myself using and that would also benefit my health and wellness. As a future office worker, I would love to be able to prioritise daily intervals of stretching and movement whenever given the opportunity. However, this may not be feasible because of work loads, time constraints, or not being able to go to a room to practice yoga. When designing this application, I kept all of these factors in mind and factored in features that would deliver a custom yoga sequence that would provide relief for the mind and body. As a result, office workers can return form their break feeling rejuvenated and more at ease.   



## Features  
### Time Feature 
The time feature allows the user to select from three time options: fifteen, thirty, and sixty minutes. These options factor realistic time restraints for the typical office workers. I believe  fifteen minutes and sixty minutes would  be the most frequently chosen time. Fifteen minutes could factor in a quick break or perhaps the remaining quarter of an hour long break, while an hour break is the most common break office workers receive.  Thirty minutes would also be a great option for those who would like to stretch for the first half of their break then eat after, or for those who have a busy work day and can only take half of their 60 minute break. 

### Mental State Feature 
The mental state feature is my favourite feature and what makes this app shine. The four mental states provided to the user are “I am feeling tired”, “I am feeling anxious”, “I feel great”, and “I have a mental block.”  The users are able to choose from emotions that are commonly experienced when working in an office and aside from the “great” variable, all of the mental states would be the reason why a user would need a wellness app. I particularly like  the “I am feeling great” feature because it caters users who want to maintain their mental state rather than change it. It could also be an option for users who pick a different mental state and would like to practice a different set of poses when they feel better and have extra time to stretch.

### Location Feature 
The location feature gives the user two options: “At my room” and “In a room with space”. This final feature allows the user to further customise their experience by giving them two options that could touches upon other options. For instance, “In a room with a space” could account for a location at home, an exercise room at work, or even space outside. I also wanted to make sure I was a little vague so when giving the option of “In a room with space” in order to encourage the users to be creative when finding a place to stretch. 


### User interaction and experience 
Your outline must include:
-How the user will find out how to interact with / use each feature
The user will interact with each feature through the use of prompts that appear in the terminal. The first prompt introduces the user to the pocket wellness app and asks for the users’ name in the next line. Following, there is a short serious of questions that gather information for the rest of the features.

- how the user will interact with / use each feature
The user will interact with each feature by following the prompts that appear in the terminal along with the list of selections. For instance, the prompt, “How much time do we have today?”  is aligned alongside a note that reads “Use arrow up and arrow down keys, press Enter to select” This will guide the user through the selections.

- how errors will be handled by the application and displayed to the user
In the program, errors are handled with the ruby gem, “Tty-prompt.” This gem allows users to utilise a scroll down menu and ignores any actions that do no use the scroll arrows. For instance, when the user is asked if they will be working in a room or a desk,  the two options “At my desk”, and “A room with a space” are the only options that the user allowed to scroll through. If the user attempts to input an answer that deviates from the up and down scroll menu, nothing would execute. Also, all the possible variations and possibilities using the features have been accounted for so there will always be a generated sequence of poses. Therefore, there would be no errors. 




### Implementation plan

The name feature is the first feature presented to the user and is used  to welcome them and customise their experience. 
 
The time feature will be implemented after the user inputs their name. The time feature checklist consists of 3 time frames that have the option of being executed by the user. The time feature is the main priority and dictates the entire structure and flow of the program. 
 
The mental feature is the second priority and adds slight variations to the final program that will be executed. For the most part, the  sequences are very similar, with the exception of  4-5 poses that would make a world of difference based on the mood the user selected. 

The time, location, and mental state feature all have the same duration of time between prompts and time displayed on the screen.

Gems 
>>* TTY-Prompt


 




