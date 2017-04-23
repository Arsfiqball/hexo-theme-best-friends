{% extends 'includes/layout.swig' %}

{% block body %}
<div class="single-post">
  <div class="card post">
    {% if page.banner %}
      <div class="card-image">
        <figure class="image">
          <img src="{{ page.banner }}" alt="{{ page.title }}">
        </figure>
      </div>
    {% endif %}
    <div class="card-content">
      <div class="content">
        <h4>
          <a href="{{ config.root }}{{ page.path }}">{{ page.title }}</a>
        </h4>
        {% if page.date %}
          <p>
            <time datetime="{{ page.date.toJSON() }}">
              <i class="fa fa-calendar"></i>
              {{ date(page.date) }}
            </time>
          </p>
          <p>
            {% for category in page.categories %}
              <a class="tag is-success" href="/{{ category.path }}">
                <i class="fa fa-tags"></i>
                {{ category.name }}
              </a>
            {% endfor %}
            {% for tag in page.tags %}
              <a class="tag is-info" href="/{{ tag.path }}">
                <i class="fa fa-tag"></i>
                {{ tag.name }}
              </a>
            {% endfor %}
          </p>
        {% endif %}
        {{  page.content }}
      </div>
    </div>
  </div>
  <input type="hidden" style="display: none;" id="comment_url" value="{{ page.path }}">
  <input type="hidden" style="display: none;" id="comment_identifier" value="{{ page.path }}">
  <input type="hidden" style="display: none;" id="comment_src" value="https://{{ config.disqus_comment_box }}.disqus.com/embed.js">
  <div id="disqus_thread">Wait a moment, loading comments...</div>
  <script>
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = document.getElementById('comment_src').value;
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
  </script>
</div>
{% endblock %}
