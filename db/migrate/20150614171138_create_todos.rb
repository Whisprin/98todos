class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|

      t.integer :uid
      t.text :content
      t.boolean :done, default: false
      t.datetime :deadline
      t.timestamps null: false
    end

    create_table :users do |u|

    	u.text :name
    end
  end
end
