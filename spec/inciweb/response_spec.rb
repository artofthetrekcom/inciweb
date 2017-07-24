require "spec_helper"

RSpec.describe Inciweb::Response do
  describe ".from_xml" do
    it "parse the xml document to ResponseObject" do
      response_object = Inciweb::Response.from_xml(incidents_fixture)

      expect(response_object.first.title).to eq("Whetstone Ridge Fire")
      expect(response_object.first.class).to eq(Inciweb::ResponseObject)
    end
  end

  def incidents_fixture
    inciweb_fixture("incidents.xml")
  end
end
