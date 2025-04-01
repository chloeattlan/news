class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.text :event
      t.string :article
      t.string :source
      t.text :summary
      t.text :impact
      t.date :today
      t.text :timeframe
      t.string :stocks_text

      t.timestamps
    end
  end
end
