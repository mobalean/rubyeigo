class ActiveRecord
end

describe ActiveRecord do
  it { described_class.find_by_name.should == [:name] }
  it { described_class.find_by_name_and_date.should == [:name, :date] }
end

