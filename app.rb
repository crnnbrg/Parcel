require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/index') do
  @parcel = Parcel.new(params.fetch('height'), params.fetch('width'), params.fetch('length'), params.fetch('weight'))
  @cost = @parcel.cost_to_ship()
  @width = @parcel.width()
  @height = @parcel.height()
  @length = @parcel.length()
  @weight = @parcel.weight()
  @volume = @parcel.volume()
  erb(:index)
end
