RSpec.describe MiEnvio do
  it 'configures MiEnvio gem' do
    # Given
    base_uri = 'http://google.com'
    mi_envio_key = 'random_key1'

    # When
    MiEnvio.config do |c|
      c.base_uri = base_uri
      c.mi_envio_key = mi_envio_key
    end

    # Then
    expect(MiEnvio.base_uri).to eq base_uri
    expect(MiEnvio.mi_envio_key).to eq mi_envio_key
  end

  it 'has a version number' do
    expect(MiEnvio::VERSION).not_to be nil
  end
end