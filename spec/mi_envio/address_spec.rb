require 'spec_helper'

RSpec.describe MiEnvio do
  context 'With valid payload' do

    let(:payload){
      {
        "object_type":"PURCHASE",
        "name":"Juan Ramon2",
        "street":"Pocito 150",
        "street2":"Popotla",
        "reference":"Casa blanca portón negro",
        "country":"MX",
        "zipcode":"11400",
        "email":"dev@mienvio.mx",
        "phone":"4771102332",
      }
    }

    before do
      WebMock.allow_net_connect!
    end
    

    it 'Generates an address' do
      response = MiEnvio.post_address(payload)
      p response['address']['name']
      p payload[:name]
      #Check origin address
      expect(payload[:name]).to eq response['address']['name']
      expect(payload[:street]).to eq response['address']['street']
      expect(payload[:street2]).to eq response['address']['street2']
      expect(payload[:zipcode]).to eq response['address']['zipcode']
      expect(payload[:email]).to eq response['address']['email']
      expect(payload[:phone]).to eq response['address']['phone']
    end
  end

  context 'With invalid payload' do

    let(:payload){
      {
        "object_type":"PURCHASE",
        "name":"Juan Ramon2",
        "street":"Pocito 150",
        "street2":"Popotla",
        "reference":"Casa blanca portón negro",
        "country":"MX",
        "zipcode":11400,
        "email":"dev@mienvio.mx",
        "phone":"4771102332",
      }
    }

    before do
      WebMock.allow_net_connect!
    end
    

    it 'returns a 422 status code' do
      response = MiEnvio.post_address(payload)
      expect(response.code).to eq (422)
      expect(response.message).not_to be nil
    end
  end

end