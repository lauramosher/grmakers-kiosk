require 'spec_helper'

describe "Index Page" do
  subject{last_response}
  let(:base_title) { "GR Makers Social"}

  before { visit '/' }

  it "should have legend of 'Not a member?'" do
    should have_selector('legend', content: "Not a member? Register now!")
  end

  it "should have a Register Form" do
    should have_selector('form')
  end

  it "should have a 'Register' form button" do
    should have_selector('input', type: 'submit', value: 'Register')
  end

  it "should have base_title 'GR Makers Social'" do
    should have_selector('title', content: "#{base_title}")
  end
  


end
