class Cli   

     
    def initialize
     self.start
       
    end

    def start
        puts "Welcome to Marvel Characters."
        self.list_of_characters
        self.get_character_choice
               
    end
 
    def list_of_characters
         name = ["Thor", "Wolverine", "Iron Man", "Hulk", "Silver Surfer"]
        name.each_with_index do |name, index| 
             puts  "#{index +1}. #{name}" 
    end
 
    def display_character_info(input)
         #binding.pry 
         api = Api.new
         character = api.create_character (input)
         character.display_character_blah
    end
     
    def get_character_choice
         puts "Please choose 1-5 to learn more about that character."
         input = gets.chomp
             if input.to_i.between?(1,5)
                 display_character_info(input) 
                 start 
             elsif input == "Let it go"
                 exit_prg  
             end 
         end 
    end  
 
 
    def exit_prg 
              puts "Your brain must hurt from learning all of that information!"
              exit 
    end
end