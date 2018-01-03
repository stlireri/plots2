class RevisionFulltextIndex < ActiveRecord::Migration
  def up
    add_index :revision, :body, name: 'revision_body_fulltext', type: :fulltext if ActiveRecord::Base.connection.adapter_name == 'Mysql2'
  end

  def down
    remove_index :revision, :body, name: 'revision_body_fulltext' if ActiveRecord::Base.connection.adapter_name == 'Mysql2'
  end
end
