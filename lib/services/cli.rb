class CLI

  attr_accessor :url

  def initialize (url)
    @url =  url
  end

  def call
  Film.all[number]

  Film.all.each or Film.all.map

  def start
    puts "Welcome to Studio Ghibli Film Finder"
    films = API.new(self.url)
    films.get_films
    
  end

  def list_films
    Film.all.each.with.index(1) do |film, index|
      puts "#{index}, #{film.name}"
  end 
end


end
