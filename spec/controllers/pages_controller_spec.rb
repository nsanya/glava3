# ���� � ��������� ������

require 'spec_helper'

describe PagesController do
 render_views

before(:each) do
    # ��������� ���� ���� ����� ������ ������
    # Define @base_title here.
    @base_title = "Ruby on Rails Tutorial Sample App"
end

#HOME
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
     get 'home'
     response.should have_selector("title",
              #:content => " | Home")# �� ������ ������, ���� ��������
	      :content => @base_title + " | Home")# ����� ��� ������ � ���������� @base_title
     end
  end

#CONTACT
  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
     get 'contact'
     response.should have_selector("title",
              :content => @base_title + " | Contact")

    end
  end

#ABOUT
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
     get 'about'
     response.should have_selector("title",
              :content => @base_title + " | About")
    end
  end

#HELP
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
     get 'help'
     response.should have_selector("title",
              :content => @base_title + " | Help")
    end
  end

end
