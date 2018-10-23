var articles = new Vue({
  el: '#articles',
  Vue.component('article-row', {
  template: '#article-row',
  props: {
    article: Object
  }
})

  data: {
    articles: []
  },
  ready: function() {
    var that;
    that = this;
    $.ajax({
      url: '/articles.json',
      success: function(res) {
        that.articles = res;
      }
    });
  }
});


