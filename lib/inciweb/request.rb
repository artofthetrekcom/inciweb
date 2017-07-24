require "uri"
require "net/http"

module Inciweb
  class Request
    def initialize(path)
      @path = path
    end

    def run
      execute_request
    end

    def self.get(path)
      new(path).run
    end

    private

    attr_reader :path, :inciweb_host

    def execute_request
      Net::HTTP.get(build_inciweb_uri)
    end

    def build_inciweb_uri
      URI([inciweb_host, path].join("/"))
    end

    def inciweb_host
      @inciweb_host ||= "https://inciweb.nwcg.gov"
    end
  end
end
