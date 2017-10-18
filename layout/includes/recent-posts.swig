
{% if site.posts.length > 0 %}
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
          <div class="content">
            <h4>
              <a href="{{ config.root }}{{ postItem.path }}">{{ postItem.title }}</a>
            </h4>
            {% if postItem.date %}
              <p>
                <span class="icon">
                  <i class="fa fa-calendar"></i>
                </span>
                <time datetime="{{ postItem.date.toJSON() }}">
                  {{ date(postItem.date) }}
                </time>
              </p>
              <p>
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
            {{  postItem.excerpt }}
          </div>
        </div>
      </div>
    {% endfor %}
  </div>
{% endif %}
