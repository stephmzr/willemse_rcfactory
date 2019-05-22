class SqlServerDb < ActiveRecord::Base
  self.abstract_class = true
  establish_connection("sql_server".to_sym)
end