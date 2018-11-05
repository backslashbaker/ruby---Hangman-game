
guesses = []
wrong = []
lives = 5

word = ["H", "E", "L", "L", "O"]


puts "make a guess"
print "> "
guess = gets.chomp.upcase

# until guesses == word

  while word.include?(guess) == true
    break if guesses == word
    puts "correct"
    guesses << guess
    puts guesses
    print "> "
    guess = gets.chomp.upcase


  while word.include?(guess) == false
      wrong << guess
      puts wrong
      lives = lives - 1
      break if lives == 0
      puts lives
      puts "Incorrect, try again"
      print "> "
      guess = gets.chomp.upcase
  end
  end

if guesses == word
  puts "WINNER!"
else lives == 0
  puts "GAME OVER!"
end


def start
  puts "Welcome to Command line hangman"
end
