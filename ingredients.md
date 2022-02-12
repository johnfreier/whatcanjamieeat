---
layout: default
title: "Ingredients"
---

# {{ page.title }}

Here is a list of ingredients Jamie can eat.

{% assign foods = site.data.foods | sort %}
{% for food in foods %}
- [{{ food.food-name | replace: "_", " " }}](/foods/{{ food.food-name }}.html)
{% endfor %}
