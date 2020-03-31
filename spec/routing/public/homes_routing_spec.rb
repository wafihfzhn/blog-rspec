require "rails_helper"

RSpec.describe Public::HomesController, :type => :routing do
  it "Routes a root path" do
    expect(get: '/').to be_routable
  end
end