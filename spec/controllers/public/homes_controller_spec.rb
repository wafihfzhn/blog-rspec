require 'rails_helper'

RSpec.describe Public::HomesController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_ok
    end
  end
end
