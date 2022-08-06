import MatestackUiVueJs from "matestack-ui-vuejs";

const commentsListComponent = {
  mixins: [MatestackUiVueJs.componentMixin],
  template: MatestackUiVueJs.componentHelpers.inlineTemplate,
  data() {
    return {
      comments: this.props['comments']
    };
  },
  methods: {
    getComments(payload){
      this.$http.get('/books/2/comments').then(
        function(response){
          this.comments = response;
        }, function() {
          this.comments = 'error';
        }
      )
    }
  },
  mounted(){
    // this.getComments(this.props['book_id']);
    MatestackUiVueJs.eventHub.$on("get-comments-event", this.getComments)
  },
  beforeUnmount(){
    MatestackUiVueJs.eventHub.$off("get-comments-event", this.getComments)
  }
}

export default commentsListComponent