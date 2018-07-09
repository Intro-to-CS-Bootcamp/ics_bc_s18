# Week 5 Instructions

July 9 - July 13

## Submission Link

When finished with the week's assignment, please push your changes to GitHub and fill out the following <a href="https://goo.gl/forms/9IaC6tRvhrqhMyII3">form</a>.

## Reading Assignment

Read the following chapters from Chris Pine's Learn to Program:

- Chapter 11: Reading and Writing,Saving and Loading,Yin and... Something Else
  - pages 94-104
- Chapter 12: New Classes of Objects
  - pages 105-113

This week we also have optional video to help you master the following area:

- A video on <a href="https://youtu.be/hTiryOe0Rgo">Classes and Objects</a>.

## Lab Assignment

Complete Lab 5

- In the top folder, run `ruby lab_runner.rb 5`

## Programming Assignment

### Chapter 11:

#### pictures.rb

- Requirements
  - Adapt the picture-downloading/file-renaming program to your computer by adding some safety features to make sure you never overwrite a file. A few methods you might find useful are `File.exist?` (pass it a filename, and it will return `true` or `false`) and `exit` (like if `return` and Napoleon had a baby—it kills your program right where it stands; this is good for spitting out an error message and then quitting).
- Clarifications/Advice
  - We've provided you with skeleton code for it, you'll just need to adapt the Directory stuff (more instructions for that are in the comments), and add the file overwrite check.
  - For the overwrite check, it should detect if a file would be overwritting an existing one, and prompt the user to see if they want to continue.

#### playlist.rb

- Requirements
  - Build your own playlist. For this to work, you need to have some music ripped to your computer in some format. We’ve ripped a hundred or so CDs, and we keep them in directories something like `music/genre/artist_and_cd_name/track_number.ogg`. (I’m partial to the `.ogg` format, though this would work just as well with `.mp3s` or whatever you use.) Building a playlist is easy. It’s just a regular text file (no YAML required, even).
  - Each line is a filename, like this: `music/world/Stereolab--Margarine_Eclipse/track05.ogg`
  - What makes it a playlist? Well, you have to give the file the `.m3u` extension, like `playlist.m3u` or something. And that’s all a playlist is: a text file with an `.m3u` extension.
  - So, have your program search for various music files and build you a playlist. Use your `shuffle` method on page 75 to mix up your playlist. Then check it out in your favorite music player (Winamp, MPlayer, and so on)!
- Clarifications/Advice
  - Make sure to actually write out the playlist you create into a file somewhere so you can play it.

#### better_playlist.rb **OPTIONAL/UNGRADED**

- For anyone that wants an extra challenge, give the `better_playlist.rb` described on page 93 of the book a shot. We won't be grading it, but you're welcome to ping any of the TAs for feedback on it.

### Chapter 12:

#### billion_seconds.rb

- Requirements
  - Find out the exact second you were born (if you can). Figure out when you will turn (or perhaps when you did turn) one billion seconds old. Then go mark your calendar.
  - Relatively simple conceptually, little harder to implement. You could just hardcode it, but we’ve used inputs for a while now, so make it a generic one that `gets` all the information it needs, adds a billion seconds to it, and informs the user when they’ll be a billion seconds old.
- Clarifications/Advice
  - Use the `Time` class for this

#### happy_birthday.rb

- Requirements
  - Ask what year a person was born in, then the month, and then the day. Figure out how old they are, and give them a big SPANK! for each birthday they have had.
  - Use user input for this one too
- Clarifications/Advice
  - Use the `Time` class for this
  - Again, you’ll start by using `gets` to get the information you need (year, month, day should be enough)
  - Then you’ll want to calculate how old they are, and return a “SPANK” for each one (one per line)

#### roman_to_integer.rb

- Requirements
  - Party like it’s `roman_to_integer 'mcmxcix'`! Come on, you knew it was coming, didn’t you? It’s the other half of your `roman_numeral 1999` method. Make sure to reject strings that aren’t valid Roman numerals.
- Clarifications/Advice
  - You're only required to make it work with old roman numerals, but for an extra challenge adapt it to work with the modern ones too!

#### birthday_helper.rb

- Requirements
  - Write a program to read in names and birth dates from a text file. It should then ask you for a name. You type one in, and it tells you when that person’s next birthday will be (and, for the truly adventurous, how old they will be). The input file should look something like this:

    ~~~
    Christopher Alexander, Oct 4, 1936
    Christopher Lambert, Mar 29, 1957
    Christopher Lee, May 27, 1922
    Christopher Lloyd, Oct 22, 1938
    Christopher Pine, Aug 3, 1976
    Christopher Plummer, Dec 13, 1927
    Christopher Walken, Mar 31, 1943
    The King of Spain, Jan 5, 1938
    ~~~

  - (That would be me Christopher Pine, not the young James T. Kirk; I don’t care when he was born.) You’ll probably want to break each line up and put it in a hash, using the name as your key and the date as your value. In other words: `birth_dates['The King of Spain'] = 'Jan 5, 1938'`
- Clarifications/Advice
  - There's three parts to this:
    1. First, read in the file and turn it into a hash
    2. Then, ask for user input for what name they’re looking for
    3. If it was in the file, return the birthday, if not let the user know you don’t have that one
  - To make your life easier, we've provided the input file under `ch12` as `birthday_helper_intput.txt`.
    - You can feel free to add more entries to it, but they must have the same format.
  - Main thing here is that I want you to use the same format he used for the file you’d read it (it’ll make grading a lot easier)
