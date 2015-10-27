class Kemal::Logger
  LOG_LEVELS = %w(info debug error warn)
  def initialize(@stream)
  end

  {% for method in LOG_LEVELS %}
    def {{method.id}}(message)
      @stream.puts message
    end
  {% end %}
end
