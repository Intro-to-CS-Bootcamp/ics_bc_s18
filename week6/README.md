# Week 6 Instructions

July 16 - July 20

## Submission Link

When finished with the week's assignment, please push your changes to GitHub and fill out the following <a href="https://goo.gl/forms/WEg81mGwjkUbJEzP2">form</a>.

## Reading Assignment

Read the following chapters from Chris Pine's Learn to Program:

- Chapter 13: Creating New Classes,
Changing Existing Ones
  - pages 113-122
- Chapter 14: New Classes of Objects
  - pages 122-131

## Videos

To help you review, we have the poll winner: <a href="https://youtu.be/iMAeAoW0jV4">Recursion Walkthrough</a>, which covers the remaining three recursion practice problems.

We also have a video covering <a href="https://youtu.be/SuNatY4cnzo">Blocks and Procs</a> to help you prepare for this week's assignment.

## Lab Assignment

Complete Lab 6

- In the top folder, run `ruby lab_runner.rb 6`

## Programming Assignment

### Chapter 13:

#### class_extensions.rb

- Requirements
  - You have to extend the following classes with the following methods:
    - `Array#shuffle`
      - Get your old `shuffle` method, and modify it to now be an extension of the `Array` class
      - That means that you should be able to call `['a', 2, 5, 'c', 'blah', 180].shuffle` and receive a shuffled version of the array.
    - `Integer#factorial`
      - Make `factorial` a method of the integer class
      - This means that calling `5.factorial` should return `120`
    - `Integer#to_roman`
      - Make your modern `roman_numeral` a method of the Integer class
      - THis means calling `4.to_roman` should return `"IV"`, and `86.to_roman` should return `"LXXXVI"`
- Clarifications/Advice
  - You've already written these, so all you need to do is make them part of their respective classes and modify them a bit to make it work
    - You'll have to make use of `self` for that

#### die.rb

- Requirements
  - Define the `Die#cheat` method to take in a number and make it the new top facing number if possible, or deals with physics breaking ones (numbers not 1-6) in whatever (reasonable) way you choose
- Clarifications/Advice
  - Skeleton code was provided for this one

#### baby_dragon.rb

- Requirements
  - For this one all the methods are already written, all you have to do is create an interface to interact with your dragon from the terminal
- Clarifications/Advice
  - Make sure all five methods (feed, walk, rock, toss, put to bed) are accessible, and you give a way to exit the program gracefully

#### orange_tree.rb

- Requirements
  - Implementations and details can vary quite a bit, but here are the required methods:
    - `initialize`
      - Creates your tree, initializes your variables
    - `one_year_passes`
      - Your tree grows older:
        - It grows in height
        - Sprouts some number of oranges after a certain age
        - Dies after some number of years
    - `height`
      - Tells you how tall your tree is
    - `age`
      - Tells you how old your tree is
    - `orange_count`
      - Tells you how many oranges are hanging from your tree
    - `pick_orange`
      - If there’s oranges to be picked, gives you one
- Clarifications/Advice
  - To make sure you get them all, we've given skeleton code with them there. You just have to define them

### Chapter 14:

#### profiling.rb

- Requirements
  - After you do your profiling, see the slow parts of your program, and either make them faster or learn to love them as they are, you probably don’t want to see all of that profiling anymore. But (I hope) you’re too lazy to go back and delete it all…especially because you might want to use it again someday. Modify the profile method so you can turn all profiling on and off by changing just one line of code. Just one word!
- Clarifications/Advice
  - It's pretty simple, though not easy. All you really need to do is add a way to turn the profiling on and off to the profiling block.

#### grandfather_clock.rb

- Requirements
  - Write a method that takes a block and calls it once for
each hour that has passed today. That way, if I were to pass in the block:

    ~~~
    do
      puts 'DONG!'
    end
    ~~~

  - it would chime (sort of) like a grandfather clock. Test your method out
with a few different blocks.

- Clarifications/Advice
  - A good starting point to figuring out how many times to chime is `Time.new.hour`. You will definitely have to do something with that to get it from a 0-23 to a 1-12 range though.
  - After that, make sure to call the passed in block that many times

#### log.rb

- Requirements
  - Write a method called `log` that takes a string description of a block (and, of course, a block). Similar to the method `do_self_importantly`, it should puts a string telling you it started the block and another string at the end telling you it finished and also telling you what the block returned. Test your method by sending it a code block. Inside the block, put another call to `log`, passing a block to it. In other words, your output should look something like this:

    ~~~
    Beginning "outer block"...
    Beginning "some little block"...
    ..."some little block" finished, returning: 5
    Beginning "yet another block"...
    ..."yet another block" finished, returning: I like Thai food!
    ..."outer block" finished, returning: false
    ~~~

- Clarifications/Advice
  - Make sure to test it with a set of blocks at least three deep. That way you’ll be sure it works as expected.


#### better_log.rb

- Requirements
  - The output from that last logger was kind of hard to read, and it would just get worse the more you used it. It would be so much easier to read if it indented the lines in the inner blocks. So, you’ll need to keep track of how deeply nested you are every time the logger wants to write something. To do this, use a global variable, which is a variable you can see from anywhere in your code. To make a global variable, just precede your variable name with `$`, like so: `$global`, `$nesting_depth`, and `$big_top_pee_wee`. In the end, your logger should output code like this:

    ~~~
    Beginning "outer block"...
      Beginning "some little block"...
        Beginning "teeny-tiny block"...
        ..."teeny-tiny block" finished, returning:lots of love
      ..."some little block" finished, returning: 42
      Beginning "yet another block"...
      ..."yet another block" finished, returning: I love Indian food!
    ..."outer block" finished, returning: true
    ~~~

- Clarifications/Advice
  - The global variable is 100% necessary for this
