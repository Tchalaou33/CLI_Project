class API

    attr_accessor :url
    
    def initialize(url)
        @url = url
    end
    def get_films
        base_url = HTTParty.get(self.url)

        base_url.map do |film|
            Film.new(film["title"], film["description"], film["release_date"])
        end
    end
end 
