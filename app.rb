require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do 
    erb :newteam
  end 
  
  post '/team' do 
    @team = Team.new 
    @team.name = params[:name]
    @team.coach = params[:coach]
    @team.pg = params[:pg]
    @team.sg = params[:sg]
    @team.pf = params[:pf]
    @team.sf = params[:sf]
    @team.c = params[:c]
    @team.save
    erb :team 
  end 

end
