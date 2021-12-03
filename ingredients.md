---
layout: default
title: "Ingredients"
---

# {{ page.title }}

Here is a list of ingredients Jamie can eat.

 {% for food in site.data.foods.foods %}
 - {{ food.name }}
{% endfor %}

