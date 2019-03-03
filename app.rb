require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance

  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = @game.player_1.name
    erb :play
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    @player_choice = @game.player_action(params[:action])
    @computer_choice = Game.computer_action
    if @player_choice == @computer_choice
      erb :drew
    elsif @computer_choice == Game.key_beats_value(@player_choice)
      erb :win
    else
      erb :lose
    end
  end

run! if app_file == $0
end
#maybe create a game class and put @defeat in there.
#use the class instance method to persist the 'rules'
#post /game does all the logic use in the sinatra book RPS
#if !@throws.include?(player_throw)
#  halt 403, "You must throw one of the following: #{@throws}"
#end
