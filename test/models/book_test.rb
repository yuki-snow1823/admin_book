require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "the truth" do
    @book = books(:one) # fixtures呼び出し
    assert_match("MyString", @book.name)
  end
end
