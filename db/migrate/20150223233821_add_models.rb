class AddModels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name

      t.timestamps
    end

    create_table :users do |t|
      t.string :name

      t.timestamps
    end

    create_table :messages do |t|
      t.string :content

      t.references :channel
      t.references :user

      t.timestamps
    end

    create_table :channel_memberships do |t|
      t.references :channel
      t.references :user

      t.timestamps
    end
  end
end
