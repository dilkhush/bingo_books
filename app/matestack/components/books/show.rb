class Components::Books::Show < Matestack::Ui::Component

  required :book

  def response
    bs_card body: book.title,
      header: { text: book.description, class: "text-center h3" }
    Components::Comments::List.call(book_id: book.id)
  end

  private

    def book
      context.book
    end

    def comments
      book.comments
    end
end