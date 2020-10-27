class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :meeting_name
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
