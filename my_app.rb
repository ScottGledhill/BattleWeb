require 'sinatra/base'
require './lib/player'
require './lib/game'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/player1_attack' do
    @game = $game
    $game.attack(@game.player2)
    $game.switch_turn
    erb :player1_attack
  end

  get '/player2_attack' do
    @game = $game
    $game.attack(@game.player1)
    $game.switch_turn
    erb :player2_attack
  end

  run! if app_file == $0
end
