module MiEnvio
  def self.post_address(payload)
    response = Client.post(
      path: Endpoints::POST_ADDRESS,
      body: payload
    )
  rescue MiEnvio::Error => e
    e
  end
end