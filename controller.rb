require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/game.rb')

get '/' do
  erb(:home)
end

get '/game_rules' do
  erb(:game_rules)
end

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @game_result = game.rock()
  erb(:result)
end

# get'/game/:rock/:paper' do
#   game = Game.new(params[:rock], params[:paper])
#   return "#{game.paper()}"
# end

# get '/game/:rock/:paper' do
#   game = Game.new(params[:rock], params[:paper])
#   return "#{game.rock_paper()}"
# end
