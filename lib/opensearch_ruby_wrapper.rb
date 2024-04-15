# frozen_string_literal: true

require_relative "opensearch_ruby_wrapper/version"
require 'opensearch/transport'

module OpensearchRubyWrapper
  class Error < StandardError; end
  
  def self.client
    Opensearch::Client.new
  end
end
