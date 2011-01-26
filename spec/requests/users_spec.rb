require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get users_path
      response.status.should be(200)
    end
    describe "signup" do
      describe "failure" do
        it "should not make a new user" do
          lambda do
            visit signup_path
            fill_in "Name",         :with => ""
            fill_in "Email",        :with => ""
            fill_in "Password",     :with => ""
            fill_in "Password confirmation", :with => ""
            click_button
            response.should render_template('users/new')
            response.should have_selector("div#error_explanation")
            end.should_not change(User, :count)
          end
      end
      describe "success" do
        it "should make a new user" do
          lambda do
            visit signup_path
            fill_in "Name",         :with => "successUser"
            fill_in "Email",        :with => "succ@example.com"
            fill_in "Password",     :with => "foobar"
            fill_in "Password confirmation", :with => "foobar"
            click_button
            response.should render_template('users/show')
            response.should have_selector("div.flash.success", :content => "Welcome")
          end.should change(User, :count).by(1)
        end #end of it
      end
    end
  end
end
