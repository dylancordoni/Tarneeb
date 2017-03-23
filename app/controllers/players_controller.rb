get '/players/new' do
  erb :'players/new'
end

post '/players' do
  @player = User.new(params[:user])
  if @player.save
    login(@player)
    redirect '/'
  else
    @errors = @player.errors.full_messages
    erb :'players/new'
  end
end
