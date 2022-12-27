require 'rails_helper'

RSpec.describe "Roots", type: :request do
  describe "GET /roots" do
    it "works! (now write some real specs)" do
      get roots_path
      expect(response).to have_http_status(200)
    end
  end
end
