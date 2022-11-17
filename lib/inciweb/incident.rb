module Inciweb
  class Incident
    def initialize(id = nil)
      @id = id
    end

    def all
      fetch_incidents
    end

    def find
      fetch_incident
    end

    def self.all
      new.all
    end

    def self.find(incident_id)
      new(incident_id).find
    end

    def self.find_by_link(link)
      incident_id = link.to_s.scan(/\d+/)
      new(incident_id).find
    end

    private

    attr_reader :id

    def fetch_incidents
      Inciweb::Response.from_xml(
        Inciweb::Request.new("incidents/rss.xml").run
      )
    end

    def fetch_incident
      Inciweb::Response.from_html(
        Inciweb::Request.new(["incident", id, ""].join("/")).run
      )
    end
  end
end
