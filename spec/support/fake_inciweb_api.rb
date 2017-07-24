module Inciweb
  module FakeInciwebApi
    def stub_listing_incidents_api_call
      stub_api_response("feeds/rss/incidents/", filename: "incidents.xml")
    end

    def stub_incident_find_api_call(incident_id)
      stub_api_response(
        ["incident", incident_id, ""].join("/"), filename: "incident.html"
      )
    end

    private

    def stub_api_response(path, filename:, status: 200)
      stub_request(:get, inciweb_uri(path)).to_return(
        body: inciweb_fixture(filename), status: status,
      )
    end

    def inciweb_uri(path)
      ["https://inciweb.nwcg.gov", path].join("/")
    end

    def inciweb_fixture(filename)
      file_path = ["../../fixtures", filename].join("/")
      File.read(File.expand_path(file_path, __FILE__))
    end
  end
end
