class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.string :publisher
      t.date :publishing_date
      t.string :publishing_country
      t.string :topic
      t.text :description
      t.string :language
      t.string :dewey_classification
      t.date :adquisition_date
      t.integer :copies
      t.string :availability

      t.timestamps
    end
  end
end
