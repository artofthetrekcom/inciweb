require "spec_helper"

RSpec.describe Inciweb::Request do
  describe ".get" do
    it "retrieves the resource via http get" do
      stub_inciweb_ping_request(status: 200)

      http_response = Inciweb::Request.get("ping")

      expect(http_response).to eq("Pong!")
    end
  end

  def stub_inciweb_ping_request(status: 200)
    stub_request(:get, "https://inciweb.nwcg.gov/ping").
      to_return(body: "Pong!", status: status)
  end
end
