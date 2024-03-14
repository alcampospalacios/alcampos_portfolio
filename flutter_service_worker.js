'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"index.html": "a42765c7f3b39b817bd6e65b6375404a",
"/": "a42765c7f3b39b817bd6e65b6375404a",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"favicon.png": "654a5f7a0d442bc3207638bd1a19344e",
"assets/FontManifest.json": "3ddd9b2ab1c2ae162d46e3cc7b78ba88",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/AssetManifest.bin.json": "842a6894856be635ecd91a6599a4f87a",
"assets/assets/images/alcampos.jpg": "11b77be339db872ade3b154b3d821a05",
"assets/assets/images/tkc.jpeg": "09ae0ab91ff23572d70445dd209ee410",
"assets/assets/images/get_image_cache_network.gif": "6bb1576628bd0dab76d29f6db407287a",
"assets/assets/images/pp1.jpeg": "cd3665d680359a0e0da06aa530c763ce",
"assets/assets/images/pp2.jpeg": "d973004c3b47c38219c1907a83372d9d",
"assets/assets/logos/ts.png": "f1e27abd5c1bd895ae9a983783636434",
"assets/assets/logos/gitlab.png": "604df3cb937ff6eea02eda1e8cb31655",
"assets/assets/logos/solid.png": "7df468b57afe05b76a57016d092f157b",
"assets/assets/logos/angular.png": "2fb0a23ae38ff99569c176bd96191629",
"assets/assets/logos/firebase_cloud_messaging.png": "fa6148459d1a0e24c72949dedf741add",
"assets/assets/logos/js.png": "1a756eb6ca471177cdbd231745af5885",
"assets/assets/logos/article_01.png": "f968f2685232655324b280a6eba0a495",
"assets/assets/logos/splash.png": "be7b61518b44197387c3ea30c1ae27b4",
"assets/assets/logos/dart.png": "09e31743ebd46296869781f13facd18d",
"assets/assets/logos/git.png": "fef702d6be16503c5950a313e70f2817",
"assets/assets/logos/github.png": "f86b3cddf360a229e9abb71468c851a9",
"assets/assets/logos/firebase_analytics.png": "5d3490ad15b976a0064b2ee64134bcae",
"assets/assets/logos/ddd.png": "6d10f953a03a2fbdbcef4b797e1c86df",
"assets/assets/logos/firebase_crashlytics.png": "403f7b5c2254da5972fea316f852bcb1",
"assets/assets/logos/css.png": "53bac1cdc47b2d8949eab6d98d5527fb",
"assets/assets/logos/vs_code.png": "be6c5be366f8cc3279378f190b7da036",
"assets/assets/logos/alcampos.png": "7a4987c94d40557f372890baacd222e2",
"assets/assets/logos/sass.png": "1d977fdded7d1d069eb5534c76f27897",
"assets/assets/logos/google_play.png": "ef6ee90b2d92a3fc1d8011ed86b0cd1d",
"assets/assets/logos/github_actions.png": "c0825cf99e37e129c6e2b2002364d491",
"assets/assets/logos/flutter.png": "2bb0098cf8d46bd9df3c39f51501c338",
"assets/assets/logos/html.png": "f2282f94c041c37ef4db028e428e41c1",
"assets/assets/logos/supabase.png": "089c6e032514bf618870a7777732fb1b",
"assets/assets/logos/clean.png": "a9d27741133b3ca2b91890b194dc307d",
"assets/AssetManifest.bin": "b707b59e4517336bec34860e473c879d",
"assets/NOTICES": "1417b5bafa8cba9ddabb50c541892722",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "658b490c9da97710b01bd0f8825fce94",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5070443340d1d8cceb516d02c3d6dee7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d7791ef376c159f302b8ad90a748d2ab",
"assets/AssetManifest.json": "454aad78c4ef523bce13cd38e1b8ae8f",
"version.json": "89d2f299ced3977567821d365b500b51",
"icons/Icon-192.png": "2a92bc76aa84f888568daeb68863ee81",
"manifest.json": "8811e00a200d2e473c5f8505758790e0",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"main.dart.js": "22d240c15da78fa21ec277e22c00c08b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
