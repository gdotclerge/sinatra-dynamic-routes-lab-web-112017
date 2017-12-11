require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    rev = params[:name].reverse
    "#{rev}"
  end

  get "/square/:number" do
    num = params[:number].to_i
    sum = num * num
    "#{sum}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase * num}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]

    case op
    when "add"
      "#{num1 + num2}"
    when "multiply"
      "#{num1 * num2}"
    when "subtract"
      "#{num1 - num2}"
    when "divide"
      "#{num1 / num2}"
    end
  end


end
