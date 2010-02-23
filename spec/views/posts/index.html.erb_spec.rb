require 'spec_helper'

describe "posts/index.html.erb" do
  include PostsHelper

  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "MyString"
      ),
      stub_model(Post,
        :title => "MyString"
      )
    ])
  end

  it "renders a list of posts" do
    render
    response.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
  end
end
