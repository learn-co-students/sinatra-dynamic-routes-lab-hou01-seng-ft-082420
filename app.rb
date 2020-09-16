require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "Your name reversed is #{@name.reverse}!"
  end

  get "/square/:number" do 
    @num = params[:number].to_i
    "Your number squared is #{@num**2}!"
  end 

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @answer = ""
    @num.times do
      @answer += @phrase
    end
    "#{@answer}" 
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if 'add' == @operation
      "#{@number1.to_i + @number2.to_i}"
    elsif 'subtract' == @operation
      "#{@number1.to_i - @number2.to_i}"
    elsif 'multiply' == @operation
      "#{@number1.to_i * @number2.to_i}"
    else
      "#{@number1.to_i / @number2.to_i}"
    end 
  end
end 