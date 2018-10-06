# frozen_string_literal: true

module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {})
      options[:renderer]       ||= BootstrapPagination::Rails
      options[:bootstrap]      ||= 3
      options[:class]          ||= 'pagination pagination-right'
      options[:previous_label] ||= '«'
      options[:next_label]     ||= '»'
      super.try :html_safe
    end
  end
end
