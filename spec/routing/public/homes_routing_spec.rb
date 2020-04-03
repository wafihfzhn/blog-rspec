require "rails_helper"

RSpec.describe Public::HomesController, :type => :routing do
  describe "rooting public homes" do
    it "routes a root path" do
      expect(get: '/').to be_routable
    end
  end
end