class Components::Comments::List < Matestack::Ui::VueJsComponent

  required :comments

  vue_name "comments-list-component"

  def response
    div class: "comments-list-root-element" do
      plain "{{ vc.comments }}"
    end
  end

  def vue_props
    {
      comments: context.comments
    }
  end
end
