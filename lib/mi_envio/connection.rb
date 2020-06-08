require 'faraday'

module MiEnvio
  def self.connection
    Faraday.new(url: MiEnvio.base_uri) do |faraday|

      faraday.response :logger
      faraday.authorization :Bearer, MiEnvio.mi_envio_key
      faraday.headers['Content-Type'] = 'application/json'
      faraday.adapter Faraday.default_adapter
      faraday.use Faraday::Response::RaiseError
    end
  end
end
