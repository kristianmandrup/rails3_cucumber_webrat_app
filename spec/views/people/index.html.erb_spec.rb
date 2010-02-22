require 'spec_helper'

describe "people/index.html.erb" do
  include PeopleHelper

  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "MyString"
      ),
      stub_model(Person,
        :name => "MyString"
      )
    ])
  end

  it "renders a list of people" do
    render
    response.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
  end
end
