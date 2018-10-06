# frozen_string_literal: true

require 'spec_helper'

describe Publisher, type: :model do
  it { is_expected.to have_many(:books) }
end
