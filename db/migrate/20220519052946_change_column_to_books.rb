class ChangeColumnToBooks < ActiveRecord::Migration[6.0]
  def up
    enable_extension 'citext'
    change_column :books, :author, :citext
    change_column :books, :title, :citext
    change_column :books, :description, :citext
    change_column :books, :topic, :citext
    change_column :books, :publisher, :citext
  end

  def down
    change_column :books, :author, :string
    change_column :books, :title, :string
    change_column :books, :description, :text
    change_column :books, :topic, :string
    change_column :books, :publisher, :string
    disable_extension 'citext'
  end
end
