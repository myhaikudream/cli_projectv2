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

    def display_character_info(input)
        api = Api.new(query)
        api.create_character     
    end

    
    def display_character_blah
        
        puts "Name:   #{name}"
        puts "Bio:   #{description}"
        end

     
end