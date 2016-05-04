class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :company_name
      t.string :job_title
      t.string :description
      t.string :location
      t.string :how_to_apply

      t.timestamps null: false
    end
  end
end
