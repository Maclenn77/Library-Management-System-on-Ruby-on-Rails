class AddColumnToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :collection, null: false, foreign_key: true
  end
end
