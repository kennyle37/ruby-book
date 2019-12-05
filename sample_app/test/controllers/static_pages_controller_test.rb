require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @title_header = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root page" do 
    get root_url
    assert_response :success
  end

  test "should get home page" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@title_header}"
  end

  test "should get help page" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@title_header}"
  end

  test "should get about page" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@title_header}"
  end

  test "should get contact page" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@title_header}"
  end
end
