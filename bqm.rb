#!/usr/bin/env ruby
# frozen_string_literal: true

require 'json'
require 'net/http'

def find_dataset
  source_file = 'query-sets.json'
  source_file_paths = ['./data', '/usr/share/bqm/data', '~/.local/share/bqm/data']
  source_file_paths.each do |path|
    candidate = "#{path}/#{source_file}"
    return candidate if File.file?(candidate) && File.readable?(candidate)
  end
  raise IOError, "The dataset file #{source_file} does not exist or is unreadable."
end

def merge(source)
  src = JSON.load_file(source)
  queries = []
  src['sets'].each do |s|
    customqueries = Net::HTTP.get(URI(s))
    data = JSON.parse(customqueries)
    queries += data['queries']
  end
  queries
end

# Query class just for the sake of having custom comparison
class BQMquery
  attr_accessor :data

  def initialize(query)
    @data = query
  end

  def eql?(other)
    @data['name'].eql?(other.data['name']) && @data['queryList'].eql?(other.data['queryList'])
  end

  def hash
    @data.hash
  end
end

def deduplicate(data)
  data.map { |x| BQMquery.new(x) }.uniq
end

if __FILE__ == $PROGRAM_NAME
  source = find_dataset
  data = merge(source)
  queries = deduplicate(data).map(&:data)

  require 'optparse'
  options = {}
  OptionParser.new do |parser|
    parser.banner = 'Usage: bqm.rb [options]'

    parser.on('-o', '--output-path PATH', 'Path where to store the query file')
    parser.separator ''
    parser.separator 'Example: bqm.rb -o ~/.config/bloodhound/customqueries.json'
  end.parse!(into: options)

  out = options[:'output-path']
  if out
    File.open(out, 'w') do |file|
      json = JSON.pretty_generate({ 'queries' => queries })
      file.write(json)
    end
  else
    puts 'Help: bqm.rb -h'
  end
end
