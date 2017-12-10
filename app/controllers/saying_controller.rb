class SayingController < ApplicationController

get '/saying/create_saying' do
  erb :'/sayings/create_saying', :layout => :"layout/internal"
end

post '/saying' do

  if params[:word][:add_word] == ""
    # || params[:add_word].include?(" ")
    # Add flash "Can not be empty"
    erb :'/sayings/create_saying', :layout => :"layout/internal"
  else
    # Add logic to check if word in system matches eithe upcase or downcase
    if Saying.find_by(word: params[:word][:add_word])
        @random_word = Saying.find_by(word: params[:word][:add_word])
      erb :'dice/dice_index', :layout => :"layout/internal"
      # flash this Dice knows Word
    else

      s = Saying.new
      s[:word] = params[:word][:add_word]
      s.save
      @random_word=s
      erb :'dice/dice_index', :layout => :"layout/internal"
    end
  end

end



end
