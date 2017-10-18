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
        <hr>
        <a class="button is-small share-button facebook" href="https://www.facebook.com/sharer/sharer.php?u={{ encodeURI(config.url + config.root + page.path) }}">
          <span class="icon">
            <i class="fa fa-facebook"></i>
          </span>
          <span>Share</span>
        </a>
        <a class="button is-small share-button twitter" href="https://twitter.com/home?status={{ encodeURI(config.url + config.root + page.path) }}">
          <span class="icon">
            <i class="fa fa-twitter"></i>
          </span>
          <span>Share</span>
        </a>
        <a class="button is-small share-button google-plus" href="https://plus.google.com/share?url={{ encodeURI(config.url + config.root + page.path) }}">
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
