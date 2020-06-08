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
    

    it 'Generates an order in the eship panel' do
      response = MiEnvio.post_address(payload)
      p response['address'].inspect
      #Check origin address
      expect(parsed_payload['address_from']['name']).to eq response['address_from']['name']
    end
  end

end