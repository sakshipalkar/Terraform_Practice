


'''
def simple_interest(p,t,r):
    print('principal is', p)
    print('time period' ,t)
    print("rate of interest" ,r)

    si = (p * t * r)/100
    print('simple interest', si)
    return si

simple_interest(3000,7,1)     
'''


'''
def simple_interest(p,t,r):
    print('The principal is', p)
    print('The time period is', t)
    print('The rate of interest is',r)
     
    si = (p * t * r)/100
     
    print('The Simple Interest is', si)
    return si
     
# Driver code
simple_interest(8, 6, 8)
'''

#user input
def simple_interest(p,t,r):
    si =(p * r *t)/100
    print("Simple interest:", si)
    return si
P=int(input("Enter the value of pincipal:"))
R=int(input("Enter the value of rate of interest:"))
T=int(input("Enter the time:"))
simple_interest(P,T,R)