require 'test_helper'

class CollectionTest < ActiveSupport::TestCase
  test "Create a new collection" do
    @collection = Collection.new(name:'Testing', description: 'A collection for testing' )
    assert_equal(true, @collection.valid?)
  end

  test "Can not create a new collection due to missing name" do
    @book = Collection.new(name:nil, description: 'A collection for testing' )
    assert_equal(false, @collection.valid?)
  end

  test "Error message that explains why a collection can not be created" do
    @collection = Collection.new(name:nil, description: 'A collection for testing' )
    assert_equal(['El nombre de la colección es obligatrio'], @collection.valid?)
  end

  test "Error message that explains why a collection can not be created" do
    @collection = Collection.new(name:nil, description: 'A collection for testing' )
    assert_equal(['El nombre de la colección es obligatrio'], @collection.valid?)
  end

  test "Collection retrieves book inside the collection" do
    @collection = collections(:collection_one)
    assert_equal(['El nombre de la colección es obligatrio'], @collection.valid?)
  end

  test "Collection has books" do
    @collection = collections(:collection_one)
    assert_equal(1, @collection.books.size)
  end
end
