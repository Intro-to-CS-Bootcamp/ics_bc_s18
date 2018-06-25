# Week 3 Instructions

June 25 - June 29

## Submission Link

When finished with the week's assignment, please push your changes to GitHub and fill out the following <a href="https://goo.gl/forms/MhtYc7XdCra8DFdI2">form</a>.

## Reading Assignment

Read the following chapters from Chris Pine's Learn to Program:

- Chapter 9: Writting Your Own Methods
  - pages 69-80
  
This week we also have optional <a href="https://www.youtube.com/playlist?list=PL_Otc46JXAZ4lP1domOnNNHj78JPdrZ6u">videos</a> to provide more examples with programs that manipulate strings and integers, which is what you will do in the Roman numeral assignments.

## Lab Assignment

Complete Lab 3

- In the top folder, run `ruby lab_runner.rb 3`

## Programming Assignment

### Chapter 9:

#### ask.rb

- Requirements
  - That `ask` method I showed you was OK, but I bet you could do better. Try to clean it up by removing the answer variable. You’ll have to use `return` to exit from the loop. (Well, it will get you out of the whole method, but it will get you out of the loop in the process.) How do you like the resulting method? I usually try to avoid using `return` (a personal preference), but I might make an exception here.
- Clarifications/Advice
  - Make sure to account for the three distinct cases:
    - Answer was ‘yes’
    - Answer was ‘no’
    - Answer was anything else

#### old\_roman\_numerals.rb

- Requirements
  - In the early days of Roman numerals, the Romans didn’t bother with any of this new-fangled subtraction “IX” nonsense. No sir, it was straight addition, biggest to littlest—so 9 was written “VIIII,” and so on. Write a method that when passed an integer between 1 and 3000 (or so) returns a string containing the proper oldschool Roman numeral. In other words, `old_roman_numeral 4` should return 'IIII'. Make sure to test your method on a bunch of different numbers. Hint: Use the integer division and modulus methods on page 32.
  - For reference, these are the values of the letters used:

~~~
I = 1 V = 5 X = 10 L = 50
C = 100 D = 500 M = 1000
~~~

- Clarifications/Advice
  - This one is tricky, both roman ones are really. Things to keep in mind are to make sure you’re printing the largest numerals first, and to not overcount. That is, entering ‘5’ should return ‘V’, not ‘VIIIII’.

#### new\_roman\_numerals.rb

- Requirements
  - Eventually, someone thought it would be terribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. As a result of this development, you must now suffer. Rewrite your previous method to return the new-style Roman numerals so when someone calls `roman_numeral 4`, it should return 'IV'.
- Clarifications/Advice
  - This one is really just a harder version of the previous one with more symbols to account for, ‘IV’ for 4, ‘IX’ for 9, and so on for 40 and 90, and 400 and 900.
