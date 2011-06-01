ENV["REDISTOGO_URL"] ||= "redis://ademartutor:24e9fda2f5ad66bb75b92e2e821bd6d8@bluegill.redistogo.com:9163/"

uri = URI.parse(ENV["REDISTOGO_URL"])
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

Dir["#{Rails.root}/app/jobs/*.rb"].each { |file| require file }
