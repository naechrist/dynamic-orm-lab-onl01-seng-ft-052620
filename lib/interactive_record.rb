require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def self.find_by(attribute)
    column_name = attribute.keys[0].to_s
    value_name = attribute.values[0]

    sql = <<-SQL
      SELECT * FROM #{table_name}
      WHERE #{column_name} = ?
      SQL

    DB[:conn].execute(sql, value_name);
  end
end