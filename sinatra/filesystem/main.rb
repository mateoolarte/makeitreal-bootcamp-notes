require "sinatra"
require "sinatra/reloader" if development?

enable :sessions

users = [
  { email: "mateo@admin.com", password: "123456", permission: "admin" },
  { email: "mateo@temp.com", password: "123456", permission: "temp" }
]

get "/" do
  erb :index
end

post "/login" do
  session[:login_try] = session[:login_try].to_i + 1 || 1

  if session[:login_try] >= 3 || request.cookies["try_error"]
    unless request.cookies["try_error"]
      response.set_cookie(:try_error, :value => "bar", expires => Time.now + 60)
    end
    @errors = [{ message: "Exceded limit try login" }]
    return redirect "/"
  end

  email = params.fetch("email", "").strip
  password = params.fetch("password", "").strip
  session[:login_try]

  if email.empty? || password.empty?
    @errors = [{ message: "Email and password can't be empty" }]
    return error 400, erb(:index)
  end

  user = users.find { |user| email == user[:email] }

  unless user
    @errors = [{ message: "Email and password does not match" }]
    return error 401, erb(:index)
  end

  session[:current_customer] = { email: user[:email] }

  redirect "/files"
end

get "/logout" do
  session.clear
  redirect "/"
end

get "/files" do
  return redirect "/" unless session[:current_customer]

  entries = Dir.entries "."

  @directories = entries.select { |entry| File.directory? entry }
  @files = entries.select { |entry| File.file? entry }
  erb :files
end

get "/files/:name" do
  # File.read params[:name]
  send_file params[:name], disposition: :inline
end

get "/download/:name" do
  email = session[:current_customer][:email]
  user = users.find { |user| user[:email] == email }

  unless user[:permission] == "admin"
    return redirect "/files"
  end
  send_file params[:name], disposition: :attachment
end
