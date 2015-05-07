require 'sinatra/base'
require_relative 'lib/calc'
require_relative 'lib/input'

class HappyOrSadCalculator < Sinatra::Base
	INPUT = Input.new
  CALC = Calc.new

  get '/' do
    erb :index
  end

  post '/outcome' do
  	@text = params["userinput"]
  	@outcome = CALC.mood_of(INPUT.standardize(@text))
  	erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
