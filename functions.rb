def append_csv(content)
  CSV.open(content["name"] + ".csv", "a") do |row|
    row<< [content["date"], content["category"], content["outflow"], content["inflow"]]
    
  end
end

