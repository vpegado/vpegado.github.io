---
layout: post
title:  "Setting up this site"
date:   2014-01-22 18:36:00
tags: tutorial hosting jekyll
---

For most of my projects I use [Git][git] as source control and store them on [GitHub][github].
They offer a service called [Github Pages][github-pages] where you can host static pages.
There you have a static page generator tool called [Jekyll][jekyll] out of the box witch takes care of the most boring parts and a [CDN][cdn] in front for better hosting performance.
You can do this a number of ways and here here is one.

## Get started

1. [Get an account on GitHub][github-join].

2. [Create a new repository][github-new] called `username.github.io`. Don't forget to replace `username` with your own GitHub username in all of the examples.

4. Open up the terminal {% highlight bash %}
$ gem install jekyll
# Installs jekyll
$ jekyll new username.github.io
# Generates boilerplate
$ cd username.github.io
$ git init
# Sets up the Git files
$ git add -A
$ git commit -m 'first commit'
$ git remote add origin https://github.com/username/username.github.io.git
# Pointing it at your GitHub repository
$ git push origin master
# Sends your changes to GitHub
{% endhighlight %}
5. Go to <http://username.github.io/> and take a look at the result.

## Configuration
Edit `_config.yml` file to your own liking.
Check [Jekyll Configuration][jekyll-config] to see what is avalible.

## Local preview
Go to the root of your project and run `jekyll server --watch` go to <http://localhost:4000> to preview your changes.

[cdn]:            http://en.wikipedia.org/wiki/Content_delivery_network
[git]:            http://git-scm.com
[github]:         https://github.com
[github-join]:    https://github.com/join
[github-new]:     https://github.com/repositories/new
[github-pages]:   http://pages.github.com/
[jekyll]:         http://jekyllrb.com
[jekyll-config]:  http://jekyllrb.com/docs/configuration/