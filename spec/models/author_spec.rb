# frozen_string_literal: true

require 'spec_helper'

describe Author, type: :model do
  it { is_expected.to have_and_belong_to_many(:books) }
end
