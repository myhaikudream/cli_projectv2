class Cli

    @@name = ["Thor", "Wolverine", "Iron Man", "Hulk", "Silver Surfer"]

   def initialize
    start
    list_of_characters
    get_character_choice
   end

     
    def start
       puts "Welcome to Marvel Characters."
              
    end

    def list_of_characters
        name = ["Thor", "Wolverine", "Iron Man", "Hulk", "Silver Surfer"]
       name.each_with_index do |name, index| 
            puts  "#{index +1}. #{name}" 
    end

        
    
    def get_character_choice
        puts "Please choose 1-5 to learn more about that character."
        input = gets.chomp
            if input.to_i.between?(1,5)
                display_character_info(input)                               
            elsif input == "exit"
                exit_prg  
            end
        end 
    end

   def display_character_info(input)
    query = self.class.name[input.to_i - 1]
    api = Api.new(query)
    api.create_character
               
    end

    def exit_prg 
             puts "Your brain must hurt from learning all of that information!"
    end
end
