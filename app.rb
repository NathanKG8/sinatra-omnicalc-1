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
  erb(:new_square_calc)
end

get("/square_root/results") do
  @beforefloat_num = params.fetch("number")
  @the_num = params.fetch("number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/payment/new") do
  erb(:new_square_calc)
end

get("/payment/results") do
  @beforefloat_num = params.fetch("number")
  @the_num = params.fetch("number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/random/new") do
  erb(:new_square_calc)
end

get("/random/results") do
  @beforefloat_num = params.fetch("number")
  @the_num = params.fetch("number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end
