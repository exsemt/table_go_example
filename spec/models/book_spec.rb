require 'spec_helper'

describe Book do
  it { should have_and_belong_to_many(:authors) }
  it { should belong_to(:publisher) }

end
