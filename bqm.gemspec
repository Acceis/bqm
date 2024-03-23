# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'bqm'
  s.version       = '1.5.1'
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'Download BloudHound query lists, deduplicate entries and merge them in one file.'
  s.description   = 'Deduplicate custom BloudHound queries from different datasets and merge them in one customqueries.json file.'
  s.authors       = ['Alexandre ZANNI']
  s.email         = 'alexandre.zanni@europe.com'
  s.homepage      = 'https://github.com/Acceis/bqm'
  s.license       = 'MIT'

  s.files         = Dir['data/*.json'] + Dir['bin/*'] + ['LICENSE', 'DOC.md']
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.metadata = {
    'bug_tracker_uri'       => 'https://github.com/Acceis/bqm/issues',
    'changelog_uri'         => 'https://github.com/Acceis/bqm/releases',
    'documentation_uri'     => 'https://acceis.github.io/bqm/',
    'homepage_uri'          => 'https://github.com/Acceis/bqm',
    'source_code_uri'       => 'https://github.com/Acceis/bqm/',
    'funding_uri'           => 'https://github.com/sponsors/noraj',
    'rubygems_mfa_required' => 'true'
  }

  s.required_ruby_version = ['>= 3.0.0', '< 4.0']
end
