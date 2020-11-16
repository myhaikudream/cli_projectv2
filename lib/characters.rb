class Characters
    attr_accessor :name, :description

    @@all = []

 
    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end


    def get_characters
        name = ["Thor", "Wolverine", "Iron Man", "Hulk", "Silver Surfer"]
        name.each_with_index do |name, index| 
             puts  "#{index +1}. #{name}"
     end    

     def display_character_info(input)
        api = Api.new(query)
        api.create_character     
    end

     def display_character_blah
        
        puts "Name:   #{character.name}"
        puts "Bio:   #{character.description}"
        gets 
    
    end
end
end 
