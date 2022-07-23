class Components::Books::List < Matestack::Ui::Component
  def response
    bs_list_group  items: list_books_group

    # books.each do |book|
    #   bs_row horizontal: :start, vertical: :center do
    #     h5 book.title if book.title.present?
    #     paragraph book.description, class: "card-text"
    #   end
    # end
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

    def books
      Book.all
    end
end