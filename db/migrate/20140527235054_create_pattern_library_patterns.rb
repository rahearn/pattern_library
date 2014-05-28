class CreatePatternLibraryPatterns < ActiveRecord::Migration
  def change
    create_table :pattern_library_patterns do |t|
      t.string :snippet, null: false
      t.text :usage, default: ''
      t.integer :order, default: 0

      t.timestamps
    end
  end
end
