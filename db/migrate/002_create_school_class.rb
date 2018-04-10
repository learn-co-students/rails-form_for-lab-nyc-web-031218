class CreateSchoolClass< ActiveRecord::Migration
  def change
    create_table :schoolclasses do |t|
      t.string :title
      t.string :room_number

      t.timestamps null: false
    end
  end
end
