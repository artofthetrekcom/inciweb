require "spec_helper"

RSpec.describe Inciweb::Incident do
  describe ".all" do
    it "retrieves all of the recent incidents" do
      stub_listing_incidents_api_call

      incidents = Inciweb::Incident.all

      expect(incidents.count).to eq(3)
      expect(incidents.last.lat).to eq("40.181666666667")
      expect(incidents.last.long).to eq("-112.54611111111")
      expect(incidents.first.title).to eq("Whetstone Ridge Fire")
    end
  end

  describe ".find" do
    it "retrieves the details for an incident" do
      incident_id = 123456
      stub_incident_find_api_call(incident_id)

      incident = Inciweb::Incident.find(incident_id)

      expect(incident.size).to eq("420")
      expect(incident.title).to eq("Potosi Fire")
      expect(incident.incident_type).to eq("Wildfire")
    end
  end
end
