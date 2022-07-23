class Components::Books::Show < Matestack::Ui::Component
  def response
    bs_card body: book.title,
      header: { text: book.description, class: "text-center h3" }
  end

  private

  def book
    Book.find(params[:id])
  end

end