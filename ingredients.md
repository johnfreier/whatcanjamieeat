---
layout: default
title: "Ingredients"
---

# {{ page.title }}

Here is a list of ingredients Jamie can eat.

{% for food in site.data.foods %}
- [{{ food.food-name }}](/foods/{{ food.food-name }}.html)
{% endfor %}
