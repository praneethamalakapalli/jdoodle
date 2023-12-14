# -*- coding: utf-8 -*-
"""
Created on Thu Dec 14 20:52:12 2023

@author: prane
"""
import os
def add(a,b):
    return a+b
def subtract(a,b):
    return a-b
def multiply(a,b):
    return a*b
def divide(a,b):
    return a/b
operation_dict={
    "+":add,
    "-":subtract,
    "*":multiply,
    "/":divide
}
def calculator():
    num1=float(input("enter the first number"))
    for symbol in operation_dict:
        print(symbol)
    continue_flag=True
    while continue_flag:
        op_symbol=input("pick an operation") 
        num2=float(input("enter the second number"))
        cal_func=operation_dict[op_symbol]
        output=cal_func(num1,num2)
        print(f"{num1} {op_symbol} {num2}={output}")
        should_continue=input("enter 'Y' to continue caluclation with {output} or 'n' to start a new caluclation or 'x' to exit").lower()
        if should_continue=='Y':
            num1=output
        elif should_continue=='n':
            continue_flag=False
            calculator()
        else:
            continue_flag=False
            print("BYE")
calculator()            

    


