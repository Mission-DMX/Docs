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
                <img src="/assets/card-console-tmp.png" class="card-image" style="width: 100%;" alt="Screenshot of someone building a scene using the virtual console.">
            </div>
            <div class="card-footer">
                <h3>Use the console to dial up a quick setting.</h3>
            </div>
        </div>
    </div>
    <div class="column col-4">
        <div class="card" style="height:100%;">
            <div class="card-body">
                <img src="/assets/card-visualizer-tmp.png" class="card-image" style="width: 100%;" alt="Screenshot of someone preparing for a light show using the integrated visualizer.">
            </div>
            <div class="card-footer">
                <h3>Use the visualizer to prepare.</h3>
            </div>
        </div>
    </div>
    <div class="column col-4">
        <div class="card" style="height:100%;">
            <div class="card-body">
                <img src="/assets/card-show-tmp.jpg" class="card-image" style="width: 100%;" alt="Photo of the light console being used at a large concert.">
            </div>
            <div class="card-footer">
                <h3>Enjoy the show.</h3>
            </div>
        </div>
    </div>
</div>

<br />

<div class="card">
<div class="card-header"><h2>Limitations</h2></div>
<div class="card-body">
Like any tool, Mission-DMX has it's limits. We wish not to hide them.
<ul>
<li><b>Only works on Linux.</b> We do not target Windows or Mac installations. While we're aware that some people are using Mission-DMX on both platforms, installation is quite hard. As we neither have the need (Debian is a fine OS) to support those nor the resources, this will not change in the near future.</li>
<li><b>Initially steep learning curve.</b> While we're working a lot on improving the situation, the Mission-DMX project was started to overcome the restrictions of other affordable light consoles. As a result this flexibility is intimidating to new users. People familliar with tools like Blender will feel right at home though.</li>
<li><b>No show file compatibility with other consoles.</b>While we're using <a href="https://open-fixture-library.org/manufacturers" target="_blank">OFL</a> as a fixture repository, we're not trying to achieve compatibility with the big players out there. The legal hassle isn't worth it ;-)</li>
</ul>
</div>
</div>


<br />
<br />

<div class="card">
<div class="card-header"><h2>Latests posts and tutorials</h2></div>
<div class="card-body">
<ul>
{% for post in site.posts limit:5 %}
    <li><a href="{{site.url}}{{post.url}}">{{ post.title }}</a></li>
{% endfor %}
</ul>
</div>
<br />
<div class="card-footer">
    <a href="{{site.url}}/blog" style="margin-left: 1em;">See More</a>
</div>
</div>
