module MiEnvio
  class Error < StandardError
    attr_accessor :code, :detail

    def initialize(message: , code:, detail: "")
      @code = code
      @detail = detail
      super("#{code} #{message}")
    end
  end

  class UnprocessableEntityError < Error; end
end