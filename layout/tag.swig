{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="recent-posts">
    {% for postItem in page.posts %}
      <div class="card post">
        {% if postItem.banner %}
          <div class="card-image">
            <figure class="image">
              <img src="{{ postItem.banner }}" alt="{{ postItem.title }}">
            </figure>
          </div>
        {% endif %}
        <div class="card-content">
          <p class="is-size-5-mobile is-size-4" style="margin-bottom: 8px">
            <a href="{{ config.root }}{{ postItem.path }}">{{ postItem.title }}</a>
          </p>
          {% if postItem.date %}
            <p style="margin-bottom: 12px;">
              <span class="icon">
                <i class="fa fa-calendar"></i>
              </span>
              <time datetime="{{ postItem.date.toJSON() }}">
                {{ date(postItem.date) }}
              </time>
            </p>
            <p class="tags" style="margin-bottom: 12px;">
              {% for category in postItem.categories %}
                <a class="tag is-success" href="/{{ category.path }}">
                  <i class="fa fa-tags"></i>
                  {{ category.name }}
                </a>
              {% endfor %}
              {% for tag in postItem.tags %}
                <a class="tag is-info" href="/{{ tag.path }}">
                  <i class="fa fa-tag"></i>
                  {{ tag.name }}
                </a>
              {% endfor %}
            </p>
          {% endif %}
          <div class="content">
            {{  postItem.excerpt }}
          </div>
        </div>
      </div>
    {% endfor %}
  </div>
  {% include 'includes/pagination.swig' %}

{% endblock %}
