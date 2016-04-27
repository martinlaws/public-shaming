def add_a_gold_star
  @gold_stars = (@gold_stars + 1)
end

# Homepage (Root path)
get '/test' do
  erb :test
end

get '/' do
  @title = "Welcome to our app!"
  @black_square_link = '/bad1'
  @gold_star_link = "/good1"
  session[:gold_stars] = 0
  @gold_stars = session[:gold_stars]
  erb :index
end

get '/bad1' do
  @title = "Try Harder!"
  @black_square_link = '/bad2'
  erb :index
end

get '/bad2' do
  @title = "Try Even Harder!"
  @black_square_link = '/bad3'
  erb :index
end

get '/bad3' do
  question_array = [
    "If you had to be a vegetable, which would you be?",
    "What is your favourite beer?",
    "Craziest night?",
    "Least favourite vegetable"
  ]

  random_number = rand(3)

  @question = question_array[random_number - 1]

  erb :question
end

get '/good1' do
  @title = "Good Job!"
  @gold_star_link = '/good2'
  erb :index
end

get '/good2' do
  @title = "Awesome!"
  @gold_star_link = '/good3'
  erb :index
end

get '/good3' do
  question_array = [
    "If you had to be a vegetable, which would you be?",
    "What is your favourite beer?",
    "Craziest night?",
    "Least favourite vegetable"
  ]

  random_number = rand(3)

  @question = question_array[random_number - 1]

  erb :question
end
