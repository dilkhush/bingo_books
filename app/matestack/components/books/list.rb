class Components::Books::List < Matestack::Ui::Component
  def response
    div class: "container" do
      books.each do |book|
        h4 book.title
      end
    end
  end

  private

    def books
      Book.all
    end
end