require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square_calc)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @beforefloat_num = params.fetch("number")
  @the_num = params.fetch("number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_calc)
end

get("/square_root/results") do
  @beforefloat_num = params.fetch("user_number")
  @the_num = params.fetch("user_number").to_f
  @the_result = @the_num ** (1.0 /2)
  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment_calc)
end

get("/payment/results") do
  @pre_userapr = params.fetch("user_apr").to_f
  @userapr = @pre_userapr.to_fs(:percentage, {:precision => 4})
  @userperiods = params.fetch("user_years")
  @pre_userprincipal = params.fetch("user_pv").to_f
  @userprincipal = @pre_userprincipal.to_fs(:currency)
  @apr = (params.fetch("user_apr").to_f / 100) /12
  @periods = params.fetch("user_years").to_i * 12
  @principal = params.fetch("user_pv").to_f
  @numerator = @apr * @principal
  @denominator = 1 - ((1 + @apr) ** ((-1) * @periods))
  @pre_result = @numerator / @denominator
  @the_result = @pre_result.to_fs(:currency)
  erb(:payment_results)
end

get("/random/new") do
  erb(:random_calc)
end

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @the_result = rand(@min..@max)
  erb(:random_results)
end
