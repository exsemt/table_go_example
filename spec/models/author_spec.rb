require 'spec_helper'

describe Author do
  it { should have_and_belong_to_many(:books) }
end
