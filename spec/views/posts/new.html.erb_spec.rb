require 'spec_helper'

describe "posts/new.html.erb" do
  include PostsHelper

  before(:each) do
    assign(:post, stub_model(Post,
      :new_record? => true,
      :title => "MyString"
    ))
  end

  it "renders new post form" do
    render

    response.should have_selector("form", :action => posts_path, :method => "post") do |form|
      form.should have_selector("input#post_title", :name => "post[title]")
    end
  end
end
