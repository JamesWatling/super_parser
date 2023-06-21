# frozen_string_literal: true

require_relative 'lib/super_parser/version'

Gem::Specification.new do |spec|
  spec.name = 'super_parser'
  spec.version = SuperParser::VERSION
  spec.authors = ['James Watling']
  spec.email = ['watling.james@gmail.com']

  spec.summary = 'Wrapper for SUPERPARSER API. https://www.superparser.com'
  spec.description = 'Wrapper for SUPERPARSER API. https://www.superparser.com/documentation#/default'
  spec.homepage = 'https://github.com/JamesWatling/super_parser'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org/profiles/jameswatling'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/JamesWatling/super_parser'
  spec.metadata['changelog_uri'] = 'https://github.com/JamesWatling/super_parser/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
