# Week 2 Instructions

June 18 - June 22

## Submission Link

When finished with the week's assignment, please push your changes to GitHub and fill out the following <a href="https://goo.gl/forms/bBfvoB3pV7COztyT2">form</a>.

## Reading Assignment

Read the following chapters from Chris Pine's Learn to Program:

- Chapter 6: More About Methods
  - pages 40-48
- Chapter 7: Flow Control
  - pages 49-62
- Chapter 8: Arrays and Iterators
  - pages 63-68

## Lab Assignment

Complete Lab 2

- In the top folder, run `ruby lab_runner.rb 2`

## Programming Assignment

### Chapter 6:

#### angry\_boss.rb

- Requirements
  - Angry boss. Write an angry boss program that rudely asks what you want. Whatever you answer, the angry boss should yell it back to you and then fire you. For example, if you type in I want a raise, it should yell back like this:
	  - `WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!`
- Clarifications/Advice
  - Make sure they shout everything, including your request.

#### table\_of\_contents.rb

- Requirements
  - Here’s something for you to do in order to play around
more with center, ljust, and rjust: write a program that will display a table of
contents so that it looks like this:

```
				   	Table of Contents
Chapter 1: Getting Started				page  1
Chapter 2: Numbers				    	page  9
Chapter 3: Letters				    	page 13
```

- Clarifications/Advice
  - Make sure to align it properly. A good tip is to make sure that each of the lines is the same length, which can be ensured by making sure that the arguments to `.center`, `.ljust`, and `.rjust` add up to the same total
  - p.s. I won't penalize you for using your favorite book's contents instead of _Learn to Program_'s. (It was boring seeing the same three chapters over and over again.)

### Chapter 7:

#### 99\_bob.rb

- Requirements
  - Write a program that prints out the lyrics
to that beloved classic, “99 Bottles of Beer on the Wall.”
  - Here’s a handy <a href="http://www.99-bottles-of-beer.net/lyrics.html">reference</a>. It must look like this (with the lyric match and the spacing).
- Clarifications/Advice
  - Main thing for this one is that the lyrics change when you get to one bottle of beer left on the wall, so make sure you account for it!

#### deaf\_grandma.rb

- Requirements
  - Whatever you say to Grandma (whatever you type in), she
should respond with this:
		- `HUH?! SPEAK UP, SONNY!`
  - unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back:
		- `NO, NOT SINCE 1938!`
  - To make your program really believable, have Grandma shout a different year each time, maybe any year at random between 1930 and 1950.
  - You can’t stop talking to Grandma until you shout BYE.
- Clarifications/Advice
  - Don’t forget about `.chomp!` 'BYE' with an `Enter` at the end is not the same as 'BYE' without one!
  - Try to think about what parts of your program should happen
over and over again. All of those should be in your while loop.
  - People often ask, “How can I make rand give me a number in a range not starting at zero?” But you don’t need it to. Is there something you could do to the number rand returns to you?

#### deaf\_grandma\_extended.rb

- Requirements
	- What if Grandma doesn’t want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row.
	- Make sure to test your program: if you shout BYE three times but not in row, you should still be talking to Grandma.
- Clarifications/Advice
  - It's an extension of the previous, so I'd recommend you copy over your previous code and modify it instead of starting over.
  - Main thing that trips people up is not making sure that the three "BYE"s are given in a row. A common mistake was to misinterpret it as exiting on "BYE BYE BYE", but that’s not quite right. For the program to exit you should have to type in "BYE" as your response three times, with Grandma pretending not to hear you the first two times, before giving up and saying goodbye on the third.

#### leap\_year\_counter.rb

- Requirements
  - Write a program that asks for a starting year and an ending
year and then puts all the leap years between them (and including them,
 if they are also leap years). Leap years are years divisible by 4 (like 1984 and 2004). However, years divisible by 100 are not leap years (such as
 1800 and 1900) unless they are also divisible by 400 (such as 1600 and
 2000, which were in fact leap years). What a mess!
- Clarifications/Advice
  - Key for this one is keeping the conditions needed for a year to be a leap year in mind. It has to be divisible by 400, or divisible by 4 and not by 100. It’s easy to get mixed up, so double check by trying it out and comparing with this <a href="http://www.onlineconversion.com/leapyear.htm">site</a>

### Chapter 8:

#### array\_sort.rb

- Requirements
  - Write the program we talked about at the
 beginning of this chapter, one that asks us to type as many words as we
 want (one word per line, continuing until we just press Enter on an
 empty line) and then repeats the words back to us in alphabetical order.
- Clarifications/Advice
  - Make sure to test your program thoroughly; for example, does hitting `Enter` on an empty line always exit your program? Even on the first line? And the second?
  - There’s a lovely array method that will give you a
 sorted version of an array: `.sort`. Use it!

#### table\_of\_contents.rb

- Requirements
  - Rewrite your table of contents program from chapter 6. Start the program with an array holding all of the information
 for your table of contents (chapter names, page numbers, and so on).
 Then print out the information from the array in a beautifully formatted
 table of contents.
- Clarifications/Advice
  - Main thing is to actually use an array to store your strings, don’t just copy paste the old code
  - A possible misinterpretation is to just literally store all the variables you'll need in an array like `stuff_i_will_need = ["Table of Contents", 1, "Getting Started", 1, 2, "Numbers", 9]`. But if you do that, you'll notice that it doesn't make the code any easier to write. Programmers don't usually just store a bunch of different stuff in an array just like that! Instead, you'll have an array containing the first X, the second X, and so on. For example, `chapter_names = ["Getting Started", "Numbers", "Letters"]` contains the first chapter name, the second name, etc. Or if you want to be clever, you can use a nested array: `chapters = [["Getting Started", 1], ["Numbers", 9], ["Letters", 13]]`. Either way, you'll now be able to do everything in an elegant loop (use the `.each` or `.each_with_index` method -- google the latter). _That's_ the beauty of arrays.
