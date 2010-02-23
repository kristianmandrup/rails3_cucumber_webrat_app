require 'spec_helper'

describe "posts/show.html.erb" do
  include PostsHelper
  before(:each) do
    assign(:post, @post = stub_model(Post,
      :title => "MyString"
    ))
  end

  it "renders attributes in <p>" do
    render
    response.should contain("MyString")
  end
end
