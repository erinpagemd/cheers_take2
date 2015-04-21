# cheers_take2

## Instructions

How do we start a new program?

Let’s try it by building:

A small program that takes input and does something with it.



## Specifications

Start the program by running

>./cheers.rb

The program should prompt for name.

The user types in name, for example:

>Abby

The program puts out a cheer in the following format:

>Give me an... A
>Give me a... B
>Give me a... B
>Give me a... Y
>ABBY’s just GRAND!

* Follow the proper grammatical rules for a and an. The rules is based on whether the spelling of the letter would begin with a vowel sound.
* Ignore all special characters (i.e. non-word characters) when printing the cheer (e.g. "Give me a....")
* Print the user's name out as it was originally input for the "just GRAND" line
* If there is no input, ask again until valid input is provided

After printing out the user's cheer, the program asks:

>Hey, Abby, what's your birthday? (mm/dd)

The user types in their birthdate

>08/25

* If there was no input, asks again until valid input is provided
* If there was input that couldn't be parsed, the program tries again, but with the prompt:

>I couldn't understand that. Could you give that to me in mm/dd format?

The program then outputs the number of days until the user's birthday in the following format:

Awesome!  Your birthday is in 45 days! Happy Birthday in advance!
