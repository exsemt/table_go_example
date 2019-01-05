# frozen_string_literal: true

require 'spec_helper'

describe Book, type: :model do
  it { is_expected.to have_and_belong_to_many(:authors) }
  it { is_expected.to belong_to(:publisher) }
end
