# Community Landing Page
A Landing Page built with Middleman + React and hosted with GitHub Pages.

This repository features the content as well as the template / layout found in the `source` folder.

The tabbed community feed built with React is maintained separately as a [git-submodule](http://git-scm.com/docs/git-submodule) in the [react-community-module](https://github.com/DannyFischer/react-community-module) repository.

---
### Usage
`git clone --recursive https://github.com/DannyFischer/hey.kreation.io.git && cd hey.kreation.io`

`bundle install` — Install all the dependencies.

`bundle exec middleman` — Middleman runs and watches for changes

Open [`http://localhost:4567/`](http://localhost:4567/) and do things

`bundle exec middleman deploy` — Deploys the site as configured in [`config.rb`](https://github.com/DannyFischer/hey.kreation.io/blob/master/config.rb#L33)
