class CreateConnection < ActiveRecord::Migration
  def change
    create_table :connection do |t|
      t.integer :post_id
      t.integer :category_id
    end
  end
end
