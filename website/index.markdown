---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: front
title: Home
---

<div class="card">
<div class="card-header"><h1>What is Mission-DMX?</h1></div>
<div class="card-body">
<p>
Mission-DMX is a full-featured open-source lighting console optimized for live events. Development has been ongoing since 2020, but it has long been used successfully at events ranging from poetry slams and techno parties to smaller festivals.
</p>

<p>
Unlike other open-source lighting consoles, Mission-DMX focuses on easy parameterization of show files and performance. Want to control over 400 Art-Net universes in real time via MIDI or sound analysis from your laptop while adjusting color and motion parameters on a connected X-Touch controller? No problem.
</p>

<p>
Getting started is easy: Just patch a few fixtures into your universes and use the Virtual Console to instantly light up your stage. Now transfer these settings to one of your scenes and start configuring your effects.

Have a little more time before the show? Then use Visualizer to build massive setups and get the most out of your event.

The choice is entirely yours.
</p>
</div>
</div>

<br />

<div class="columns">
    <div class="column col-4">
        <div class="card" style="height:100%;">
            <div class="card-body">
                <img src="/assets/card-console-tmp.png" class="card-image" style="width: 100%;">
            </div>
            <div class="card-footer">
                <h3>Use the console to dial up a quick setting.</h3>
            </div>
        </div>
    </div>
    <div class="column col-4">
        <div class="card" style="height:100%;">
            <div class="card-body">
                <img src="/assets/card-visualizer-tmp.png" class="card-image" style="width: 100%;">
            </div>
            <div class="card-footer">
                <h3>Use the visualizer to prepare.</h3>
            </div>
        </div>
    </div>
    <div class="column col-4">
        <div class="card" style="height:100%;">
            <div class="card-body">
                <img src="/assets/card-show-tmp.jpg" class="card-image" style="width: 100%;">
            </div>
            <div class="card-footer">
                <h3>Enjoy the show.</h3>
            </div>
        </div>
    </div>
</div>

<br />
<br />

<div class="card">
<div class="card-header"><h2>Latests posts</h2></div>
<div class="card-body">
<ul>
{% for post in site.posts limit:5 %}
    <li><a href="{{site.url}}{{post.url}}">{{ post.title }}</a></li>
{% endfor %}
</ul>
</div>
</div>
