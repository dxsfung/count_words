require('sinatra')
require('sinatra/reloader')
require('./lib/count_word')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
