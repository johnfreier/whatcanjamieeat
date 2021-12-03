---
layout: default
title: "Recipes"
---

# {{ page.title }}

{% for page in site.pages %}
  {% if page.layout == 'recipes' %}
[{{ page.title }}]({{ page.url }})
  {% endif %}
{% endfor %}


