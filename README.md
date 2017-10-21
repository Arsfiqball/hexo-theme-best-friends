# Best Friends
Iqbal's Personal Website/Hexo Theme

![Desktop](/screenshots/desktop.png)


![Mobile](/screenshots/mobile.png)


## Installation & Configuration

#### Theme installation
Make sure you already installed [gulp](https://gulpjs.com/).
If you're not, just run this command:
```bash
npm install -g gulp
```

Go to folder themes
```bash
cd themes
```

Clone this repository
```bash
git clone https://github.com/Arsfiqball/hexo-theme-best-friends.git best-friends
```
> If you have no **Git**, you can download this repository and extract it to folder ``/themes/best-friends``

Go to installed theme directory, install the dependencies, and run gulp tasks
```bash
cd best-friends
npm install
gulp
```

Done, now go back to your site root directory
```bash
cd ../../
```

#### Theme configuration
Now open your site configuration ``_config.yml`` (NOT the theme ``_config.yml``)

Change your ``theme`` configuration to ``best-friends``
```bash
theme: best-friends
```

Disable hexo code highlighing
```bash
highlight:
  enable: false
```

Add the following configuration for your site
```yml
about_author: "💻 Fullstack Web Developer 🎨 Coding Artist ⚡ Electrical Engineering Student" # about you (optional)
cover_image: /images/cover.jpg # url of your website cover image (required)
profile_image: /images/profile.jpg # url of your website profile image (required)

socials:
  facebook: https://facebook.com/arsfiqball # url to your Facebook account (optional)
  twitter: https://twitter.com/arsfiqball # url to your Twitter account (optional)
  instagram: https://instagram.com/arsfiqball # url to your Instagram account (optional)
  linkedin: https://www.linkedin.com/in/arsfiqball/ # url to your Linked In account (optional)
  github: https://github.com/arsfiqball # url to your GitHub account (optional)
  email: "mailto:iqballmags@gmail.com" # url to your E-Mail (optional)

disqus_comment_box : arsfiqball-github-blog # your blog's Disqus ID
```

## Issues
[Issues](https://github.com/Arsfiqball/hexo-theme-best-friends/issues)

## License
[MIT](/LICENSE)

## Maintainer
[Arsfiqball](http://www.arsfiqball.com)
