require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    "#{@num.to_s}"
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1] params[:word2] params[:word3] params[:word4] params[:word5]}".
  end

end #ends Class app
