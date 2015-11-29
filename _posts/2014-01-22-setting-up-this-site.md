---
layout: post
title:  "Setting up this site"
date:   2014-01-22 18:36:00
tags: tutorial hosting jekyll
---

For most of my projects I use [Git] as source control and store them on [GitHub].
They offer a service called [Github Pages] where you can host static pages.
There you have a static page generator tool called [Jekyll] out of the box witch takes care of the most boring parts and a [CDN] in front for better hosting performance.
You can do this a number of ways and here here is one.

## Get started

1. [Get an account on GitHub].

2. [Create a new repository] called `username.github.io`. Don't forget to replace `username` with your own GitHub username in all of the examples.

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
Check [Jekyll Configuration] to see what is avalible.

## Local preview
Go to the root of your project and run
{% highlight bash %}
$ jekyll server --watch
Configuration file: /project/_config.yml
            Source: /project
       Destination: /project/_site
      Generating...
                    done.
 Auto-regeneration: enabled for '/project'
Configuration file: /project/_config.yml
    Server address: http://127.0.0.1:4000/
  Server running... press ctrl-c to stop.
{% endhighlight %}
Go to <http://127.0.0.1:4000/> to preview your changes.

[CDN]:                      http://en.wikipedia.org/wiki/Content_delivery_network
[Git]:                      http://git-scm.com
[Github]:                   https://github.com
[Get an account on GitHub]: https://github.com/join
[Create a new repository]:  https://github.com/repositories/new
[Github Pages]:             http://pages.github.com/
[Jekyll]:                   http://jekyllrb.com
[Jekyll Configuration]:     http://jekyllrb.com/docs/configuration/