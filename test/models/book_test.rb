require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "Should return false if title is not present" do
    @book = Book.new(title: "", author: "Me")
    assert_not @book.valid?
  end

  test "Should return false if author is not present" do
    @book = Book.new(title: "Learn Ruby on Rails", author: "")
    assert_not @book.valid?
  end

  test "Should return true when book object is valid" do
    @book = Book.new(title: "Learn RoR", author: "Someone")
    assert @book.valid?
  end
end
