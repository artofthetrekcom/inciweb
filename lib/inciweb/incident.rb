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

    private

    attr_reader :id

    def fetch_incidents
      Inciweb::Response.from_xml(
        Inciweb::Request.new("feeds/rss/incidents/").run
      )
    end

    def fetch_incident
      Inciweb::Response.from_html(
        Inciweb::Request.new(["incident", id, ""].join("/")).run
      )
    end
  end
end
