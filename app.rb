require('sinatra')
require('sinatra/reloader')
require('./lib/count_word')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
    erb(:index)
end

get('/display') do
    # @result=params.fetch('passage').topcount(params.fetch('word', params.fetch('option')))
    @option=params.fetch('option')
    @result=params.fetch('passage').allcount(params.fetch('word'), params.fetch('option'))
    @passage=params.fetch('passage')
    @word=params.fetch('word')

    erb(:index)
end
