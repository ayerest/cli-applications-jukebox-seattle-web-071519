# Add your code here

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs)
    puts "Please enter a song name or number:"
    user_choice = gets.chomp
    if songs.index(user_choice)
        puts "Playing #{user_choice}" 
    elsif user_choice.to_i >= 1 && user_choice.to_i <= songs.length
        puts "Playing #{songs[user_choice.to_i - 1]}"
    else
        puts "Invalid input, please try again"
    end
end

def list(songs)
    songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    while true do
        puts "Please enter a command:"
        user_input = gets.chomp
        case user_input
        when "exit"
            exit_jukebox
            break
        when "play"
            play(songs)
        when "help"
            help
        when "list"
            list(songs)
        else
            puts "Invalid command"
        end
    end
end