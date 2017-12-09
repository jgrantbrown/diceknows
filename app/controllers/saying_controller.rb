class SayingController < ApplicationController

get '/saying/create_saying' do
  erb :'/sayings/create_saying'
end

post '/saying' do
binding.pry
  if params[:add_word] == ""
    # || params[:add_word].include?(" ")
    # Add flash "Can not be empty"
    erb :'/sayings/create_saying'
  else
    # Add logic to check if word in system matches eithe upcase or downcase
    if Saying.find_by(word: params[:add_word])
      # flash this Dice knows Word
    else
      Saying.new(params[:add_word])
      erb :'dice/dice_index'
    end
  end

end



end
