/* This program generates a random number and
   lets the user guess it

   Sean McLeod
   2021/04/27
*/

let high:Int = 6
let low:Int = 1
var numberOfTries:Int = 1

// generate random number
let randomNumber = Int.random(in: low..<high + 1)

while true {
    // input
    print("Guess a number between 1 to 6: ")
    let guessString = readLine()

    if let guessNumber = Int(guessString!) {
        if guessNumber >= low && guessNumber <= high {
            if guessNumber == randomNumber {
                // output
                print("You are correct!")
                print("It took you \(numberOfTries) tries")
                break;
            } else {
                print("guess again")
            }
        } else {
            print("This isn't between 1 to 6. This won't count")
            /* when the user enters in a value that is not an
            option, it doesn't count as an attempt */
            numberOfTries -= 1
        }
    } else {
        print("This is not an integer")
        break;
    }
    // keep track of the number of tries
    numberOfTries += 1
}

