require "sinatra"

# get '/' do
#   @producto = "Hola soy una variable"
#   erb :index
# end
#
# get '/holamundo' do
#   puts params
#   "Hola mundo"
# end
#
# post '/orders' do
# end
#
# get '/orders/:order_id' do
#   puts "ORDER ID=#{params[:order_id]}"
#   puts "SORT BY=#{params[:sort]}"
# end

# get "/customers" do
#   @customers = [
#     { nombre: "Mateo", edad: 20 },
#     { nombre: "David", edad: 20 },
#     { nombre: "Jaime", edad: 23 }
#   ]
#   @cliente = params[:nombre]
#   @nombre = @customers.find {|customer| customer[:nombre] == @cliente}
#   erb :customers
# end

get "/" do
  erb :index
end

get "/login" do
  erb :login
end

post "/login" do
  email = params.fetch("email", "").strip
  password = params.fetch("password", "").strip

  if email.empty? || password.empty?
    @errors = [{ message: "Email and password can't be empty" }]
    return error(400, erb(:login))
  end

  unless email == "mateo@prueba.com" && password == "123456"
    @errors = [{ message: "Email and password does not match" }]
    return error(401, erb(:login))
  end

  redirect "user_account/#{params[:email]}"
end

get "/user_account/:email" do
  @email = params[:email]
  erb :account
end
