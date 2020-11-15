class Character
    attr_accessor :name, :description

    @@all = []

 
    def initialize(name,  description)
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

    
    def self.display_character(index)
        character = self.all[index]       
        puts "#{character.name}"
        puts "#{character.description}"
    end
end