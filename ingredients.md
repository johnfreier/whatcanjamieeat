---
layout: default
title: "Ingredients"
---

# {{ page.title }}

Here is a list of ingredients Jamie can eat.

All food should be organic.

{% assign foods = site.data.foods | sort: "food-name" %}
{% for food in foods %}
- [{{ food.food-name | replace: "_", " " }}](/foods/{{ food.food-name }}.html)
{% endfor %}
