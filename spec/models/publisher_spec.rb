require 'spec_helper'

describe Publisher do
  it { should have_many(:books) }

end
