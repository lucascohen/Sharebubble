class CreateBubbles < ActiveRecord::Migration
  def change
    create_table :bubbles do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
