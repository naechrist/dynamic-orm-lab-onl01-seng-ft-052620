require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  def self.table_name 
    self.to_s.downcase.pluralize
  end
  
  def self.column_names 
    DB[:conn].results_as_hash = true 
    sql = "pragma table_info('#{table_name}')"
    table_info = DB[:conn].execute(sql)
    column_names = []
    table_info.each do |row|
      
    end
  end
end
