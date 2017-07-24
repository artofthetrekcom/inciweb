require "webmock/rspec"
require "bundler/setup"
require "inciweb"

Dir["./spec/support/**/*.rb"].sort.each { |file| require file }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.include Inciweb::FakeInciwebApi

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
