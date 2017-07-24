require "spec_helper"

RSpec.describe Inciweb::Response do
  describe ".from_xml" do
    it "parse the xml document to ResponseObject" do
      response_object = Inciweb::Response.from_xml(incidents_fixture)

      expect(response_object.first.title).to eq("Whetstone Ridge Fire")
      expect(response_object.first.class).to eq(Inciweb::ResponseObject)
    end
  end

  describe ".from_html" do
    it "parse the html document to ResponseObject" do
      incident_page = inciweb_fixture("incident.html")

      response_object = Inciweb::Response.from_html(incident_page)

      expect(response_object.size).to eq("420")
      expect(response_object.title).to eq("Potosi Fire")
      expect(response_object.incident_type).to eq("Wildfire")
    end
  end

  def incidents_fixture
    inciweb_fixture("incidents.xml")
  end
end
