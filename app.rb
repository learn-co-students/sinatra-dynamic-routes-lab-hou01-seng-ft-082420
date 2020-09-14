require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_array = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    "#{@word_array.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    if params[:operation] == 'add'
      (@number1 + @number2).to_s
    elsif params[:operation] == 'subtract'
      (@number1 - @number2).to_s
    elsif params[:operation] == 'multiply'
      (@number1 * @number2).to_s
    elsif params[:operation] == 'divide'
      (@number1 / @number2).to_s
    else
      "Cannot perform operation"
    end
  
  end

end