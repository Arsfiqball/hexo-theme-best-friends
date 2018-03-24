
{% set pageTitle = page.title || config.subtitle || '' %}

{% if is_archive() %}
  {% set pageTitle = 'Archives' %}
{% endif %}

{% if is_tag() %}
  {% set pageTitle = 'Tag: ' + page.tag %}
{% endif %}

{% if is_category() %}
  {% set pageTitle = 'Category: ' + page.category %}
{% endif %}

{% if is_month() %}
  {% set pageTitle = pageTitle + ': ' + page.month + '/' + page.year %}
{% endif %}

{% if is_year() %}
  {% set pageTitle = pageTitle + ': ' + page.year %}
{% endif %}

{% set pageTitle = pageTitle + ' [ ' + config.title + ' ]' %}

<!doctype html>
<html lang="{{ config.language }}">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>{{ pageTitle }}</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/default.min.css">

  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}

    {% for url in theme.stylesheets %}
      <link rel="stylesheet" href="{{ url }}">
    {% endfor %}

  {% endif %}

  <meta property="og:site_name" content="{{ config.title }}"/>
  <meta property="og:title" content="{{ page.title }}"/>

  {% block opengraph %}{% endblock %}

</head>
<body>

  <aside class="menu" id="sidebar">
    <figure class="image">
      {% if config.cover_image %}
        <img src="{{ config.cover_image }}">
      {% else %}
        <img src="http://placehold.it/320x200">
      {% endif %}
    </figure>
    <figure class="image is-128x128 profile-pic">
      {% if config.profile_image %}
        <img src="{{ config.profile_image }}">
      {% else %}
        <img src="http://placehold.it/128x128">
      {% endif %}
    </figure>
    <div class="author-info content">
      <h2>{{ config.author }}</h2>
      {% if config.about_author %}
        <p>{{ config.about_author }}</p>
      {% endif %}
    </div>
    {% if config.socials %}
    <div class="socials">
      {% if config.socials.facebook %}
        <a href="{{ config.socials.facebook }}" class="button">
          <span class="icon">
            <i class="fa fa-facebook"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.twitter %}
        <a href="{{ config.socials.twitter }}" class="button">
          <span class="icon">
            <i class="fa fa-twitter"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.instagram %}
        <a href="{{ config.socials.instagram }}" class="button">
          <span class="icon">
            <i class="fa fa-instagram"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.linkedin %}
        <a href="{{ config.socials.linkedin }}" class="button">
          <span class="icon">
            <i class="fa fa-linkedin"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.github %}
        <a href="{{ config.socials.github }}" class="button">
          <span class="icon">
            <i class="fa fa-github"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.email %}
        <a href="{{ config.socials.email }}" class="button">
          <span class="icon">
            <i class="fa fa-envelope"></i>
          </span>
        </a>
      {% endif %}
    </div>
    {% endif %}
  </aside>

  {% if config.cover_image %}
    <div id="cover">
      <figure class="image">
          <img src="{{ config.cover_image }}">
      </figure>
      {% if config.profile_image %}
        <figure class="image is-128x128 profile-pic">
            <img src="{{ config.profile_image }}">
        </figure>
      {% endif %}
      <div class="author-info content">
        <h4>{{ config.author }}</h4>
        {% if config.about_author %}
          <p class="is-size-7">{{ config.about_author }}</p>
        {% endif %}
{#         <p>
          {% for key in Object.keys(theme.menu) %}
            <a href="{{ theme.menu[key] }}" class="button is-white">{{ key }}</a>
          {% endfor %}
        </p>
 #}
      </div>
    </div>
  {% endif %}

  <div class="mobile-menu is-size-7">
    <div class="dropdown">
      <div class="dropdown-trigger">
        <button class="button is-small" aria-haspopup="true" aria-controls="dropdown-menu">
          <span>Menu</span>
          <span class="icon is-small">
            <i class="fa fa-angle-down" aria-hidden="true"></i>
          </span>
        </button>
      </div>
      <div class="dropdown-menu" id="dropdown-menu" role="menu">
        <div class="dropdown-content">
          {% for key in Object.keys(theme.menu) %}
            <a href="{{ theme.menu[key] }}" class="dropdown-item">
              {{ key }}
            </a>
          {% endfor %}
        </div>
      </div>
    </div>
    {% if config.socials %}
      {% if config.socials.facebook %}
        <a href="{{ config.socials.facebook }}" class="button is-small">
          <span class="icon">
            <i class="fa fa-facebook"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.twitter %}
        <a href="{{ config.socials.twitter }}" class="button is-small">
          <span class="icon">
            <i class="fa fa-twitter"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.instagram %}
        <a href="{{ config.socials.instagram }}" class="button is-small">
          <span class="icon">
            <i class="fa fa-instagram"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.linkedin %}
        <a href="{{ config.socials.linkedin }}" class="button is-small">
          <span class="icon">
            <i class="fa fa-linkedin"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.github %}
        <a href="{{ config.socials.github }}" class="button is-small">
          <span class="icon">
            <i class="fa fa-github"></i>
          </span>
        </a>
      {% endif %}
      {% if config.socials.email %}
        <a href="{{ config.socials.email }}" class="button is-small">
          <span class="icon">
            <i class="fa fa-envelope"></i>
          </span>
        </a>
      {% endif %}
    {% endif %}
  </div>

  <div id="content">
    {% block body %}{% endblock %}
  </div>

  <div id="infobar">
    <ul class="menu-list">
      {% for key in Object.keys(theme.menu) %}
        <li>
          <a href="{{ theme.menu[key] }}">{{ key }}</a>
        </li>
      {% endfor %}
    </ul>
  </div>

  <a href="javascript:" id="return-to-top"><i class="fa fa-chevron-up"></i></a>

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="//cdn.bootcss.com/highlight.js/9.12.0/highlight.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/highlightjs-line-numbers.js/2.1.0/highlightjs-line-numbers.min.js"></script>
  <script src="//twemoji.maxcdn.com/2/twemoji.min.js?2.3.0"></script>
  {% if theme.scripts !== undefined && theme.scripts.length > 0 %}

    {% for url in theme.scripts %}
      <script src="{{ url }}"></script>
    {% endfor %}

  {% endif %}
</body>
</html>
