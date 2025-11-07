---
permalink: /downloads
title: downloads
layout: page
---

<div class="container-full text-center">
  <div class="container grid-xl">
    <div class="columns negative-m-s">
      <div class="column col-12 text-center">
        <h1>Downloads</h1>
      </div>
      <div class="column col-4 col-md-6 col-sm-12">
        <a href="">
          <div class="card card-link">
            <div class="card-body text-center my-4">
              <h5 class="text-bold">Source Code</h5>
              <p class="m-0">Do It Yourself!</p>
            </div>
          </div>
        </a>
      </div>
      <div class="column col-4 col-md-6 col-sm-12">
        <a href="">
          <div class="card card-link">
            <div class="card-body text-center my-4">
              <h5 class="text-bold">Embedded Image</h5>
              <p class="m-0">Run on bare metal!</p>
            </div>
          </div>
        </a>
      </div>
      <div class="column col-4 col-md-6 col-sm-12">
        <a href="">
          <div class="card card-link">
            <div class="card-body text-center my-4">
              <h5 class="text-bold">Packaged Installer</h5>
              <p class="m-0">Install on Desktop!</p>
            </div>
          </div>
        </a>
      </div>
      <div class="column col-12 text-center mt-16">
        <h4>Looking for something specific?</h4>
      </div>
      <div class="column col-5 col-sm-12 p-8 mb-8 col-mx-auto">
        <h5>Nightly Builds</h5>
        <p style="text-align: justify;">Nightly builds are available for all branches but only the main ones are listed below. If you need a different one, replace the branch in the link.</p>
        <a href="downloads/fish/nightly/main/bin/fish">Fish <i class="uil uil-arrow-right arrow-hover"></i></a><br>
        <a href="">Editor <i class="uil uil-arrow-right arrow-hover"></i></a>
      </div>
      <div class="column col-5 col-sm-12 p-8 mb-8 col-mx-auto">
        <h5>Tools</h5>
        <p style="text-align: justify;">Fish provides a set of tools ranging from ArtNet identification to hardware commanding. These are not part of above packages but can be downloaded below.</p>
        <a href="downloads/tools/chelpdatagen">Color Data Generator <i class="uil uil-arrow-right arrow-hover"></i></a><br>
        <a href="downloads/tools/ftdi_test">FTDI Interface Tester <i class="uil uil-arrow-right arrow-hover"></i></a><br>
        <a href="downloads/tools/ioboardctrl">I/O Board Controller <i class="uil uil-arrow-right arrow-hover"></i></a><br>
        <a href="downloads/tools/sample_xml_generator">Test file generator <i class="uil uil-arrow-right arrow-hover"></i></a>
      </div>
      <div class="column col-5 col-sm-12 p-8 mb-8 col-mx-auto">
        <h5>Fixture Libraries</h5>
        <p style="text-align: justify;">By default, the editor will download a release from <a href="https://open-fixture-library.org/categories">OFL</a>. If a different one is required, they can be downloaded here.</p>
        <a href="">TODO <i class="uil uil-arrow-right arrow-hover"></i></a>
      </div>
      <div class="column col-12 text-center mt-16">
        <h4>Releases</h4>
      </div>
      {% for release in site.data.releases %}
      <div class="column col-12">
        <hr>
      </div>
      <div class="column col-4" style="text-align: left;">
        <h5>{{ release.version }}</h5>
        <p class="m-0 text-dark">Minimum Fish revision: {{ release.fish_min_rev }}</p><br>
        <a href="{{ site.url }}{{ release.source_link }}">Source Code</a><br>
        <a href="{{ site.url }}{{ release.package_link }}">Package</a>
      </div>
      <div class="column col-1"></div>
      <div class="column col-7">
        <ul style="text-align: left;">
        {% for change in release.changes %}
          <li>{{ change }}</li>
        {% endfor %}
        </ul>
      </div>
      {% endfor %}
    </div>
  </div>
</div>
