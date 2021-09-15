require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  test "category should be valid" do
    @category = Category.new(name: "Sports")
    assert @category.valid?
  end

  test "name should be present" do 
    @category = Category.new(name: " ")
    assert_not @category.valid?
  end

  test "name should be unique" do

  end

  test "name shouldn't be more than 25 chars" do

  end

  test "name shouldn't be less than 3 chars" do

  end

end