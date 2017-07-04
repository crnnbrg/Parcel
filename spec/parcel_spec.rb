require('rspec')
require('parcel')

describe(Parcel) do
  describe("#create?") do
    it('Creates a new parcel') do
      my_parcel = Parcel.new('20', '20', '20', '100')
      expect(my_parcel.create?).to(eq(true))
    end
  end

  describe("#volume") do
    it('Returns the product of the sides.') do
      my_parcel = Parcel.new('20', '20', '20', '100')
      expect(my_parcel.volume()).to(eq(8000))
    end
  end

  describe("#cost_to_ship") do
    it("Calculates the cost of shipping") do
      my_parcel = Parcel.new('20', '20', '20', '100')
      expect(my_parcel.cost_to_ship()).to(eq(1500))
    end
  end

  describe("#width") do
    it('returns the width of a parcel') do
      my_parcel = Parcel.new('20', '20', '20', '100')
      expect(my_parcel.width()).to(eq("20"))
    end
  end


  describe("#height") do
    it('returns the height of a parcel') do
      my_parcel = Parcel.new('20', '20', '20', '100')
      expect(my_parcel.height()).to(eq("20"))
    end
  end


  describe("#length") do
    it('returns the length of a parcel') do
      my_parcel = Parcel.new('20', '20', '20', '100')
      expect(my_parcel.length()).to(eq("20"))
    end
  end


  describe("#weight") do
    it('returns the weight of a parcel') do
      my_parcel = Parcel.new('20', '20', '20', '100')
      expect(my_parcel.weight()).to(eq("100"))
    end
  end
end
