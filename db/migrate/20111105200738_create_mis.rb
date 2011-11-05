class CreateMis < ActiveRecord::Migration
  def change
    create_table :mis do |t|

      t.timestamps
    end
  end
end
