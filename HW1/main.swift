func start(){
    let choice_gamer = Int(readLine()!)
    if choice_gamer == 0 || choice_gamer == 1 || choice_gamer == 2 {
        enum GamerChoice: Int {
            case rock = 0
            case paper = 1
            case scissors = 2
        }
        let label_gamer = "You chose"
        let emojis = ["✊", "✋", "✌️"]
        switch choice_gamer {
            case 0:
                print("\(label_gamer)" + emojis[0]) // Rock
            case 1:
                print("\(label_gamer)" + emojis[1]) // Paper
            default:
                print("\(label_gamer)" + emojis[2]) // Scissors
            }
            enum Computer_choice: Int {
                case rock = 0
                case paper = 1
                case scissors = 2
            }
            let label_computer = "Computer chose"
            let computer_choice = Int.random(in: 0...2)
            switch computer_choice {
            case 0:
                print("\(label_computer)" + emojis[0])
            case 1:
                print("\(label_computer)" + emojis[1])
            default:
                print("\(label_computer)" + emojis[2])
            }
            if choice_gamer == 0 && computer_choice == 1 {
                print("Computer win")
            } else if choice_gamer == 0 && computer_choice == 2 {
                print("You win")
            }  else if choice_gamer == 1 && computer_choice == 2 {
                print("Computer win")
            } else if choice_gamer == 1 && computer_choice == 0 {
                print("You win")
            } else if choice_gamer == 2 && computer_choice == 0 {
                print("Computer win")
            } else if choice_gamer == 2 && computer_choice == 1 {
                print("You win")
            } else {
                print("It's a draw")
            }
        print("Would you like to play again? Y or N")
        let restart = readLine()
        if restart == "Y" || restart == "y" {
            print("Please make your choice. Type 0 for Rock, 1 for Paper and 2 for Scissors")
            start()
        }
        else {
            print("Thank you! Bye bye!")
        }
    } else {
        print("Invalid number! Try again!")
        start()
    }
}

print("Hello, My little friend! Welcome to the ROCK PAPER SCISSORS Game! What do you want ot choose? Type 0 for Rock, 1 for Paper and 2 for Scissors")
start()
