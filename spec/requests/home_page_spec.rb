require 'rails_helper'

RSpec.describe "Home Page", type: :request do
  describe "GET /" do
    it "Successfully loads" do
      get "/"
      expect(response.status).to eq(200)
    end
  end
end
