require "rails_helper"

RSpec.describe "Routes to the Public::HomesController", :type => :routing do
  it "Routes a index route" do
    expect(:get => public_homes_path).
      to route_to(:controller => "public/homes", :action => "index")
  end
end