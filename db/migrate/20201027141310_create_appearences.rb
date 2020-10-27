class CreateAppearences < ActiveRecord::Migration[5.1]
  def change
    create_table :appearences do |t|
      t.references :meeting, foreign_key: true
      t.references :participant, foreign_key: true

      t.timestamps
    end
  end
end
