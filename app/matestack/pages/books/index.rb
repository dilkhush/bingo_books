class Pages::Books::Index < ApplicationPage

  required :books

  def response
    div class: "container" do
      bs_breadcrumb items: items, class: 'my-breadcrumb'
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