require 'test_helper'
require 'rails/performance_test_help'

  class BrowsingTest < ActionDispatch::PerformanceTest
    def test_homepage
      get '/'
    end
    def test_index
      get 'index'
    end
  end


  
  class TestLocation < MiniTest::Unit::TestCase
    def test
        
    end
  end
