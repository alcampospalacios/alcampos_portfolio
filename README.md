# alcampos_portfolio

This is a portfolio on flutter created by alcampospalacios
Beauty an simple interface mobil and web.

## Getting Started

This project is using Gh-Pages for automatic deployment on githubpages

- [You can find more information about deploy web app, here](https://github.com/bluefireteam/flutter-gh-pages)
- [Here a video about how do it on youtube](https://github.com/bluefireteam/flutter-gh-pages)

First: Create a workflows folder inside .github and after web.yml inside with this code:
.github\workflows\web.yml

```
name: Gh-Pages

on:
push:
branches: [master]

jobs:
build:
runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2 # Only works with v2
      - uses: subosito/flutter-action@v1
      - uses: bluefireteam/flutter-gh-pages@v7
        with:
          webRenderer: html
          baseHref: /alcampos_portfolio/

```

webRender: Is to build your app using canvaskit or html, by default is canvaskit and this currently has a performance on initial load issue.

baseHref: This is the name of your repo and will be part of the url.

Now you need to add this setting to your project on github:
![settings](https://user-images.githubusercontent.com/54634181/187593456-ed30429a-2430-4438-b996-87bab15cbeb6.jpeg)


## Fixing performance problem on load initial

Now we need to add some script to get a better performance on load

- [This code was writed by Ditman in this discuss issue, here](https://github.com/flutter/flutter/issues/76009)

Bottom of <link rel="manifest" href="manifest.json" /> remove the existen code and paste
this inside the html label, you can see the full code on web/index.html:

```
<script>
      let searchParams = new URLSearchParams(window.location.search);
      if (searchParams.has('renderer')) {
        window.flutterWebRenderer = searchParams.get('renderer');
        console.log(
          searchParams.get('renderer') + ' renderer requested in the URL'
        );
      }
      // The value below is injected by flutter build, do not touch.
      var serviceWorkerVersion = null;
    </script>

    <!-- This script adds the flutter initialization JS code -->
    <script src="flutter.js" defer=""></script>
    <link rel="stylesheet" type="text/css" href="splash/style.css" />
    <meta
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
      name="viewport"
    />

  </head>
  <body>
    <!-- Loading indicator -->
    <div id="loading">
      <style>
        body {
          inset: 0;
          overflow: hidden;
          margin: 0;
          padding: 0;
          position: fixed;
        }

        #loading {
          align-items: center;
          display: flex;
          height: 100%;
          justify-content: center;
          width: 100%;
        }

        #loading img {
          animation: 1s ease-in-out 0s infinite alternate breathe;
          opacity: 0.66;
          transition: opacity 0.4s;
        }

        #loading.main_done img {
          opacity: 1;
        }

        #loading.init_done img {
          animation: 0.33s ease-in-out 0s 1 forwards zooooom;
          opacity: 0.05;
        }

        @keyframes breathe {
          from {
            transform: scale(1);
          }

          to {
            transform: scale(0.95);
          }
        }

        @keyframes zooooom {
          from {
            transform: scale(1);
          }

          to {
            transform: scale(10);
          }
        }
      </style>
      <img src="icons/Icon-192.png" alt="Loading indicator..." />
    </div>

    <script>
      window.addEventListener('load', function () {
        var loading = document.querySelector('#loading');
        _flutter.loader
          .loadEntrypoint({
            serviceWorker: {
              serviceWorkerVersion: serviceWorkerVersion,
            },
          })
          .then(function (engineInitializer) {
            loading.classList.add('main_done');
            return engineInitializer.initializeEngine();
          })
          .then(function (appRunner) {
            loading.classList.add('init_done');
            return appRunner.runApp();
          })
          .then(function (app) {
            // Wait a few milliseconds so users can see the "zoooom" animation
            // before getting rid of the "loading" div.
            window.setTimeout(function () {
              loading.remove();
            }, 200);
          });
      });
    </script>

  </body>
```
