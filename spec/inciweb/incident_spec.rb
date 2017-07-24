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
end
