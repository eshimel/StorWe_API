class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :email, null: false, index: { unique: true }
        t.string :token, null: false, index: { unique: true }
        t.string :password_digest, null: false

       t.timestamps null: false
    end
  end
end


class CreateOutlines < ActiveRecord::Migration
  def change
    create_table :outlines do |t|
      t.string :subjects
      t.string :settings
      t.string :themes
      t.timestamps null: false
    end
  end
end


class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.text :clue
      t.references :outline, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
      t.integer :count_column
    end
  end
end

class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.text :submission
      t.references :outline, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
      t.integer :count_column
    end
  end
end

class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|

      t.text :contribution
      t.text :clues

       t.references :user, index: true, foreign_key: true
      t.references :outline, index: true, foreign_key: true

      t.timestamps null: false

    end
  end
end
