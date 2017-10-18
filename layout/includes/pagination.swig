<div class="post-pagination">
  <nav class="pagination" role="navigation" aria-label="pagination">
    {% if page.prev %}
      <a href="{{ url_for(page.prev_link) }}" class="pagination-previous">Previous</a>
    {% else %}
      <a class="pagination-previous" disabled>Previous</a>
    {% endif %}

    {% if page.next %}
      <a href="{{ url_for(page.next_link) }}" class="pagination-next">Next page</a>
    {% else %}
      <a class="pagination-next" disabled>Next page</a>
    {% endif %}

    <ul class="pagination-list">
      <li>
        {% if page.prev %}
          <a class="pagination-link" href="{{ page.prev_link }}">{{ page.prev }}</a>
        {% endif %}
      </li>
      <li>
        <a class="pagination-link is-current" href="{{ page.current_url }}">{{ page.current }}</a>
      </li>
      <li>
        {% if page.next %}
          <a class="pagination-link" href="{{ page.next_link }}">{{ page.next }}</a>
        {% endif %}
      </li>
    </ul>
  </nav>
</div>
