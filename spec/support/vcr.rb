require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "#{::Rails.root}/spec/cassettes"
  config.hook_into :webmock
  config.ignore_localhost = true
  config.ignore_hosts 'chromedriver.storage.googleapis.com', 'selenium_chrome'
  config.ignore_request do |request|
    # 正規表現で http://172.23.0.3:45825 のようなURLへのリクエストをVCRの対象外とする
    request.uri.match?(/^http:\/\/(\d+\.){3}\d+:\d+/)
  end
  config.configure_rspec_metadata!
end
