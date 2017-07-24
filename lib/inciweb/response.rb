require "json"
require "ostruct"

require "active_support"
require "active_support/core_ext"

module Inciweb
  class Response
    attr_reader :document

    def initialize(document)
      @document = document
    end

    def parse
      if document
        JSON.parse(document, object_class: ResponseObject)
      end
    end

    def self.from_xml(xml_body)
      response_hash = Hash.from_xml(xml_body)
      new(response_hash["rss"]["channel"]["item"].to_json).parse
    end
  end

  class ResponseObject < OpenStruct; end
end
