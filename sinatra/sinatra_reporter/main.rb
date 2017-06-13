lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "sinatra"
require "sinatra/reloader" if development?
require "makeitreal"

users = [
  Makeitreal::Models::User.new("m@prueb.com", "Mateo", "admin"),
  Makeitreal::Models::User.new("d@prueb.com", "David", "eng"),
  Makeitreal::Models::User.new("s@prueb.com", "Simon", "user"),
]

get "/" do
  erb :index
end

get "/generate_report" do
  content = Makeitreal::Reporters::Users::Csv.generate users
  content_type "application/csv"
  attachment "user_report2.csv"
  content
end

get "/create_report" do
  file = Makeitreal::Reporters::Users::Csv.report users
  send_file file.path, disposition: :attachment, type: "application/csv"
end

get "/upload_file" do
  erb :upload_file
end

post "/upload_file" do
  name = params[:name].downcase
  tempfile = params[:file][:tempfile]
  filename = params[:file][:filename].downcase
  upload_path = File.join __dir__, "uploads", "#{name}_#{filename}"
  File.open upload_path, "wb" do |file|
    file.write tempfile.read
  end
  puts upload_path
end
