class Invoice
  attr_accessor :state
  def initialize(state)
    @state = state
  end
end

describe Invoice do
  context "draft" do
    subject { described_class.new("draft") }
    it { should be_draft }
    it { should_not be_sent }
    it { should_not be_paid }
  end
  context "sent" do
    subject { described_class.new("sent") }
    it { should_not be_draft }
    it { should be_sent }
    it { should_not be_paid }
  end
  context "paid" do
    subject { described_class.new("paid") }
    it { should_not be_draft }
    it { should_not be_sent }
    it { should be_paid }
  end
end
