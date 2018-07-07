# Week 4 Instructions

July 2 - July 6

## Submission Link

When finished with the week's assignment, please push your changes to GitHub and fill out the following <a href="https://goo.gl/forms/5OHeR0G65KQPMuS93">form</a>.

## Reading Assignment

Read the following chapters from Chris Pine's Learn to Program:

- Chapter 10: There’s Nothing New to Learn in Chapter 10
  - pages 81-93

Very much worth noting that the title is quite misleading. This chapter is quite challenging and we recommend you get started early.

This week we also have optional videos to help you master the following areas:

- A three part series on <a href="https://www.youtube.com/playlist?list=PL_Otc46JXAZ7IV44EzIr1pDin0Q_EV0MD">recursion</a>.
- A two part series on <a href="https://www.youtube.com/playlist?list=PL_Otc46JXAZ7f-AkN5DYpHGp0tnFPjPQE">sorting</a>.

## Lab Assignment

Complete Lab 4

- In the top folder, run `ruby lab_runner.rb 4`

## Programming Assignment

### Chapter 10:

#### english_number.rb

- Requirements
  - First, put in thousands; it should return 'one thousand' instead of (the sad) 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.
  - Now expand upon english_number some more. For example, put in millions so you get 'one million' instead of 'one thousand thousand'. Then try adding billions, trillions, and so on.
  - We've copy pasted in the base code from the book, all you have to do is expand on it to have it display 'thousands', 'millions', 'billions', and 'trillions'.
- Clarifications/Advice
  - Nothing for this one, just make sure to read it in depth and understand how it works so you can make the necessary modifications.
  
NOTE: You do not have to do wedding number! That was a joke, really.

#### 99_bob_eng.rb

- Requirements
  - Using `english_number` and your old program on page 49, write out the lyrics to this song the *right* way this time. Punish your computer: have it start at 9999. (Don’t pick a number too large, though, because writing all of that to the screen takes your computer quite a while. A hundred thousand bottles of beer takes some time; and if you pick a million, you’ll be punishing yourself as well!)
- Clarifications/Advice
  - You've done this one before, just copy paste in your completed `english_number.rb` code, your old 99 bottles of beer code, and modify it to display the lyrics using english numbers by calling the method.

#### sort.rb

- Requirements
  - Beyond the basic requirement of properly sorting the provided array, this one must be recursive. No points will be given if it's iterative.
  - We've provided the wrapper method described in the book, we recommend you work with it.
- Clarifications/Advice
  - The examples given in the sorting videos are meant to familiarize you with sorting as a whole, not provide base code for you to adapt. You can if you want to, but it's probably easier to not.

#### dict_sort.rb

- Requirements
  - Your sorting algorithm is pretty good, sure. But there was always that sort of embarrassing point you were hoping I’d just sort of gloss over, right? About the capital letters? Your sorting algorithm is good for general-purpose sorting, but when you sort strings, you are using the ordering of the characters in your fonts (called the ASCII codes) rather than true dictionary ordering. In a dictionary, case (upper or lower) is irrelevant to the ordering. So, make a new method to sort words (something like dictionary_sort).
  - It's same as with sort, but must now be case insensitive.
  - Must be recursive.
- Clarifications/Advice
  - Remember, though, that if I give your program words starting with capital letters, it should return words with those same capital letters, just ordered as you’d find in a dictionary.

#### shuffle.rb

- Requirements
  - Now that you’ve finished your new sorting algorithm, how about the opposite? Write a `shuffle` method that takes an array and returns a totally shuffled version. As always, you’ll want to test it, but testing this one is trickier: How can you test to make sure you are getting a perfect shuffle? What would you even say a perfect shuffle would be? Now test for it.
  - As with the sorting ones, it must be recursive.
- Clarifications/Advice
  - Think back to the last time we worked with randomness...

### Optional Recursion Practice:

For these we've provided skeleton code for you to build from. Replace the `_____` with code to make each one work as described.

Make sure to replace the `__` in the call to the method at the bottom to test your code.

We will grade these if you do them, but they are optional.

#### sum_of_integers.rb

- Requirements
  - Fill in the fuction such that it returns the sum of all positive integers between 0 and n.
- Clarifications/Advice
  - You do not have to worry about negative inputs, but are free to modify the method to guard against it as an optional challenge.

#### array_min.rb

- Requirements
  - Fill in the method such that it returns the minimum value stored in the array.
- Clarifications/Advice
  - Think very carefully about the base case we gave you. In what situation would you just return the first element in the array? Once you have that, what would you then have to do in the `else` case to simplify the problem with each recursion until you get there?

#### array_sum.rb

- Requirements
  - Fill in the method such that it returns the sum of all the elements in the array.
- Clarifications/Advice
  - This one is pretty similar to the previous one, but we're not providing a `len` argument for it. Can you think of a way to work around that?

#### digit_sum.rb

- Requirements
  - Fill in the method such that it returns the sum of the digits of the passed in number
- Clarifications/Advice
  - Think carefully about what the second argument needs to be to ensure the correct output is returned.
