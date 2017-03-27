require 'sinatra'

get '/' do
  @numbers = []
  50.times do |i|
    item = i + 1
    item.odd? ? phrase = "#{item} Soy Impar!" : phrase = "#{item} Soy Par!"
    @numbers << phrase
  end
  erb :index
end