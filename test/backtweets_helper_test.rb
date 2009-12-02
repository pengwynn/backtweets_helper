require 'test_helper'
require 'action_view'

class BacktweetsHelperTest < ActiveSupport::TestCase
  context "The Backtweets Helper plugin" do
    setup do
      # @module = BacktweetsRails
      @helper = ActionView::Base.new
    end
    
    should "be mixed into ActionView::Base" do
      assert ActionView::Base.included_modules.include?(BacktweetsHelper)
    end

    should "respond to 'backtweets_count()'" do
      assert @helper.respond_to?(:backtweets_count)
    end
    
    should "respond to 'backtweets_comments()' " do
      assert @helper.respond_to?(:backtweets_comments)
    end
    
    should "respond to 'backtweets_blogroll()' " do
      assert @helper.respond_to?(:backtweets_blogroll)
    end
    
    should "respond to 'backtweets_search()' " do
      assert @helper.respond_to?(:backtweets_search)
    end
  end
  
end