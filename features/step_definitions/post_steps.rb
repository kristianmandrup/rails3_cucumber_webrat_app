Given /^the following posts:$/ do |posts|
  Post.create!(posts.hashes)
end

