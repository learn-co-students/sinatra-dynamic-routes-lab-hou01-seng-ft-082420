require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @rev_name = params[:name].reverse 
    "#{@rev_name}"
  end

  get '/square/:number' do
    @sqr_num = params[:number].to_i * params[:number].to_i
    "#{@sqr_num}"
  end 

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @result = params[:phrase] * @num
    #binding.pry
    "#{@result}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @arr = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(' ')
    "#{@arr}."
  end 

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
        @result = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @result = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @result = params[:number1].to_i / params[:number2].to_i
    end 
      "#{@result}"
  end 

end