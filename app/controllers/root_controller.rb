# frozen_string_literal: true

class RootController < ApplicationController
  def index
    @publishers = Publisher.all
    @authors = Author.includes(:books).paginate(pagination_defaults)
  end
end
