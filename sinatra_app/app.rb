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

get "/customers" do
  @customers = [
    { nombre: "Mateo", edad: 20 },
    { nombre: "David", edad: 20 },
    { nombre: "Jaime", edad: 23 }
  ]
  @cliente = params[:nombre]
  @nombre = @customers.find {|customer| customer[:nombre] == @cliente}
  erb :customers
end
