require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @book = books(:one)
    puts "Set up"
  end

  test "should get index" do
    # get "/books/1"
    # assert_response :success
  end

  teardown do
    puts "call teardown"
  end
end
