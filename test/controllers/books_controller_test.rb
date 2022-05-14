require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { adquisition_date: @book.adquisition_date, author: @book.author, availability: @book.availability, copies: @book.copies, description: @book.description, dewey_classification: @book.dewey_classification, language: @book.language, publisher: @book.publisher, publishing_country: @book.publishing_country, publishing_date: @book.publishing_date, title: @book.title, topic: @book.topic } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { adquisition_date: @book.adquisition_date, author: @book.author, availability: @book.availability, copies: @book.copies, description: @book.description, dewey_classification: @book.dewey_classification, language: @book.language, publisher: @book.publisher, publishing_country: @book.publishing_country, publishing_date: @book.publishing_date, title: @book.title, topic: @book.topic } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
