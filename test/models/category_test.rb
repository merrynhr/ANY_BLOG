require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  def setup
    @category = Category.new(name: "Music")
  end

  test "category should be valid" do
    assert @category.valid?
  end

  test "name should be present" do 
    @category.name = " "
    assert_not @category.valid?
  end

  test "name should be unique" do
    @category.save
    @category2 = Category.new(name: "Music")
    assert_not @category2.valid?
  end

  test "name shouldn't be more than 25 chars" do

  end

  test "name shouldn't be less than 3 chars" do

  end

end