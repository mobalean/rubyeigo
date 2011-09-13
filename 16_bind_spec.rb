require 'active_support/core_ext/proc'
class ApiCall
  class << self
    attr_accessor :path
  end
end
class StateList < ApiCall
  self.path = lambda { "countries/#{@country_id}/states" }

  def initialize(country_id)
    @country_id = country_id
  end

  def resolved_path
  end
end

describe StateList do
  it { StateList.new(1).resolved_path.should == "countries/1/states" }
  it { StateList.new(2).resolved_path.should == "countries/2/states" }
end
