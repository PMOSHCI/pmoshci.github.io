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
    {% for item in site.papers %}{% if item.status != 'read' and item.series==nil %}
      <li>
      <b><a href="{{ item.url }}">{{ item.title }}</a></b>
      {% if item.authors %}, by {{ item.authors }}{% endif %}
      <br/>{{ item.abstract }}<br/>{% if item.link %}Available at <a href="{{ item.link }}">here</a>{% endif %}
      </li>
    {% endif %}{% endfor %}
  </ul>
</div>

## Planning

https://sci-hub.ru/10.1109/IRPS.2013.6531943

https://sci-hub.ru/10.1134/S1063782618100081

https://www.iue.tuwien.ac.at/pdf/ib_2018/JB2018_Tyaginov_1.pdf

https://sci-hub.ru/10.1109/IRPS.2013.6531943

https://sci-hub.ru/https://ieeexplore.ieee.org/abstract/document/8060062/

### Hot Carrier Degradation in Semiconductor Devices

<div class="research">
  <ul class="ul-research">
    {% for item in site.papers %}{% if item.series == 'Hot Carrier Degradation in Semiconductor Devices' %}
      <li>
      <b><a href="{{ item.url }}">{{ item.title }}</a></b>
      {% if item.authors %}, by {{ item.authors }}{% endif %}
      <br/>{{ item.abstract }}<br/>{% if item.link %}Available at <a href="{{ item.link }}">here</a>{% endif %}
      </li>
    {% endif %}{% endfor %}
  </ul>
</div>

