# hangman
A simple implementation of hangman game as proof in Noir

# how to play
Currently, we have provided the minimalistic circuit logic in Noir to prove/verify that the guessed word matches the given word. 
The program accepts 2 inputs: the guess, comprised of 16 letters which can't repeat, and an answer which is a 10 letter word. Words are represented as an array of u8 numbers where 1 represents A and 26 represents Z. This is a form of blind hangman where the player does not get to see the outcome until the end of the trial. He/She has 6 wrong guesses available before the man gets 'hanged'. The player can provide the 16 letters in a sequence they feel is most likely to avoid those 6 wrong guesses before the word can be guessed. It is left to the devs how they want to supply these 2 arguments to the player.
