#!/usr/bin/env python
# coding: utf-8

# In[4]:


x=input("Enter sentence ")
count=0
for char in x:
    if char=='a' or char=='i' or char=='o'or char=='u'or char=='e':
        count=count+1
        
print(count)        


# In[13]:


lists=input("Enter list ")
numbers=list(map(int, lists.split(',')))
maxnum=-100
for i in numbers :
    if i>maxnum:
        maxnum=i
print(maxnum)    


# In[ ]:





# In[ ]:




