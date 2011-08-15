module ActiveSupport
  class BufferedLogger
    module Severity
      DEBUG   = 0
      INFO    = 1
      WARN    = 2
      ERROR   = 3
      FATAL   = 4
      UNKNOWN = 5
    end

    def self.log_levels
      # constants
      # const_get
    end
  end
end

describe "severity" do
  it do
    h = { "debug" => 0,
          "info" => 1,
          "warn" => 2,
          "error" => 3,
          "fatal" => 4,
          "unknown" => 5}
    ActiveSupport::BufferedLogger.log_levels.should == h
  end
end
