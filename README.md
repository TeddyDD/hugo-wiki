# Hugo Wiki Theme

Wiki theme for [Hugo static website generator][hugo]. Inspired by http://wiki.xxiivv.com/
and my *hate to modern webdev*. Designed for artists/developers.

## Features

- blog: just standard blog
- wiki: post notes, projects etc.
- support for default Hugo's [taxonomies][taxonomies] `categories` and `tags`
- no JavaScript by default: everything is static HTML. TODO: Optional [KaTeX][katex],
Discuss, Google Analytics, zoom.js
- lightweight - about 300 lines of simple CSS.
- leverage [Hugo][hugo] features whenever possible: syntax highlighting, RSS,
pagination, shortcodes
- easy to deploy on [Zeronet][zeronet] or [Dat][dat], TODO: builtin Dat reduction support

## Config

`config.toml`

``` toml

baseURL = "http://example.org/"
languageCode = "en-us"
title = "My Title"
copyright = "Jonh Dee 2017"

pygmentsCodeFences = true
# https://help.farbox.com/pygments.html
pygmentsStyle = "manni"
GoogleAnalytics = 'UA-URCODE'

# Optional - output json (for custom search)
[outputs]
    home = [ "HTML", "RSS", "JSON"]


[author]
    name = "John Dee"

[params]
    # Put your logo in /static directory
    logo = "/logo.svg"

sectionPagesMenu = "main"
[[ menu.main ]]
   name="Github"
   url="https://github.com/jdee"
   weight = 300

[[ menu.main ]]
   name="Posts"
   url="/post/"
   identifier="post"
   weight = -300

[[ menu.main ]]
   name="Wiki"
   url="/wiki/"
   identifier="wiki"
   weight = -200

```
## Favicon

Use https://realfavicongenerator.net/ and put all generated files into
`static` directory. Set `RealFaviconGenerator` param to true.

``` yaml
[params]
   RealFaviconGenerator = true
```


## Content

### Index page

Crete index page using `hugo new _index.md`

### Posts

Create post using standard hugo command `hugo new post/post-name.md`
Optionally add tags to [Front Matter](https://gohugo.io/content-management/front-matter/)
```
tags: ["art", "music"]
```

Don't use categories here.

### Wiki

Wiki support two types of content: projects and notes.

- project: use `categories: ["project"]`
- notes: use `categories: ["note"]`

You should set description for project pages:
```
description: "Awesome project"
```
Description is shown only for projects.
Tags are optional both for project and notes.

## Shorcodes

Standard hugo shorcodes like `yt` works.
This theme ships with following additional shortcodes:

### ig

Create image that opens in full size when clicked.
```
{{< ig "link" "description" >}}
```

### kbd

Renders keyboard keys.

```
{{< kbd CTRL ALT DEL >}}
```

[hugo]:https://gohugo.io/
[taxonomies]:https://gohugo.io/content-management/taxonomies/
[katex]:https://khan.github.io/KaTeX/
[zeronet]:https://zeronet.io/
[dat]:https://beakerbrowser.com/
