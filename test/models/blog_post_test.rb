require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
   test "draft? returns true for draft blog post" do
   # assert BlogPost.new(published_at: nil).draft?
   # useing below line to link the "blog_posts.yml" doc
     assert blog_posts(:draft).draft?
   end

   test "draft? returns false for published blog post" do
   # refute BlogPost.new(published_at: 1.year.ago).draft?
     refute blog_posts(:published).draft?
   end

   test "draft? returns false for scheduled blog post" do
   # refute BlogPost.new(published_at: 1.year.from_now).draft?
     refute blog_posts(:scheduled).draft?
   end

   test "published? returns true for published blog post" do
   # assert BlogPost.new(published_at: 1.year.ago).published?
     assert blog_posts(:published).published?
   end

   test "published? returns false for draft blog post" do
   # refute BlogPost.new(published_at: nil).published?
      refute blog_posts(:draft).published?
   end

   test "published? returns false for scheduled blog post" do
   # refute BlogPost.new(published_at: 1.year.from_now).published?
      refute blog_posts(:scheduled).published?
   end

   test "scheduled? returns true for scheduled blog post" do
   # assert BlogPost.new(published_at: 1.year.from_now).scheduled?
      assert blog_posts(:scheduled).scheduled?
   end
 
   test "scheduled? returns false for published blog post" do
   # refute BlogPost.new(published_at: 1.year.ago).scheduled?
      refute blog_posts(:published).scheduled?
   end

   test "scheduled? returns false for draft blog post" do
   # refute BlogPost.new(published_at: nil).scheduled?
      refute blog_posts(:draft).scheduled?
   end

   #  def draft_blog_post
   #    BlogPost.new(published_at: nil)
   #  end
end