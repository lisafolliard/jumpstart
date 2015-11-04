require 'rails_helper'

describe Critic do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :address }
  # it { should validate_presence_of :latitude }
  # it { should validate_presence_of :longitude }
end
