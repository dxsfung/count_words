require('sinatra')
require('sinatra/reloader')
require('./lib/count_word')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/display') do
binding.pry
  @result=param.fetch('passage').count(param.fetch('word'))
  erb(:index)
end
