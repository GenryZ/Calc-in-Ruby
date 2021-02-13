# Lets create a simple calculator app together, it should have a get method for localhost:4567/calculator that displays two forms
# the first form should post (note that post is one of those http methods) to localhost:4567/add, and have two fields named "num1" and "num2"
# the second form should post to localhost:4567/subtract with the same args
# the page that they go to should display the result, and have a link to get back to calculator

require 'rubygems'
require 'sinatra'

get '/calculator' do
	erb :calculator
end
get '/add' do
	erb :add
end

post '/add' do
  "#{params[:num1]} plus #{params[:num2]} = #{params[:num1].to_i + params[:num2].to_i}
  <a href='/calculator'>Back</a>"
end

post '/subtract' do
  "#{params[:num1]} minus #{params[:num2]} = #{params[:num1].to_i - params[:num2].to_i}
  <a href='/calculator'>Back</a>"
end

