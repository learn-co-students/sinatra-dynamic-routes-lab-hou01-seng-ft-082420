require "pry"
require_relative "config/environment"

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number]
    (@number.to_i * @number.to_i).to_s
  end

  get "/say/:number/:phrase" do
    answer = ""
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    case @operation
    when "add"
      answer = ((params[:number1].to_i) + (params[:number2].to_i))
    when "multiply"
      answer = ((params[:number1].to_i) * (params[:number2].to_i))
    when "subtract"
      answer = ((params[:number1].to_i) - (params[:number2].to_i))
    when "divide"
      answer = ((params[:number1].to_i) / (params[:number2].to_i))
    end
    "#{answer.to_s}"
  end
end
