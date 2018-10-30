require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @name = params[:name].reverse
  "#{@name}"
end

get '/square/:number' do
  @number = params[:number].to_i * params[:number].to_i
  "#{@number}"
end

get  '/say/:number/:phrase' do
  @number = params[:number].to_i
  @phrase = params[:phrase]
  @string = "" 

  @number.times do 
    @string += @phrase
  end

 @string
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @string = params.values.join(" ")
  "#{@string}."
end

get '/:operation/:number1/:number2' do
   @num1 = params[:number1].to_i
   @num2 = params[:number2].to_i
  
  
  @answer = case params[:operation]
     when "add"
       @num1 + @num2
     when "subtract"
       @num1 - @num2
     when "multiply"
       @num1 * @num2
     when "divide"
       @num1 / @num2
    end
     "#{@answer}"
  end

end