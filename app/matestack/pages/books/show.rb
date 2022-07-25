class Pages::Books::Show < ApplicationPage

  required :book

  def response
    div class: "container" do
      bs_breadcrumb items: items, class: 'my-breadcrumb'
      Components::Books::Show.call(book: book)
    end
  end

  private

    def items
      [
        {path: root_path, text: 'Home', type: :link},
        {path: books_path, text: 'Books', type: :link},
        {path: book_path(book), text: book.title }
      ]
    end

    def book
      context.book
    end
end
