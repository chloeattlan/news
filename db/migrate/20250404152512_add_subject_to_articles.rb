class AddSubjectToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :notes, :subject, :string
  end
end
