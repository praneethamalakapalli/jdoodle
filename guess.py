# -*- coding: utf-8 -*-
"""
Created on Sat Dec 16 06:35:07 2023

@author: prane
"""

import random
import logo_art
EASY_LEVEL_ATTEMPTS=10
HARD_LEVEL_ATTEMPTS=5
def set_difficulty(level_chosen):
    if level_chosen=='easy':
        return EASY_LEVEL_ATTEMPTS
    elif level_chosen=='Hard':
        return HARD_LEVEL_ATTEMPTS
    else:
        return
def check_answer(guessed_number,answer,attempts):
    if guessed_number<answer:
        print("Your guess is too low")
        return attempts-1
    elif guessed_number>answer:
        print("guess is to high")
        return attempts-1
    else:
        print(f"Your Guess is right...The answer was {answer}")
def game():
    print(logo_art.logo)
    print("Let me think of a number between 1 to 50")
    answer=random.randint(1,50)
    print(answer)
    level=input("Choose level of difficulty...Type 'Easy' or 'hard':")
    attempts=set_difficulty(level)
    if attempts!=EASY_LEVEL_ATTEMPTS and  attempts!=HARD_LEVEL_ATTEMPTS:
        return
    guessed_number=0
    while guessed_number!=answer:
        print(f"you have {attempts} remaining to guess the number")
        guessed_number=int(input("guess the number"))
        attempts=check_answer(guessed_number,answer,attempts)
        if attempts==0:
            print("You are out of guesess...You Lose!")
            return
        elif guessed_number!=answer:
            print("Guess again")
game()      
        


