require 'rails_helper'

RSpec.describe Users::ArticlesController, type: :controller do
  before do
    allow(controller).to receive(:authenticate_user!).and_return(true)
  end
  
  context "GET /index" do
    it "Returns a success response" do
      get :index
      expect(response).to be_ok
    end
  end
end