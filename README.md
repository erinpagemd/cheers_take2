# cheers_take2

## Instructions

How do we start a new program?

Let’s try it by building:

A small program that takes input and does something with it.

## Specifications, for non-interactive version of cheers

### Help Usage

Run the program by running ./cheers

The program will print out:

> I'd cheer for you, if only I knew who you were :(

> Try again with ./cheers [Name] [MM/DD Birthday]


### Regular Usage

Start the program by running

>./cheers.rb Abby 08/25

The first argument is the user's name. The second argument is the user's birthday.

The program puts out a cheer in the following format:

>Give me an... A

>Give me a... B

>Give me a... B

>Give me a... Y

>ABBY’s just GRAND!

* Follow the proper grammatical rules for "a" and "an". The rules is based on whether the spelling of the letter would begin with a vowel sound.
* Ignore all special characters (i.e. non-word characters) when printing the cheer (e.g. "Give me a....")
* Print the user's name out as it was originally input for the "just GRAND" line

If there is no input, the program would instead print out:

> I'd cheer for you, if only I knew who you were :-(

> Try again with './cheers [Name] [MM/DD Birthday]'

After printing out the user's cheer, the program then outputs the number of days until the user's birthday in the following format:

> Awesome!  Your birthday is in 45 days! Happy Birthday in advance!

If there was no input for birthday, the program instead says:

> I would wish you Happy Birthday, if I knew when it was!

If the input for birthday wasn't parseable, the program would instead say:

> I couldn't understand that. Could you give that to me in mm/dd format?

## Specifications, for interactive version of cheers

Start the program by running

> ./cheers

The program should prompt for a name.

The user types in name, for example:

> Abby

The program puts out a cheer in the following format:

> Give me an... A

> Give me a... B

> Give me a... B

> Give me a... Y

> ABBY’s just GRAND!

* Follow the proper grammatical rules for "a" and "an". The rules is based on whether the spelling of the letter would begin with a vowel sound.
* Ignore all special characters (i.e. non-word characters) when printing the cheer (e.g. "Give me a....")
* Print the user's name out as it was originally input for the "just GRAND" line
* If there is no input, ask again until valid input is provided

After printing out the user's cheer, the program asks:

>Hey, Abby, what's your birthday? (mm/dd)

The user types in their birthdate

> 08/25

* If there was no input, asks again until valid input is provided
* If there was input that couldn't be parsed, the program tries again, but with the prompt:

> I couldn't understand that. Could you give that to me in mm/dd format?

The program then outputs the number of days until the user's birthday in the following format:

> Awesome!  Your birthday is in 45 days! Happy Birthday in advance!
