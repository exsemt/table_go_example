module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {})
      options[:renderer]       ||= BootstrapLinkRenderer
      options[:class]          ||= 'pagination pagination-right'
      options[:previous_label] ||= '«'
      options[:next_label]     ||= '»'
      super.try :html_safe
    end

    class BootstrapLinkRenderer < WillPaginate::ActionView::LinkRenderer
      protected

      def html_container(html)
        tag :div, tag(:ul, html), container_attributes
      end

      def page_number(page)
        tag :li, link(page, page, rel: rel_value(page)), class: ('active' if page == current_page)
      end

      def gap
        tag :li, link('&hellip;'.html_safe, '#'), class: 'disabled'
      end

      def previous_or_next_page(page, text, classname)
        tag :li, link(text, page || '#'),
            class: [(classname.split("_").first if  @options[:page_links]), ('disabled' unless page)].join(' ')
      end
    end
  end
end