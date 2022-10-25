class CreateAwards < ActiveRecord::Migration[7.0]
  def change
    create_table :awards do |t|
      t.string :name
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
