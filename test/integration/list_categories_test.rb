require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest

  def setup
    @category = Category.create(name: "Music")
    @category2 = Category.create(name: "Travel")
  end

  test "should show categories listing" do
    get '/categories'
    assert_select "a[href=?]", category_path(@category), text: @category.name # a[href=?] tests to see if there's a link matching category_path(@category) 
    assert_select "a[href=?]", category_path(@category2), text: @category2.name
  end
end
