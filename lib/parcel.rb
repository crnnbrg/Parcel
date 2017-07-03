class Parcel
  define_method(:initialize) do |height, width, length, weight|
    @height = height
    @width = width
    @length = length
    @weight = weight
  end
end
