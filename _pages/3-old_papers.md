---
layout: page
title: Old Papers
permalink: /old_papers
nav_order: 2
mathjax: true
---

<h1>旧论文（微米级以上）</h1>

{%- for item in site.old_papers -%}
  {% assign path = item.path | split: "/" %}
  {%- if folder == nil -%}
    {%- assign folder = path[-2] -%}
    <h2>{{ folder }}</h2>
  {%- else -%}
    {%- if folder != path[-2] -%}
      {%- assign folder = path[-2] -%}
      <h2>{{ folder }}</h2>
    {%- endif -%}
  {%- endif -%}
  <p>
    <b><a href="{{ item.url }}">{{ item.title }}</a></b>
    {% if item.authors %}, by {{ item.authors }}{% endif %}
    <br/>{{ item.abstract }}<br/>{% if item.link %}Available at <a href="{{ item.link }}">here</a>{% endif %}
  </p>
{%- endfor -%}