require "rails_helper"

RSpec.describe Users::ArticlesController, :type => :routing do
  describe "routing users articles" do
    it "should has proper index route" do
      expect(get: '/users/articles').to be_routable
    end

    it "should has proper new route" do
      expect(get: '/users/articles/new').to be_routable
    end

    it "should has proper edit route" do
      expect(get: '/users/articles/1/edit').to be_routable
    end

    it "should has proper create route" do
      expect(post: '/users/articles').to be_routable
    end

    it "should has proper update route" do
      expect(put: '/users/articles/1').to be_routable
    end
  end
end