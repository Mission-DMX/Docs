---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: front
title: Home
---

TODO build facy index page

# Downloads
 * [Fish nightly builds](/downloads/fish/nightly)

# Latests posts
<ul>
{% for post in site.posts limit:5 %}
    <li><a hred="{{post.url}}">{{ post.title }}</a></li>
{% endfor %}
</ul>
