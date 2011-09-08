class Builder
end

describe Builder do
  let(:builder) { described_class.new }
  it { builder.coder.should == "<coder></coder>" }
  it do
    xml = builder.coder { builder.name }
    xml.should == "<coder><name></name></coder>"
  end
  it { builder.coder('foo').should == "<coder>foo</coder>" }
  it do
    xml = builder.coder { builder.name "Matz" }
    xml.should == "<coder><name>Matz</name></coder>"
  end
end

