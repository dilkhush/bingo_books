class Components::Books::List < Matestack::Ui::Component

  required :books

  def response
    bs_list_group items: list_books_group
  end

  private

    def list_books_group
      books.map do |book|
        {
          type: :transition,
          path: book_path(book),
          delay: 300,
          text: book.title
        }
      end
    end

    # TODO: Remove this use context.books instead
    def books
      context.books
    end
end