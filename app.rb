require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @the_name = params[:name]
    "#{@the_name.gsub("%20"," ").reverse}"
  end
  get '/square/:number' do
    @the_number = params[:number].to_i
    "#{@the_number ** 2}"
  end
  get '/say/:number/:phrase' do
    @the_number = params[:number]
    @the_phrase = params[:phrase]
    "#{@the_phrase.gsub("%20"," ") * @the_number.to_i}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1 + @word_2 + @word_3 + @word_4 + @word_5}"
  end
  get '/:operation/:number1/:number2' do
    
  end
end
