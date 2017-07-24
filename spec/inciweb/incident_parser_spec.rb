require "spec_helper"

RSpec.describe Inciweb::IncidentParser do
  describe ".parse" do
    it "parse the html document to a hash" do
      document = Inciweb::IncidentParser.parse(incident_fixture)

      expect(document[:size]).to eq("420")
      expect(document[:active]).to be_truthy
      expect(document[:title]).to eq("Potosi Fire")
      expect(document[:incident_type]).to eq("Wildfire")
    end
  end

  def incident_fixture
    inciweb_fixture("incident.html")
  end
end
