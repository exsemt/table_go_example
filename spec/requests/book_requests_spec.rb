# frozen_string_literal: true

require 'spec_helper'

describe 'book requests', type: :request do
  describe "GET 'index'" do
    it 'returns http success' do
      get books_path
      expect(response).to be_successful
    end
  end
end
