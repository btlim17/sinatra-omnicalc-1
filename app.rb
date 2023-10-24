require "sinatra"
require "sinatra/reloader"

#Home page
get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

#Square-new
get("/square/new") do
  erb(:square_new)

end

get("/square/results") do
  number=params.fetch("square_number").to_f
  squared_num = number ** 2
  pp number
  pp squared_num
end


#Square-root-new
get("/square_root/new") do



end

#payment-new
get("/payment/new") do



end

#random-new
get("/random/new") do


end

#results
