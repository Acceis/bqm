# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'bqm'
  s.version       = '1.0.2'
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'Download BloudHound query lists, deduplicate entries and merge them in one file.'
  s.description   = 'Deduplicate custom BloudHound queries from different datasets and merge them in one customqueries.json file.'
  s.authors       = ['Alexandre ZANNI']
  s.email         = 'alexandre.zanni@europe.com'
  s.homepage      = 'https://github.com/Acceis/bqm'
  s.license       = 'MIT'

  s.files         = Dir['data/*.json'] + Dir['bin/*'] + ['LICENSE']
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.metadata = {
    'bug_tracker_uri'       => 'https://github.com/Acceis/bqm/issues',
    # 'changelog_uri'         => 'https://github.com/Acceis/bqm/blob/master/docs/CHANGELOG.md',
    # 'documentation_uri'     => 'https://github.com/Acceis/bqm',
    'homepage_uri'          => 'https://github.com/Acceis/bqm',
    'source_code_uri'       => 'https://github.com/Acceis/bqm/',
    'rubygems_mfa_required' => 'true'
  }

  s.required_ruby_version = ['>= 2.6.0', '< 3.2']
end
