class Pages::Books::Show < ApplicationPage
  def response
    bs_container size: :fluid do
      Components::Shared::Navbar.call
      div class: "container" do
        bs_breadcrumb items: items, class: 'my-breadcrumb'
        Components::Books::Show.call
      end
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
      Book.find(params[:id])
    end
end