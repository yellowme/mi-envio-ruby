require "bundler/setup"
require 'simplecov'
require 'webmock/rspec'
require 'mi_envio'

SimpleCov.start { add_filter '/spec/' }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:all) do
    MiEnvio.base_uri = 'https://dev-sandbox.mienvio.mx/api'
    MiEnvio.mi_envio_key = 'pCXl90q8pcViCIskjCJS6UuxGSvNJTRJT5bLvdtIuX4jTsg7CMJjja2PQPK9'
  end
end
