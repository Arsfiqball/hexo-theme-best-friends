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
    </div>
  </div>
</div>
{% endblock %}
