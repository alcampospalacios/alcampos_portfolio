'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"main.dart.js": "f75e79729e0cafbcb79e922b7fe813c0",
"assets/AssetManifest.json": "a397299a1cb26463f19dfcdf36615023",
"assets/assets/images/pp1.jpeg": "cd3665d680359a0e0da06aa530c763ce",
"assets/assets/images/tkc.jpeg": "09ae0ab91ff23572d70445dd209ee410",
"assets/assets/images/pp2.jpeg": "d973004c3b47c38219c1907a83372d9d",
"assets/assets/images/alcampos.jpg": "11b77be339db872ade3b154b3d821a05",
"assets/assets/images/get_image_cache_network.gif": "6bb1576628bd0dab76d29f6db407287a",
"assets/assets/logos/angular.png": "2fb0a23ae38ff99569c176bd96191629",
"assets/assets/logos/flutter.png": "2bb0098cf8d46bd9df3c39f51501c338",
"assets/assets/logos/dart.png": "09e31743ebd46296869781f13facd18d",
"assets/assets/logos/git.png": "fef702d6be16503c5950a313e70f2817",
"assets/assets/logos/js.png": "1a756eb6ca471177cdbd231745af5885",
"assets/assets/logos/sass.png": "1d977fdded7d1d069eb5534c76f27897",
"assets/assets/logos/splash.png": "be7b61518b44197387c3ea30c1ae27b4",
"assets/assets/logos/html.png": "f2282f94c041c37ef4db028e428e41c1",
"assets/assets/logos/ddd.png": "6d10f953a03a2fbdbcef4b797e1c86df",
"assets/assets/logos/css.png": "53bac1cdc47b2d8949eab6d98d5527fb",
"assets/assets/logos/github_actions.png": "c0825cf99e37e129c6e2b2002364d491",
"assets/assets/logos/clean.png": "a9d27741133b3ca2b91890b194dc307d",
"assets/assets/logos/alcampos.png": "7a4987c94d40557f372890baacd222e2",
"assets/assets/logos/ts.png": "f1e27abd5c1bd895ae9a983783636434",
"assets/assets/logos/google_play.png": "ef6ee90b2d92a3fc1d8011ed86b0cd1d",
"assets/assets/logos/github.png": "f86b3cddf360a229e9abb71468c851a9",
"assets/assets/logos/gitlab.png": "604df3cb937ff6eea02eda1e8cb31655",
"assets/assets/logos/vs_code.png": "be6c5be366f8cc3279378f190b7da036",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/shaders/ink_sparkle.frag": "face5c2f106eecf1dda786745c50b01f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dd3c4233029270506ecc994d67785a37",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "613e4cc1af0eb5148b8ce409ad35446d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d1722d5cf2c7855862f68edb85e31f88",
"assets/FontManifest.json": "3ddd9b2ab1c2ae162d46e3cc7b78ba88",
"assets/NOTICES": "9cd8b448aea04ec7ba786292b36f8b59",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"index.html": "9d9538607b356a69974b51ec1c3d48c2",
"/": "9d9538607b356a69974b51ec1c3d48c2",
"favicon.png": "654a5f7a0d442bc3207638bd1a19344e",
"version.json": "89d2f299ced3977567821d365b500b51",
"manifest.json": "8811e00a200d2e473c5f8505758790e0",
"icons/Icon-192.png": "2a92bc76aa84f888568daeb68863ee81"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
