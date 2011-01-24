require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /layout_links" do
    it "should have a Home page at '/'" do
      get '/'
      response.status.should be(200)
      response.should have_selector('title', :content => "Home")
    end
    it "should have a Contact page at '/contact'" do
      get '/contact'
      response.status.should be(200)
      response.should have_selector('title', :content => "Contact")
    end
    
    it "should have a About page at '/about'" do
      get '/about'
      response.status.should be(200)
      response.should have_selector('title', :content => "About")
    end
    
    it "should have a Contact page at '/help'" do
      get '/help'
      response.status.should be(200)
      response.should have_selector('title', :content => "Help")
    end
  end
end
