---
layout: post
title:  "Setting up this site"
date:   2014-01-22 18:36:00
categories: jekyll update
---

For most of my projects I use [Git][git] as source control and store them on [GitHub][github].
They offer a service called [Github Pages][github-pages] where you can host static pages.
There you have a static page generator tool called [Jekyll][jekyll] out of the box witch takes care of the most boring parts and a [CDN][cdn] in front for better hosting performance.
You can do this a number of ways and here here is one.

1. [Get an account on GitHub][github-join].
2. [Create a new repository][github-new] called `<username>.github.io`. Don't forget to replace `<username>` with your own GitHub username.
3. Clone the repository to your desktop by running<br> `git clone git://github.com/<username>/<username>.github.io.git`.
4. Install Jekyll by running `gem install jekyll`.
5. Generate jekyll boilerplate by running `jekyll new <username>.github.io` and copy the contents of the folder to your project root.
5. Edit `_config.yml` file to your own liking.
7. Go to the root of your project and run `jekyll server` go to <http://localhost:4000> to preview your changes.
8. Commit and Push the changes to GitHub and see the result at <http://username.github.io/>




[cdn]:            http://en.wikipedia.org/wiki/Content_delivery_network
[git]:            http://git-scm.com
[github]:         https://github.com
[github-join]:    https://github.com/join
[github-new]:     https://github.com/repositories/new
[github-pages]:   http://pages.github.com/
[jekyll]:         http://jekyllrb.com
