require 'rails_helper'

RSpec.describe Public::BlogsController, type: :controller do
  context "GET /index" do
    it "Returns a success response" do
      get :index
      expect(response).to be_ok
    end
  end
end
