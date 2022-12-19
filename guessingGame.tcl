#!/usr/bin/tclsh

# A simple number game guessing in TCL

proc print_welcome {} {
	puts "---Number Guessing game---"
	puts "How to play : input a number from 1 ~ 100, if you guess the random number correct you win"
	puts "\n\n"
	puts "---Begin game---"
	puts "\n"
}

proc generate_random_num {num} {
	return [expr int(rand() * $num)]
}

proc begin_game {answer} {
	while {1} {
		puts "Enter a value : "
		gets stdin userInput

		if {$userInput == $answer} {
			puts "Jawaban anda benar"
			return "win"
		} elseif {$userInput < $answer} {
			puts "Too Low !!!\n"
		} elseif {$userInput > $answer} {
			puts "Too high !!!\n"
		}
		
	}

	
}

proc getMaxNum {} {
	puts "Input a number limit : "
	gets stdin limit
	return $limit
}

proc main {} {
	print_welcome
	set answer [generate_random_num  [getMaxNum]]
	set winning_condition [begin_game $answer]

	if {$winning_condition == "win"} {
		puts "Congrats You win !!!"
		puts "Press any key to quit : "
		gets stdin a 
		return "WIN_QUIT_SUCESS"
	} 
}
main
