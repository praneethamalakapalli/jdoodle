# -*- coding: utf-8 -*-
"""
Created on Thu Dec 14 04:33:59 2023

@author: prane
"""
print("*****************")
print("welcome to my quiz Game!!")
question_bank=[
     {"text":"Decision Tree mainly used from solution optimization","answer":"C"},
     {"text":"What tasks are used in ai","answer":"A"},
     {"text":"which application is not in ai","answer":"C"}
]
options=[["A.Regression","B.classification","C.clustering","D.both A and B"],
         ["A.gameplaying","B.knowledge representation","C.navigator","D.None of the above"],
         ["A.nlp","B.health care","C.telephones","D.both A and B"]
         
]
score=0
def check_answer(user_guess,correct_answer):
    if user_guess==correct_answer:
        return True
    else:
        return False

for question_num in range(len(question_bank)):
    print("**********************")
    print(question_bank[question_num]["text"])
    for i in options[question_num]:
        print(i)
    guess=input("Enter your answer(A/B/C/D):").upper() 
    is_correct=check_answer(guess,question_bank[question_num]["answer"])
    if is_correct:
        print("Correct answer")
        score+=1
    else:
        print("Incorrect Answer")
        print(f"The correct answer is{question_bank[question_num]['answer']}")
    print(f"Your current score is {score}/{question_num+1}")    
print(f"Your final score is {score}")
print(f"your score is {(score/len(question_bank))*100}%")       
        
    
     