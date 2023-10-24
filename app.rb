require "sinatra"
require "sinatra/reloader"

#Home page
get("/") do
  erb(:square_new)
end

#Square-new
get("/square/new") do
  erb(:square_new)

end

get("/square/results") do
  @number = params.fetch("square").to_f
  @squared = @number ** 2
 erb(:square_results)
end

#Square-root
get("/square_root/new") do
  erb(:sqrt_new)
end

get("/square_root/results") do
  @number = params.fetch("sqrt").to_f
  @sqrted = @number ** 0.5
  erb(:sqrt_res)
end

#payment
get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do
  @rate = params.fetch("apr_value").to_f
  @n = params.fetch("num_years").to_f
  @pv = params.fetch("principal_value").to_f
  @payment = ((@rate/100)* @pv) / (1-((1+ @rate)**(-@n)))
  erb(:payment_results)
end

#random-new
get("/random/new") do

end

get()
#results
