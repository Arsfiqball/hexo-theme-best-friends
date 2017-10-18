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
