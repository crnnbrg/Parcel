require('rspec')
require('parcel')

describe(Parcel) do
  describe("#create?") do
    it('Creates a new parcel') do
      my_parcel = Parcel.new('20', '20', '20', '100')
      expect(my_parcel.create?).to(eq(true))
    end
  end
end
