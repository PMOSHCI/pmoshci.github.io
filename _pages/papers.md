---
layout: page
title: Papers
permalink: /papers
nav_order: 2
mathjax: true
---

# Papers

### Read

<div class="research">
  <ul class="ul-research">
    {% for item in site.papers %}{% if item.status == 'read' %}
      <li>
      <b><a href="{{ item.url }}">{{ item.title }}</a></b>
      {% if item.authors %}, by {{ item.authors }}{% endif %}<br/>
      <b>{{ item.journal }}</b>
      <br/>{{ item.abstract }}
      </li>
    {% endif %}{% endfor %}
  </ul>
</div>

### Reading

<div class="research">
  <ul class="ul-research">
    {% for item in site.research %}{% if item.status != 'read' %}
      <li>
      <b><a href="{{ item.url }}">{{ item.title }}</a></b>
      {% if item.authors %}, by {{ item.authors }}{% endif %}
      <br/>{{ item.abstract }}
      </li>
    {% endif %}{% endfor %}
  </ul>
</div>