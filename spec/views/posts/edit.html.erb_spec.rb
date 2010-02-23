require 'spec_helper'

describe "posts/edit.html.erb" do
  include PostsHelper

  before(:each) do
    assign(:post, @post = stub_model(Post,
      :new_record? => false,
      :title => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    response.should have_selector("form", :action => post_path(@post), :method => "post") do |form|
      form.should have_selector("input#post_title", :name => "post[title]")
    end
  end
end
