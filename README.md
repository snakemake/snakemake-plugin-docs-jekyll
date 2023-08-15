# Snakemake Plugin Jekyll Docs Template

![assets/img/snakemake-logo.png](assets/img/snakemake-logo.png)

This is a Snakemake jekyll template intended for plugin authors to easily deploy
documentation alongside their repositories. Snakemake currently supports the following
plugin types:

 - [Executor Plugins](https://github.com/snakemake/snakemake-interface-executor-plugins)

## Usage

Using the [theme](https://rubygems.org/gems/snakemake-plugin-jekyll) is easy - 
just add it as a `remote_theme` to your config yaml. 
We will be providing an example site (to use as a template) soon!

```bash
# Theme for docs
plugins:
  - jekyll-remote-theme

remote_theme: snakemake/snakemake-plugin-docs-jekyll
```

And add 

```
gem "jekyll-remote-theme"
```

to your Gemfile.

### Add a Page

And then you can add any pages with the following front end matter (header)
to use the documentation template.

```
---
title: plugin
layout: docs
permalink: /cmake/
---
```

### Add a Sidebar

To add a sidebar to your pages, create a file under `_data/menus/` that is named
according to your sidebar, e.g., `_data/menus/mysidebar.yaml` for a sidebar named `mysidebar`.
The file should be a flat list of names and urls:

```yaml
- title: My Page
  url: "mypage"
- title: Root of Site
  url: ""
```

And then you can add this to the front end matter of pages where you want it to appear:

```
---
title: plugin
layout: docs
sidebar: mysidebar
permalink: /pagename/
---
```

## Development

If you want to use the gem, it is built during CI, and release is currently done from the command line:

```bash
$ /bin/bash script/release.sh
```

But this isn't required since we can use `jekyll-remote-theme` and use it directly from GitHub.
If you do release, you should bump the version in [snakemake-plugin-docs-jekyll.gemspec](snakemake-plugin-docs-jekyll.gemspec)
and be on the main branch.


## License

HPCIC DevTools is distributed under the terms of the MIT license.
All new contributions must be made under this license.

See [LICENSE](https://github.com/converged-computing/cloud-select/blob/main/LICENSE),
[COPYRIGHT](https://github.com/converged-computing/cloud-select/blob/main/COPYRIGHT), and
[NOTICE](https://github.com/converged-computing/cloud-select/blob/main/NOTICE) for details.

SPDX-License-Identifier: (MIT)

LLNL-CODE- 842614