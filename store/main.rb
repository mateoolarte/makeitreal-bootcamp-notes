require "sinatra"

# get "/" do
#   @register = request.cookies["registrado"]
#   erb :index
# end
#
# get "/login" do
#   @register = request.cookies["registrado"]
#   erb :login
# end
#
# post "/login" do
#   username = params[:username]
#   email = params[:email]
#
#   if username == "mateo" || email == "mateo@prueba.com"
#     response.set_cookie("registrado", email)
#     redirect "/"
#   else
#     redirect "/login"
#   end
# end

enable :sessions

products = [
  { name: "audifonos", price: 150, currency: "USD" },
  { name: "book", price: 250, currency: "USD" },
  { name: "mouse", price: 350, currency: "USD" },
  { name: "tv", price: 550, currency: "COP" },
]

get "/" do
  # @visited = request.cookies.fetch("visited", 0).to_i
  # response.set_cookie "visited", @visited + 1
  @products = products
  erb :index
end

get "/products/new" do
  @visited = request.cookies.fetch("visited", 0).to_i
  response.set_cookie "visited", @visited + 1
  erb :productsnew
end

get "/visited" do
  @visited = request.cookies.fetch("visited", 0).to_i
  response.set_cookie "visited", @visited + 1
  erb :visited
end

post "/products/new" do
  name = params[:product][:name]
  price = params[:product][:price].to_i
  currency = params[:product][:currency]
  products.push({ name: name, price: price, currency: currency })
  redirect "/"
end

delete "/products/:name" do
  product = products.find { |product| product[:name] == params[:name] }
  return redirect "/" unless product

  products.delete product
  redirect "/"
end

get "/products/:name" do
  name = params[:name]
  @product = products.find { |product| product[:name] == name }
  halt 404, "Product not found" unless @product
  erb :product
end

get "/cart" do
  product = params[:product]
  cart = sessions[:cart]

  if cart
    cart << product
  else
    cart = [ product ]
    sessions[:cart] = cart
  end
  redirect "/"
end
