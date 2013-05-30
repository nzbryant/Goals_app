require 'spec_helper'

describe SiteController do

  describe "GET 'why'" do
    it "returns http success" do
      get 'why'
      response.should be_success
    end
  end

  describe "GET 'features'" do
    it "returns http success" do
      get 'features'
      response.should be_success
    end
  end

  describe "GET 'reviews'" do
    it "returns http success" do
      get 'reviews'
      response.should be_success
    end
  end

  describe "GET 'buy_now'" do
    it "returns http success" do
      get 'buy_now'
      response.should be_success
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
  end

  describe "GET 'about_us'" do
    it "returns http success" do
      get 'about_us'
      response.should be_success
    end
  end

end
