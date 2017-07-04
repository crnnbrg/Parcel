class Parcel
  define_method(:initialize) do |height, width, length, weight|
    @height = height
    @width = width
    @length = length
    @weight = weight
  end

  define_method(:create?) do
    true
  end

  define_method(:volume) do
    volume = @height.to_i * @width.to_i * @length.to_i
    return volume
  end

  define_method(:cost_to_ship) do
    if self.volume >= 150
      cost = 1500
    else
      cost = 500
    end
    cost
  end

  define_method(:width) do
    @width
  end

  define_method(:height) do
    @height
  end

  define_method(:length) do
    @length
  end

  define_method(:weight) do
    @weight
  end
end

my_parcel = Parcel.new('20', '20', '20', '100')
puts "Was my parcel created?:" + " " + my_parcel.create?.to_s
puts "Volume of parcel:" + " " + my_parcel.volume.to_s
puts "Cost to ship parcel:" + " " + "KES. " + my_parcel.cost_to_ship.to_s
