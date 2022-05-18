require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "Create a new book with ISBN length equal 10" do
    @book = Book.new(author: 'Tester', title:'Unit Test', isbn: '0123456789')
    assert_equal(true, @book.valid?)
  end

  test "Create a new book with ISBN length equal 13" do
    @book = Book.new(author: 'Tester', title:'Unit Test', isbn: '1234567890123')
    assert_equal(true, @book.valid?)
  end

  test "Book fails validation due to lack of an author" do
    @book = Book.new(author: nil, title:'Unit Test', isbn: '0123456789')
    assert_equal(false, @book.valid?)
  end

  test "Book fails validation due to lack of title" do
    @book = Book.new(author: 'Tester', title:nil, isbn: '0123456789')
    assert_equal(false, @book.valid?)
  end

  test "Book fails validation due to lack of ISBN" do
    @book = Book.new(author: 'Tester', title:'Unit Test', isbn: nil)
    assert_equal(false, @book.valid?)
  end

  test "Book fails validation due ISBN equal 5" do
    @book = Book.new(author: 'Tester', title:'Unit Test', isbn: '12345')
    assert_equal(false, @book.valid?)
  end


  test "Book fails validation due ISBN is not 10 or 13" do
    @book = Book.new(author: 'Tester', title:'Unit Test', isbn: '12345')
    assert_equal(false, @book.valid?)
  end

  test "Book fails validation due ISBN equal 12" do
    @book = Book.new(author: 'Tester', title:'Unit Test', isbn: '123456789012')
    assert_equal(false, @book.valid?)
  end

  test "Retrieves error message due to ISBN failed validation" do
    @book = Book.new(author: 'Tester', title:'Unit Test', isbn: '123456789012')
    @book.valid?
    assert_equal(["El ISBN debe ser de 10 o 13 caracteres"], @book.errors.messages[:isbn])
  end
end
