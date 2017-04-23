<div class="post-pagination">
  <nav class="pagination">
    {% if page.prev %}
      <a href="{{ url_for(page.prev_link) }}" class="pagination-previous is-info">Previous</a>
    {% endif %}

    {% if page.next %}
      <a href="{{ url_for(page.next_link) }}" class="pagination-next is-info">Next page</a>
    {% endif %}
  </nav>
</div>
