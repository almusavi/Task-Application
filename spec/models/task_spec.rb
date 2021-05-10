require 'rails_helper'

RSpec.describe Task, :type => :model do
  subject { described_class.new }

# test to see rstring is valid for title on Task record
  it "is valid with valid attributes" do
  	subject.title = "Something"
  	expect(subject).to be_valid
  end

end