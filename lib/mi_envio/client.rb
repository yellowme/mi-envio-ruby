module MiEnvio
  module Client
    def self.post(path:, body:, headers: {})
      response = MiEnvio.connection.post path, body.to_json, headers
      JSON.parse(response.body)
    end
  end
end