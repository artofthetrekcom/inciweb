require "nokogiri"

module Inciweb
  class IncidentParser
    def initialize(document)
      @document = nokogiri_doc(document)
    end

    def parse
      parse_document
    end

    def self.parse(document)
      new(document).parse
    end

    private

    attr_reader :document

    def nokogiri_doc(document)
      Nokogiri::HTML(document)
    end

    def parse_document
      {
        title: incident_title,
        lat: incident_lat,
        long: incident_long,
        size: incident_size,
        cause: incident_cause,
        active: incident_status,
        incident_type: incident_type,
      }
    end

    def incident_title
      document.css("#top h2").text
    end

    def incident_lat
      scan_document(/(\d+.\.\d+.) latitude/)
    end

    def incident_long
      scan_document(/(-\d+.\.\d+.) longitude/)
    end

    def incident_size
      content = document.css("table").text.gsub(",", "")
      scan_document(/Size(\w+) Acres/, "table", content)
    end

    def incident_type
      scan_document(/Type(\w+)Cause/, "table")
    end

    def incident_cause
      scan_document(/Cause(\w+)Date/)
    end

    def incident_status
      has_body? && scan_document(/This incident is no longer being updated./).nil?
    end

    def scan_document(pattern, css = "body", content = nil)
      content ||= document.css(css).text
      content.scan(pattern).flatten.first
    end

    def has_body?
      document.css("body").present?
    end
  end
end
