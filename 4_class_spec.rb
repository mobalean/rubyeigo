class Base
end

class Task < Base
  def self.primary_key; 'id'; end
end

class Employee < Base
  def self.primary_key; 'social_security_number'; end
end

describe "primary_key" do
  it { Task.new.primary_key.should == "id" }
  it { Employee.new.primary_key.should == "social_security_number" }
end
