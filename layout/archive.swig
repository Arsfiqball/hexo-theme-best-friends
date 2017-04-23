{% extends 'includes/layout.swig' %}

{% block body %}
  {% set categoriesList = list_categories({ show_count: false }) %}
  {% set tagsList = list_tags({ show_count: false }) %}
  {% set archivesList = list_archives({ show_count: false }) %}

  <div class="single-post">
    <div class="card post">
      <div class="card-content">
        <div class="content">

          {% if !is_year() %}
            <div id="archive">
              {% if theme.atom %}
                <p>
                  The feed is available via
                  <a href="{{ theme.atom }}">atom</a>.
                </p>
                <br>
              {% endif %}

              {% if config.atom %}
                <p>
                  The feed is available via
                  <a href="{{ config.atom }}">atom</a>.
                </p>
                <br>
              {% endif %}

              <aside>
                <h3>Categories</h3>
                {% if categoriesList %}
                  {% autoescape false %}{{ categoriesList }}{% endautoescape %}
                {% else %}
                  <p>None.</p>
                {% endif %}
              </aside>
              <br>

              <aside>
                <h3>Tags</h3>
                {% if tagsList %}
                  {% autoescape false %}{{ tagsList }}{% endautoescape %}
                {% else %}
                  <p>None.</p>
                {% endif %}
              </aside>
              <br>

              <aside>
                <h3>Archives</h3>
                {% if archivesList %}
                  {% autoescape false %}{{ archivesList }}{% endautoescape %}
                {% else %}
                  <p>None.</p>
                {% endif %}
              </aside>
            </div>
          {% else %}
            <h3>{{ page.month + '/' + page.year }}</h3>
            {% for postItem in page.posts.toArray() %}
              <div class="archive-item">
                {% if postItem.link %}
                  <!-- external link -->
                  <a href="{{ url_for(postItem.link) }}" target="_blank">
                    {{ postItem.title || 'No Title' }}
                  </a>
                {% endif %}

                {% if !postItem.link %}
                  <!-- internal link -->
                  <a href="{{ url_for(postItem.path) }}">
                    {{ postItem.title || 'No Title' }}
                  </a>
                {% endif %}

                <time datetime="{{ date_xml(postItem.date) }}">
                  {{ date(postItem.date) }}
                </time>
              </div>
            {% endfor %}
          {% endif %}

        </div>
      </div>
    </div>
  </div>

{% endblock %}
