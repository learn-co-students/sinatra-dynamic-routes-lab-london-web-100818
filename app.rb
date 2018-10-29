require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number * number}"
  end

  get '/say/:number/:phrase' do
    string = ""
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times do 
      string += "#{phrase}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ''
    params.each do |k,v|
      string += "#{v} "
    end
    string = string.strip
    string += '.'
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if operation == 'add'
      string = num1 + num2
    elsif operation == 'subtract'
      string = num1 - num2
    elsif operation == 'multiply'
      string = num1 * num2
    elsif operation == 'divide'
      string = num1 / num2
    else
      'Nope'
    end
    string.to_s
  end


end