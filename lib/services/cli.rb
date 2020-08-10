class CLI

    attr_accessor :url, :input  

    def initialize(url)
        @url = url
        @input = ""

    end

    def start    
    welcome
    film_information = API.new(self.url)  
    film_information.get_films  
    menu  
    end

    def welcome
        puts ""
        puts ""
        puts "Welcome to Studio Ghibli's Film Finder "
        puts ""
        puts ""
        end

    def menu
        list_films
        puts ""
        film_list_prompt
        puts ""
        puts "Please type 'list' to see the list of films again"
        puts "Or exit, to exit program"
        puts ""
        get_input

        if input == 'exit'
            goodbye
        else input == 'list'
            list_films
            menu
        end
    end

    def get_input 
        self.input = gets.chomp
    end

    def film_list_prompt
        puts "Enter the number of the Film you wish to have more details on"
        puts ""
        get_input
        validate_input

        index = input.to_i - 1
        film = Film.all[index]
        film_data(film)
    end

    def validate_input
        while !(input.to_i >= 1 && input.to_i <= Film.all.length) do
        puts ""
        list_films
        puts ""
        puts "Invalid entry, please choose a number from the list."
        puts ""
        get_input
        puts ""
    end
end

    def list_films
        
        Film.all.each.with_index(1) do |film, index|
        puts "#{index}. #{film.title}" 
    end

    def film_data(film)
            puts ""
            puts "#{film.title}, #{film.release_date}"
            puts ""
            puts "#{film.description}"
    end

    def goodbye
        puts ""
        puts "Until next time, A Bientot"
        end

        
    end

    end
    


