class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.column :status, :string

      t.timestamps
    end
  end
end
