#server.rb
require "sinatra"
require_relative "./lib/calculator.rb"
require 'pry'

get "/" do
  erb :index
end
get "/add" do
  erb :add
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new.calculator_add(first,second)

  #redirect to("/add")
end

get "/sub" do
  erb :sub
end

post "/calculate_sub" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new.calculator_sub(first,second)

  #redirect to("/add")
end

get "/mul" do
  erb :mul
end

post "/calculate_mul" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  @result = Calculator.new.calculator_mul(first,second)

  #redirect to("/add")
end

get "/div" do
  erb :div
end

post "/calculate_div" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new.calculator_div(first,second)

  #redirect to("/add")
end

post "/" do

  if !params.has_key?("storage")
    @first = params[:first_number].to_f
    @second = params[:second_number].to_f
    @operation = params[:operation]
    @result = Calculator.new.calculate(@first,@second,@operation)
    @show_result = "The #{@operation} of #{@first} and #{@second} is #{@result}"
  else
    @first_number = params[:storage]

  end
  erb :index

end  


