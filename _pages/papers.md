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

## Planning

2022-02-21

https://sci-hub.ru/https://ieeexplore.ieee.org/document/9260834

---

https://sci-hub.ru/10.1109/IRPS.2013.6531943

https://sci-hub.ru/10.1134/S1063782618100081

https://www.iue.tuwien.ac.at/pdf/ib_2018/JB2018_Tyaginov_1.pdf

https://sci-hub.ru/10.1109/IRPS.2013.6531943

https://sci-hub.ru/https://ieeexplore.ieee.org/abstract/document/8060062/

