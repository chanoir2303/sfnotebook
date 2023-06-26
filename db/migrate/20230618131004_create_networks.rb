class CreateNetworks < ActiveRecord::Migration[7.0]
  def change
    create_table :networks do |t|
      t.references :person, null: false, foreign_key: true
      t.string :twitter
      t.string :instagram
      t.string :facebook
      t.string :whatsapp
      t.string :tiktok
      t.string :snapchat
      t.string :discord
      t.string :pinterest
      t.string :apple
      t.string :google
      t.string :microsoft
      t.string :mastodon
      t.string :twitch
      t.string :kick
      t.string :adobe
      t.string :bereal

      t.timestamps
    end
  end
end
