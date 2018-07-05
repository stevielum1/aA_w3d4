# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Bob")
User.create(username: "Andy")
User.create(username: "David")

Poll.create(title: "Favorite Dog Breed", user_id: 1)
Poll.create(title: "Favorite Ice Cream Flavor", user_id: 2)
Poll.create(title: "Repeal Gas Tax", user_id: 3)

Question.create(text: "Do you own a dog?", poll_id: 1) #Q1
Question.create(text: "What's your favorite dog breed?", poll_id: 1)#Q2

Question.create(text: "How often you eatin ice cream?", poll_id: 2) #Q3
Question.create(text: "What flavor you munchin?", poll_id: 2) #Q4


Question.create(text: "How often do you drive?", poll_id: 3) #Q5 
Question.create(text: "What is your average fill-up cost?", poll_id: 3) #Q6
Question.create(text: "Do you want to repeal the gas tax?", poll_id: 3) #Q7 

AnswerChoice.create(text: "yes", question_id: 1)
AnswerChoice.create(text: "no", question_id: 1)

AnswerChoice.create(text: "corgi", question_id: 2)
AnswerChoice.create(text: "shiba inu", question_id: 2)
AnswerChoice.create(text: "border collie", question_id: 2)
AnswerChoice.create(text: "golden retriever", question_id: 2)


AnswerChoice.create(text: "Once a week", question_id: 3)
AnswerChoice.create(text: "sometimes", question_id: 3)
AnswerChoice.create(text: "never", question_id: 3)

AnswerChoice.create(text: "vanilla", question_id: 4)
AnswerChoice.create(text: "chocolate", question_id: 4)
AnswerChoice.create(text: "strawberry", question_id: 4)


AnswerChoice.create(text: "Once a week", question_id: 5)
AnswerChoice.create(text: "sometimes", question_id: 5)
AnswerChoice.create(text: "never", question_id: 5)

AnswerChoice.create(text: "twenty", question_id: 6)
AnswerChoice.create(text: "thirty", question_id: 6)
AnswerChoice.create(text: "fourty", question_id: 6)


AnswerChoice.create(text: "yes", question_id: 7)
AnswerChoice.create(text: "no", question_id: 7)

Response.create(user_id: 1, answer_choice_id: 1) #user 1 owns a dog
Response.create(user_id: 1, answer_choice_id: 3) #u1 owns a corgi

Response.create(user_id: 2, answer_choice_id: 7) #eats ice cream once a week
Response.create(user_id: 2, answer_choice_id: 10) #vanilla

Response.create(user_id: 3, answer_choice_id: 13) #u3 drives once a week
Response.create(user_id: 3, answer_choice_id: 18) #40$ on gas

Response.create(user_id: 3, answer_choice_id: 19) #u3 wants to repeal gas tax











