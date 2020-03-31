require "rails_helper"

RSpec.describe Public::BlogsController, :type => :routing do
  it "Should has proper index route" do
      expect(get: '/blogs').to be_routable
  end

  it "Should has proper show route" do
    expect(get: '/blogs/1').to be_routable
  end
end