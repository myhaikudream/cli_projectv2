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

    #this pulls the information from the create character method in the API class 
    def display_character_info(input)
        api = Api.new(query)
        api.create_character     
    end

    #this method uses that information to give the information titles & makes it look a little more neat. 
    def display_character_blah
        
        puts "Name:   #{name}"
        puts "Bio:   #{description}"
        end

     
end