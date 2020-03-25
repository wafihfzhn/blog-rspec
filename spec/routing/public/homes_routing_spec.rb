require "rails_helper"

RSpec.describe "Routes Public::HomesController for rooth path", :type => :routing do
  it "Routes a root path" do
    expect(:get => root_path).
      to route_to(:controller => "public/homes", :action => "index")
  end
end