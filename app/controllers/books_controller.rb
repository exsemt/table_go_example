class BooksController < ApplicationController

  def index
    @books = Book.paginate(pagination_defaults)

    respond_to do |format|
      format.html
      format.csv do
        send_data( render_to_string(:template => 'books/index', :format => :csv),
          :type => 'text/csv; charset=utf-8; header=present',
          :filename => 'books.csv',
          :disposition => 'attachment'
        )
      end
      format.xlsx do
        send_data(
          render_to_string(:template => 'books/index', :format => :xlsx),
          # render(:partial => 'books/books.html.haml'),
          # render_to_string(:partial => 'books/books.html.haml'),
          # :partial => 'books/books.html.haml',
          :filename => 'books.xlsx',
          :type => "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
          :disposition => 'attachment'
        )
      end
    end
  end

end
