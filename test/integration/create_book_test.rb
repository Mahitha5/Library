require "test_helper"

class CreateBookTest < ActionDispatch::IntegrationTest
  test "Should create book" do
    get "/books/new"
    assert_response :success

    post "/books",
      params: { book: { title: "Learn RoR", author: "Someone", edition: 1 }}
    assert_equal 1, Book.count
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "td", "Learn RoR"
  end
end
