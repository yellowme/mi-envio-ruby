module MiEnvio
  def self.post_address(payload)
    response = Client.post(
      path: Endpoints::POST_ADDRESS,
      body: payload
    )
  end
end