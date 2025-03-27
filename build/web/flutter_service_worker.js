'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".well-known/apple-app-site-association": "071976c09e4be52f8978b70a1caa6214",
".well-known/assetlinks.json": "4be497333bffc423bfbdec7efb198057",
"assets/AssetManifest.bin": "bfdf2e1d674afc92f9369d65f5ff9843",
"assets/AssetManifest.bin.json": "95f1e67dc6300b8c6f3928aa58031dae",
"assets/AssetManifest.json": "633dd941bdda9d316b7d75bac181a2b2",
"assets/assets/png/about_1.png": "e6536d8f09c52df8772f29523fed8938",
"assets/assets/png/about_2.png": "6a7550ecda6c2b26f6f89c5c71a98fd2",
"assets/assets/png/about_signature.png": "1a41e1699ce1f7f54b5dc63b603f156b",
"assets/assets/png/about_signature_mobile.png": "9539b69cbe8d3448245ebd3f1a40063e",
"assets/assets/png/all_events_one_place.png": "5cd33dec3d5ce1d3d0bf7d625cbe1da8",
"assets/assets/png/all_events_one_place_compact.png": "8473dad997d45456239fa7484debeade",
"assets/assets/png/app_icon.png": "b7dc72174c8e7e60d850dede69050d76",
"assets/assets/png/app_store.png": "fd7863e3072b7cec53c3d979e3b73331",
"assets/assets/png/app_store_alt.png": "ea155838f797016b3d9cbe7b268a967e",
"assets/assets/png/app_store_qr.png": "0003bbe0133180ab9d6643e390eab8f7",
"assets/assets/png/Background.png": "0fc5afeae7e39f5116bf73f4b3683dae",
"assets/assets/png/bg.png": "a86c43e3f3b09482a3b511223ab7072e",
"assets/assets/png/city_get_app_bg.png": "eb344a2ac61ed4289b816401a0923ced",
"assets/assets/png/contact_us.png": "1735602e8f5957f0a0f7bd9792aaddb6",
"assets/assets/png/cut%2520blob.png": "07e6e6492f0cfcf5b9f77a6a0c348ea4",
"assets/assets/png/download_the_app.png": "6c6ad0e8cabc1945d5f19cbc9fbac0f3",
"assets/assets/png/email.png": "90723f80bd3dca60b65e8c7ed5219601",
"assets/assets/png/fire.png": "2bd0e23b8dbc2752e2b25599801c9224",
"assets/assets/png/footer_glow.png": "b9fa73591460fbd98d0ec2accd1cb69a",
"assets/assets/png/going_out_made_easy.png": "2104bddac6e39ad0fc06ae4ad56e8240",
"assets/assets/png/going_out_made_easy_compact.png": "067417c0c1278e7bcbc521ea23d8e48d",
"assets/assets/png/google_play.png": "09de0a0fdcf2e03c5d024f18d294d8cb",
"assets/assets/png/google_play_alt.png": "46f7cc787abc3fe91b084d7ed962bb8e",
"assets/assets/png/logo.png": "985fa9986803868878b0ae3dfb426668",
"assets/assets/png/main_images.png": "10062cb46a5dbe9c0b98bd439a151daf",
"assets/assets/png/main_images_compact.png": "588db4aec129c641fc03f6b18a68605c",
"assets/assets/png/party.png": "1817b56e05118891a0a3a90a1b413056",
"assets/assets/png/smart_search1.png": "8d370b4997f66ab5b4810d119fb2756e",
"assets/assets/png/smart_search2.png": "f9413390a3eece1b16801339862e1faa",
"assets/assets/png/smart_search3.png": "58f938c0e4366f2be8f8b8484e2d626c",
"assets/assets/png/smart_search_compact1.png": "76f065e369e018d6d46b25dda46d0045",
"assets/assets/png/smart_search_compact2.png": "64c3268465196495dcfcd91811540770",
"assets/assets/png/smart_search_compact3.png": "5f0a7b6799b6fbe9c8e5bb59215a4c03",
"assets/assets/png/star.png": "ad1bac0e587825fc3344508df45fc808",
"assets/assets/png/sub%2520bg%2520mobile.png": "13c302b3dd9ffc11779ac5fc24d3eeba",
"assets/assets/png/subscribe_bg.png": "6da545d7cb92768c233bd0c9a0efb36c",
"assets/assets/png/swipe_scroll_discover.png": "be912bc27df9487e3c68bb64304a5630",
"assets/assets/png/swipe_scroll_discover_compact.png": "32b695ece8db42559a100299c28da74c",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "1b807ca1603c7ffa6b30f978682b0f1f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "9580cd38a8c67a9bc2b588fc581004a4",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "2bbb636288cf956d59a22478f1513d79",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "288f8606c36af639add99461ab40c298",
"icons/Icon-192.png": "2462c361f0f7737e730de132f8c67545",
"icons/Icon-512.png": "9c61491b37e941e425cd07676836299e",
"icons/Icon-maskable-192.png": "2462c361f0f7737e730de132f8c67545",
"icons/Icon-maskable-512.png": "9c61491b37e941e425cd07676836299e",
"index.html": "ebfec223193b7c977e070daf1557f834",
"/": "ebfec223193b7c977e070daf1557f834",
"main.dart.js": "70baea5193f3878a33d717d002005db3",
"manifest.json": "5d308e5ef55d8beabceff982ded2339c",
"version.json": "acdf3648388b7e7b51c2720ac0edc15f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
