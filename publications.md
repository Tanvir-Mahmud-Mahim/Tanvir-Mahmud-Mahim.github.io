---
layout: page
title: "Publications"
subtitle: "Peer-reviewed journal articles and conference papers, newest first."
permalink: /publications/
description: "Peer-reviewed publications by Tanvir Mahmud Mahim in IEEE Transactions on Fuzzy Systems, IEEE Sensors Journal, IEEE Journal of Photovoltaics, Advanced Energy and Sustainability Research, and Engineering Science and Technology."
---

{% assign pubs = site.publications | sort: 'date' | reverse %}

<p>A complete and continuously updated list is available on <a href="{{ site.author.googlescholar }}" rel="noopener">Google Scholar</a> and <a href="{{ site.author.orcid }}" rel="noopener">ORCID</a>. Titles below link to the publisher's record via DOI.</p>

## Journal articles

<ul class="pub-list">
{% for pub in pubs %}{% if pub.category == "journal" %}
  <li class="pub">
    <span class="pub-year">{{ pub.year }}</span>
    <div class="pub-body">
      <a class="pub-title" href="{{ pub.link }}" rel="noopener">{{ pub.title }}</a>
      <p class="pub-authors">{{ pub.authors | replace: 'Tanvir M. Mahim', '<span class="me">Tanvir M. Mahim</span>' }}</p>
      <p class="pub-venue"><em>{{ pub.venue }}</em>{% if pub.detail and pub.detail != "" %}, {{ pub.detail }}{% endif %} ({{ pub.year }}){% if pub.publisher %} · {{ pub.publisher }}{% endif %}</p>
      {% if pub.note %}<p class="pub-note">{{ pub.note }}</p>{% endif %}
      <ul class="pub-actions">
        <li><a class="chip chip-paper" href="{{ pub.link }}" rel="noopener">DOI: {{ pub.doi }}</a></li>
        {% if pub.code %}<li><a class="chip chip-code" href="{{ pub.code }}" rel="noopener">Code · GitHub</a></li>{% endif %}
        {% if pub.dataset %}<li><a class="chip chip-data" href="{{ pub.dataset }}" rel="noopener">Data · Zenodo</a></li>{% endif %}
      </ul>
    </div>
  </li>
{% endif %}{% endfor %}
</ul>

## Conference papers

<ul class="pub-list">
{% for pub in pubs %}{% if pub.category == "conference" %}
  <li class="pub">
    <span class="pub-year">{{ pub.year }}</span>
    <div class="pub-body">
      <a class="pub-title" href="{{ pub.link }}" rel="noopener">{{ pub.title }}</a>
      <p class="pub-authors">{{ pub.authors | replace: 'Tanvir M. Mahim', '<span class="me">Tanvir M. Mahim</span>' }}</p>
      <p class="pub-venue"><em>{{ pub.venue }}</em>{% if pub.detail and pub.detail != "" %}, {{ pub.detail }}{% endif %} ({{ pub.year }}){% if pub.publisher %} · {{ pub.publisher }}{% endif %}</p>
      {% if pub.note %}<p class="pub-note">{{ pub.note }}</p>{% endif %}
      <ul class="pub-actions">
        <li><a class="chip chip-paper" href="{{ pub.link }}" rel="noopener">DOI: {{ pub.doi }}</a></li>
        {% if pub.code %}<li><a class="chip chip-code" href="{{ pub.code }}" rel="noopener">Code · GitHub</a></li>{% endif %}
        {% if pub.dataset %}<li><a class="chip chip-data" href="{{ pub.dataset }}" rel="noopener">Data · Zenodo</a></li>{% endif %}
      </ul>
    </div>
  </li>
{% endif %}{% endfor %}
</ul>

<div class="callout">
  <p>Work currently under review is described on the <a href="{{ '/research/' | relative_url }}">Research</a> page rather than listed here, so that this page contains only published, citable records.</p>
</div>
