Gem::Specification.new do |s|
  s.name          = 'logstash-codec-gzip'
  s.version       = '0.1.0'
  s.licenses      = ['Apache License (2.0)']
  s.summary       = 'General purpose gzip codec'
  s.description   = 'General purpose gzip codec for decompressing on input'
  s.homepage      = 'TODO: Put your plugin''s website or public repo URL here.'
  s.authors       = ['dwdii']
  s.email         = 'daniel@dittenhafer.net'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "codec" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', "~> 2.0"
  s.add_development_dependency 'logstash-devutils'
end
