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
  @payment = (((@rate/1200)* @pv) / (1-((1+ (@rate/1200))**(-@n*12))))
  erb(:payment_results)
end

#random-new
get("/random/new") do
  erb(:rand_new)
end

get("/random/results") do
  @min = params.fetch("min_value").to_f
  @max = params.fetch("max_value").to_f
  @number = rand(@min..@max)
  erb(:rand_results)
end
