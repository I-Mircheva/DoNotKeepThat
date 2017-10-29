class CreateHiddenNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :hidden_notes do |t|
      t.string :your_note

      t.timestamps
    end
  end
end
