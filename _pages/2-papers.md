---
layout: page
title: Papers
permalink: /papers
nav_order: 2
mathjax: true
---

{%- for item in site.papers -%}
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

## 中文

- [超薄栅pmos器件热载流子效应和nbti效应的研究](https://www.docin.com/p-121703354.html)