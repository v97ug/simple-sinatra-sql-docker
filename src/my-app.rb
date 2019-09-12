require 'sinatra/base'
require 'mysql2'
require 'mysql2-cs-bind'

class MyApp < Sinatra::Base
  set :bind, '0.0.0.0'

  helpers do
    def db_connect()
      return Mysql2::Client.new(
          :host => 'db',
          :port => '3306',
          :username => 'root',
          :password => '',
          :database => 'test',
          :encoding => 'utf8mb4',
          :datatbase_timezone => "Asia/Tokyo"
      )
    end
  end

  before do
    $client = db_connect
  end

  get '/' do
    contents_users = $client.xquery('SELECT * FROM users')
    contents_users.map{|c| c["name"]}.to_json
  end

  run! if app_file == $0
end