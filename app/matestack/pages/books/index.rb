class Pages::Books::Index < ApplicationPage

  required :books

  def response
    div class: "container" do
      bs_breadcrumb items: items, class: 'my-breadcrumb'
      transition path: new_book_path, delay: 300 do
        bs_btn "New Book", variant: :link
      end
      Components::Books::List.call(books: books)
    end
  end

  private
    def items
      [
        {path: root_path, text: 'Home', type: :link},
        {path: books_path, text: 'Books'}
      ]
    end

    def books
      context.books
    end
end