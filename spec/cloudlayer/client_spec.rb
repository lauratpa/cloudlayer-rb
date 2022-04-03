require "spec_helper"

RSpec.describe Cloudlayer::Client do
  describe "test" do
    it "returns whether api key is working correctly" do
      VCR.use_cassette("v1/getStatus") do
        client = described_class.new(api_key: "abcdef")

        response = client.test

        expect(response[:status]).to eq("ok ")
      end
    end
  end

  describe "account" do
    it "returns information about your account" do
      VCR.use_cassette("v1/account") do
        client = described_class.new(api_key: "abcdef")

        response = client.account

        expect(response).to be_an_instance_of(Cloudlayer::AccountInstance)
        expect(response.calls).to eq(0)
        expect(response.subscription).to eq("price-free-0")
        expect(response.bytes_total).to eq(0)
        expect(response.bytes_limit).to eq(100000000)
        expect(response.compute_time_total).to eq(0)
        expect(response.compute_time_limit).to eq(3000000)
        expect(response.sub_type).to eq("limit")
        expect(response.sub_active).to be(true)
        expect(response.uid).to eq("8US0eOJMzqbb022vahk9UEXZ96i1")
      end
    end
  end
end
