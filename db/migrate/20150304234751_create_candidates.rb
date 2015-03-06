class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :register
      t.string :resume
      t.string :history

      t.timestamps
    end
  end
end
