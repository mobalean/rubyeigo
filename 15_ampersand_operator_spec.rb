class Request
  def initialize(&condition)
    @condition = condition
  end
  def process(state)
    @condition.call(state)
  end
end

describe Request do
  before { @request = Request.new {|state| state != :busy} }
  it { @request.process(:busy).should be_false }
  it { @request.process(:free).should be_true}
end
