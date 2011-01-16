require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end

  it "should have the right header links" do
    visit root_path
    response.should have_selector('title', :content => "Home")     
    click_link 'header_about_link'
    response.should have_selector('title', :content => "About")
    click_link "header_help_link"
    response.should have_selector('title', :content => "Help")
    click_link "header_contact_link"
    response.should have_selector('title', :content => "Contact")
    click_link "header_home_link"
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have the right footer links" do
    visit root_path
    response.should have_selector('title', :content => "Home")     
    click_link 'footer_about_link'
    response.should have_selector('title', :content => "About")
    click_link "footer_help_link"
    response.should have_selector('title', :content => "Help")
    click_link "footer_contact_link"
    response.should have_selector('title', :content => "Contact")
    click_link "footer_home_link"
    response.should have_selector('title', :content => "Home")
  end  
  
end
