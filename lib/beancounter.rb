require 'sinatra/base'

class Beancounter < Sinatra::Base
  set :views, Proc.new { File.join(root, "..","views") }

  get '/' do
    erb :index
  end

  post '/finances' do
    @amount = params[:amount]
    erb :finances
  end

  get '/finances' do
    erb :finances
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
