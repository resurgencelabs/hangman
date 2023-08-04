mod hangman;
use dep::std;

fn main(guess : [u8; 16], answer : [u8; 10]) -> pub bool{
    let res = hangman::didSolve(guess, answer);
    let wrong_input = res[2];
    let solved = res[0];
    let chances_exceeded = res[1];
    
    // We check for three things to decide if the answer is correct:
    // 1. all letters of the answer must have been guessed
    // 2. the prompt guess should not have repeats of any letter
    // 3. no more than 5 mistakes while guessing before the man gets 'hanged'
    if (solved < 10) | (wrong_input == 1) | (chances_exceeded > 6) {
        false
    }
    else {
        true
    }
    
    

    
      
}

#[test]
fn test_main() {
    let answer: [u8;10] = [16, 18, 15, 2, 1, 20, 9, 22, 5, 19];
    let guess: [u8;16] = [1, 5, 15, 19, 20, 18, 9, 22, 8, 2, 16, 7, 12, 11, 21, 26];
    let res = hangman::didSolve(guess, answer);
    let wrong_input = res[2];
    let solved = res[0];
    let chances_exceeded = res[1];
    let mut fin = true;
    // We check for three things to decide if the answer is correct:
    // 1. all letters of the answer must have been guessed
    // 2. the prompt guess should not have repeats of any letter
    // 3. no more than 5 mistakes while guessing before the man gets 'hanged'
    if (solved < 10) | (wrong_input == 1) | (chances_exceeded > 6) {
        fin = false;
    }
    else {
        fin = true;
    }
    assert (fin);
    
}
