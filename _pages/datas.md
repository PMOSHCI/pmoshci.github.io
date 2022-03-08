---
layout: page
title: datas
permalink: /datas
nav_order: 10
mathjax: true
---

<style>
    .main-content a {
        white-space: normal;
    }
</style>

All the data are gather by [WebPlotDigitizer](https://apps.automeris.io/wpd/index.zh_CN.html)

{%- for item in site.datas -%}
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
