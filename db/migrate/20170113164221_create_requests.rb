class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.text :text

      t.timestamps
    end
  end
end
