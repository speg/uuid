# TODO: Write documentation for `Uuid`
require "sqlite3"

DB.open "sqlite3:%3Amemory%3A" do |db|
  puts db.query_one "SELECT uuid();", as: {String}
end

module Uuid
  VERSION = "0.1.0"
  # TODO: Put your code here
end
