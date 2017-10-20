{% extends 'includes/layout.swig' %}

{% block opengraph %}
  <meta property="og:url" content="{{ config.url + config.root + page.path }}">
  {% if page.banner %}
    <meta property="og:image" content="{{ config.url + page.banner }}">
  {% endif %}
{% endblock %}

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
          {{ page.title }}
        </h4>
        {% if page.date %}
          <p>
            <span class="icon">
              <i class="fa fa-calendar"></i>
            </span>
            <time datetime="{{ page.date.toJSON() }}">
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
        <hr>
        <a class="button is-small share-button facebook" href="https://www.facebook.com/sharer/sharer.php?u={{ (config.url + config.root + page.path) | url_encode }}">
          <span class="icon">
            <i class="fa fa-facebook"></i>
          </span>
          <span>Share</span>
        </a>
        <a class="button is-small share-button twitter" href="https://twitter.com/home?status={{ (config.url + config.root + page.path) | url_encode }}">
          <span class="icon">
            <i class="fa fa-twitter"></i>
          </span>
          <span>Share</span>
        </a>
        <a class="button is-small share-button google-plus" href="https://plus.google.com/share?url={{ (config.url + config.root + page.path) | url_encode }}">
          <span class="icon">
            <i class="fa fa-google-plus"></i>
          </span>
          <span>Share</span>
        </a>
      </div>
      {% if config.disqus_comment_box %}
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
      {% endif %}
    </div>
  </div>
</div>
{% endblock %}
