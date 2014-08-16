require 'spec_helper'

describe WelcomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show_history'" do
    it "returns http success" do
      get 'show_history'
      response.should be_success
    end
  end

end
