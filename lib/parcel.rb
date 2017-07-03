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
    return @height.to_i * @width.to_i * @length.to_i
  end
end
