require "rails_helper"

RSpec.describe Public::BlogsController, :type => :routing do
  describe "routing public blogs" do
    it "should has proper index route" do
        expect(get: '/blogs').to be_routable
    end

    it "should has proper show route" do
      expect(get: '/blogs/1').to be_routable
    end
  end
end