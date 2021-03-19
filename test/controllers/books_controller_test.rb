require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "Should get index" do
    get books_url
    assert_response :success
  end

  test "Should create new book" do
    post "/books", params: { book: { title: "Learn RoR", author: "Someone", edition: 2 }}
    assert_redirected_to "/books"
  end

  test "Should render new on create fail" do
    post "/books", params: { book: { title: "Learn RoR", author: "", edition: 2 }}
    assert_template :new
  end
end
