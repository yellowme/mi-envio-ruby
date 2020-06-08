# frozen_string_literal: true

require 'mi_envio/version.rb'

module MiEnvio
  def self.config
    yield self
  end

  def self.version
    @version
  end

  def self.base_uri
    @base_uri
  end

  def self.base_uri=(base_uri)
    @base_uri = base_uri
  end

  def self.mi_envio_key
    @mi_envio_key
  end

  def self.mi_envio_key=(mi_envio_key)
    @mi_envio_key = mi_envio_key
  end
end
