require 'rails_helper'

RSpec.describe AuthorsController, :type => :controller do
  # it "loads all of the authors into @authors" do
  #   author1 = FactoryGirl.create(:author)
  #   get :index

  #   expect(assigns(:authors)).to match_array([author1])
  end

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

end
