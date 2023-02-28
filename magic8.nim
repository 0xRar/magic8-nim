import strutils
import std/random

# by 0xRar

proc main() =
  echo " ,-. \n((8))\n `-'"
  echo "This program has a magical ball!"
  echo "Full of answers, ask a question and you shall recieve the answer."
  echo "e.g: am i going to pass the test today?"
  echo "----------------------------------\nexit or Ctrl+C | to exit the program.\n"
  
  while true:
    echo "Question ~~>"

    let 
      q: string = readline(stdin)
    
      answers = @[
        "Yes", "It is certain", "It is decidedly so", "Without a doubt", # affirmative
        "Try again", "Ask again later", "Better not tell you now", # nonCommittal
        "No", "Don’t count on it", "Very doubtful", "My sources say no", # negative
      ]

    if q == "exit":
      echo "see you next time"
      quit(QuitSuccess)
          
    randomize()  
    let answer = sample(answers)
    echo "Answer ~~> ", answer, "\n"
    
main()
