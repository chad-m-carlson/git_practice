require "colorize"

def puts_git(cmd)
  puts `git #{cmd} -h`
  #BACKTICKS ALLOW YOU TO RUN COMMANDS INSIDE THE TERMINAL
end

def menu
  puts "MAIN MENU".colorize(:red)
  puts "1: Enter git Command"
  puts "2: Exit"
  print "> "
  choice = gets.to_i
  print `clear` #`clear` will clear the terminal
  case choice
  when 1
    puts "Enter git command"
    print "> "
    puts_git(gets.strip)
    menu
  when 2
    puts "Thanks for using our program!"
    exit
  else
    puts "invalid input"
    sleep(2) #WAITS () SECONDS AND THEN WILL PERFORM FUNCTION BELOW
    print `clear`
    menu
  end
end

menu
