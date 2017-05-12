get "/" do
  erb :index
end

get "/display" do
  if params["name"] == "Priya"
    erb :priya 
  elsif params["name"] == "Sonia"
    erb :sonia
  elsif params["name"] == "Both"
    erb :both
  else redirect "/" 
  end
end

post "/add" do
  append_csv(params)
  redirect "/display?name=" +params["name"]
end

post "/verify" do
  binding.pry
  if params["name"] == "ben" && params["password"] == "ben"
    redirect "/admin"
  else
    redirect "/"
  end
end

get "/admin" do
  erb :admin
end
  