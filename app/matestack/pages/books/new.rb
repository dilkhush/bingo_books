class Pages::Books::New < ApplicationPage

  required :book

  def response
    div class: "container" do
      bs_breadcrumb items: items, class: 'my-breadcrumb'
      Components::Books::New.call(book: book)
    end
  end

  private

    def items
      [
        {path: root_path, text: 'Home', type: :link},
        {path: books_path, text: 'Books', type: :link},
        {path: new_book_path, text: 'New Book' }
      ]
    end

    def book
      context.book
    end
end
