---
layout: post
title:  "AngularJS File Directive"
date:   2014-05-20 18:30:00
tags: angularjs directive file javascript
---

A common component in web applications is the form `<input type="file">`.
To connect this input any kind of logic or just render a preview of the selected files tends to be a hassle involving a `POST` to some server-side code.
For some cases it would be a lot easier containing parts of this on the client-side.

After implementing this for various angular projects a pretty useful [directive][github-repo] started to emerge.

## Usage

{% highlight javascript %}
angular.module('myApp', ['file']);
{% endhighlight %}

{% highlight html %}
{% raw %}
<!-- Bind the values to $scope.files -->
<input type="file"
  file="files"
  accept="image/*"
  multiple>

<!-- Render the selected files directly in the view -->
<div ng-repeat="file in files">
  <h4>{{ file.name }}</h4>
  <img alt="{{ file.name }}"
    ng-src="data:{{ file.type }};base64,{{ file.body }}">
</div>
{% endraw %}
{% endhighlight %}

## Example
{% raw %}
<ul ng-app="myApp" ng-controller="MainCtrl" class="list-group">
  <li class="list-group-item">
    <div class="form-group">
      <label class="btn btn-lg btn-block" ng-class="{'btn-warning': !files, 'btn-success': files}">
        <span ng-show="!files">Select Files</span>
        <span ng-show="files.length === 1">One File Selected</span>
        <span ng-show="files.length > 1">{{ files.length }} Files Selected</span>
        <input class="hidden" type="file" file="files" accept="image/*" multiple>
      </label>
    </div>
    <div class="form-group" ng-show="files">
      <button class="btn btn-block btn-danger" ng-click="clear()">Clear Files</button>
    </div>
  </li>
  <li class="list-group-item" ng-repeat="file in files">
    <h4 class="list-group-item-heading">{{ file.name }}</h4>
    <img class="img-responsive" ng-src="data:{{ file.type }};base64,{{ file.body }}" alt="{{ file.name }}">
  </li>
</ul>
<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.16/angular.min.js"></script>
<script src="//cdn.rawgit.com/vpegado/angular-file-directive/v1.2.1/file.js"></script>
<script>
angular.module('myApp', ['file'])
  .controller('MainCtrl', function ($scope) {
    $scope.clear = function () {
      delete $scope.files;
    };
  });
</script>
{% endraw %}

## How it works
- Listen for change in input element.
    - For each targeted file:
        2. Read the file as `text` or `binary string`.
        3. Base64 encode body if file type is `binary string`.
        5. Compile type, name & body.
        6. Apply new values to `$scope` when last file is done.

## Installation
Install with [Bower][bower]:
{% highlight bash %}
$ bower install angular-file-directive
{% endhighlight %}

Include from a [RawGit][rawgit]'s CDN:
{% highlight html %}
<script src="//cdn.rawgit.com/vpegado/angular-file-directive/v1.2.1/file.js"></script>
{% endhighlight %}

Or [download](https://github.com/vpegado/angular-file-directive/archive/master.zip) manually.

## The code
Please check it out on [GitHub][github-repo] and submit any [issues][github-issues] encountered.



[bower]: http://bower.io/
[rawgit]: https://rawgit.com/
[github-repo]: https://github.com/vpegado/angular-file-directive
[github-issues]: https://github.com/vpegado/angular-file-directive/issues
