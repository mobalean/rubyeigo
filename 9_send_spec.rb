require 'date'

class Article
  attr_accessor :title, :body, :date
  def initialize(attr)
  end
end

describe "article" do
  subject { Article.new(:title => "Foo", :body => "some text", :date => Date.parse("2010-01-01")) }
  it { subject.title.should == "Foo" }
  it { subject.body.should == "some text" }
  it { subject.date.should == Date.parse("2010-01-01") }
end
