
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mi_envio/version"

Gem::Specification.new do |spec|
  spec.name          = "mi-envio-ruby"
  spec.version       = MiEnvio::VERSION
  spec.authors       = ["Yellowme"]
  spec.email         = ["hola@yellowme.mx"]

  spec.summary       = "MiEnvio-ruby provides a layer to interact with MiEnvio API throug its parcels service"
  spec.description   = "with MiEnvio-ruby  you can generate an order in the `dashboard` without the need to enter all the data manually."
  spec.homepage      = "https://github.com/yellowme/mi-envio-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'app_version_tasks'
  spec.add_development_dependency 'rubocop-airbnb', '~> 3.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.30'
  spec.add_development_dependency 'simplecov', '~> 0.17'
  spec.add_development_dependency 'webmock', '~> 3.7'
end
