module Inciweb
  class Incident
    def all
      fetch_incidents
    end

    def self.all
      new.all
    end

    private

    def fetch_incidents
      Inciweb::Response.from_xml(
        Inciweb::Request.new("feeds/rss/incidents/").run
      )
    end
  end
end
