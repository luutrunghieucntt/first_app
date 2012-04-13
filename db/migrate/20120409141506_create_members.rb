class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.column :status, "ENUM('init', 'success', 'fail')"

      t.timestamps
    end
  end
end
