require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App"}

  # tell rspec the subject of testing is the page object
  subject { page }

  # shared examples allow for the reuse of test code
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Home page" do
    # before each test, visit the home page
    before { visit root_path }
    let(:heading) { 'Sample App' }
    # TODO: Finish this exercise

    it { should have_selector('h1', :text => 'Sample App') }
    it { should have_selector('title', :text => full_title) }
    it { should_not have_selector('title', :text => "| Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', :text => 'About Us') }
    it { should have_selector('title', :text => full_title("About Us")) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title("Contact")) }
  end

end