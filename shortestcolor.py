# -*- coding: utf-8 -*-
"""
Created on Sat Dec 23 20:09:25 2023

@author: prane
"""

def colorHouse(N,red,blue,green,latest_color=None,count=0):
    if count==N:
        return 0
    if latest_color==None:
        return min(
            red[count]+colorHouse(N, red, blue, green,'r',count+1),
            blue[count]+colorHouse(N,red,blue,green,'g',count+1),
            green[count]+colorHouse(N,red,blue,green,'b',count+1),
        )
    elif latest_color=='r':
        return min(green[count]+colorHouse(N, red, blue, green,'g',count+1),
                   blue[count]+colorHouse(N, red, blue, green,'b',count+1)
        )
    elif latest_color=='g':
        return min(
            red[count]+colorHouse(N, red, blue, green,'r',count+1),
            blue[count]+colorHouse(N, red, blue, green,'b',count+1),
        )
    else:
        return min(
            red[count]+colorHouse(N, red, blue, green,'r',count+1),
            blue[count]+colorHouse(N, red, blue, green,'b',count+1),
        )
N=3
Red=[6,5,3]
Blue=[3,1,6]
Green=[9,4,2]
out=colorHouse(N,Red,Blue,Green)
print("Minimum cost to paint houses",out)    