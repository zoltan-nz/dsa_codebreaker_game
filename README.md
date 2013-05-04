# DsaCodebreakerGame

## Installation

    $ gem install dsa_codebreaker_game

#A variation on the mastermind game

##The Star Jam Challenge

###STAGE 1: Build it as per spec below with text based display
>Build a game of code breaker

The game starts by choosing the code patch which is a sequence of four colours from the following available colours red(R), orange (O), yellow (Y), green (G), blue (B), Indigo (I), and violet (V). The code patch is not displayed to the user only 4 lines are displayed ( _ _ _ _ ) and lives = 8.

The user enters a string of four characters which is their guess at the sequence of 4 letters choosen by the computer.

The user input is compared to the code patch and the following feedback is provided:

- If the two code patches match, the game says YOU WIN, do you want to play again (Y/N)?

- If one or more colours between the two colour patches match, display the positions where the colours match.

- If the colour is correct but the position is wrong for one or more colours give the user a clue as to how many colours there are in the in the users patch that are not in the correct position.

- If the same colour is used twice in the users patch and twice in the computers patch but the positions are wrong the clue will have a value of 2.

- If the colour patch has not been guessed then a life is lost and the user is asked : Enter a sequence a 4 character sequence from ROYGBIV or 0 to exit:

- If the number of lives is zero following this guess and the user has not won, then display. YOU LOOSE, do you want to play again (Y/N)?

- If instead of entering in a code sequence the user enters 0, or there are 0 in the code patch entered, exit the game (boss kill switch)

- If the same sequence is entered twice or more, inform the user that duplicate patches are not allowed and ask then to re enter a new code patch. No life is lose for a duplicate entry. Display the game as per the example screens on the next page. STAGE 2: If you have time before the deadline and stage 1 is built Create a graphical version of the game

© Copyright Digital Skills Academy 2011-12. All rights reserved.

Conor O’Reilly

##Inspirations:

- From my previous console app: https://github.com/szines/graphed
- Nice, OOP solution for console: https://github.com/PavelTyk/technical-test/blob/master/lib/editor.rb
- A simple master mind game. Gave idea how could separate objects.
https://gist.github.com/mariozig/4512157
