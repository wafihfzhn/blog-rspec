require "rails_helper"

RSpec.describe Public::BlogsController, :type => :routing do
  it "Routes to the list of all blogs" do
    expect(:get => public_blogs_path).
      to route_to(:controller => "public/blogs", :action => "index")
  end
end