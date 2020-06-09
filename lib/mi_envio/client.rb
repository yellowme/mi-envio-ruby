module MiEnvio
  module Client
    def self.post(path:, body:, headers: {})
      begin
        response = MiEnvio.connection.post path, body.to_json, headers
        JSON.parse(response.body)
      rescue Faraday::ClientError => e
        raise MiEnvio::Error.new(message: e.response[:body], code: e.response[:status])
      end
    end
  end
end

      