require 'pry'

class Api
        
    attr_accessor :query
    
    def initialize
        @query = query
    end


    def create_character (input)
        character = get_attributes(input)  
        #binding.pry
        Characters.new(character["data"]["results"][0]["name"],character["data"]["results"][0]["description"])
       
    end

    def get_attributes (query)
       
        case query 
        when "1"
             url = "https://gateway.marvel.com/v1/public/characters?name=Thor&ts=1&apikey=8caa4ab582303971d8bf3c9b9dc561c7&hash=914de9aa1ee8c5d93a7e51f3b28e24ca"
        when "2"
              url = "https://gateway.marvel.com/v1/public/characters?name=wolverine&ts=1&apikey=8caa4ab582303971d8bf3c9b9dc561c7&hash=914de9aa1ee8c5d93a7e51f3b28e24ca"
        when "3"
                 url = "https://gateway.marvel.com/v1/public/characters?name=iron%20man&ts=1&apikey=8caa4ab582303971d8bf3c9b9dc561c7&hash=914de9aa1ee8c5d93a7e51f3b28e24ca"
        when "4"
                     url = "https://gateway.marvel.com/v1/public/characters?name=hulk&ts=1&apikey=8caa4ab582303971d8bf3c9b9dc561c7&hash=914de9aa1ee8c5d93a7e51f3b28e24ca"
        when "5"
                     url = "https://gateway.marvel.com/v1/public/characters?name=silver%20surfer&ts=1&apikey=8caa4ab582303971d8bf3c9b9dc561c7&hash=914de9aa1ee8c5d93a7e51f3b28e24ca"          
        
        end
        #binding.pry
        puts url 
        uri = URI(url)
        response = Net::HTTP.get(uri)
        JSON.parse(response)
         response = HTTParty.get(url)
         response.parsed_response
    
    end
end