var CACHE_NAME = 'gasnet-cache-v1';
var urlsToCache = [
	'/gasnet/',
	'/gasnet/assets/css/animated.css',
	'/gasnet/assets/css/bootstrap.min.css',
	'/gasnet/assets/css/dataTables.bootstrap.min.css',
	'/gasnet/assets/css/dataTables.min.css',
	'/gasnet/assets/js/script.js',
	'/gasnet/assets/js/vue.js',
	'/gasnet/assets/js/jquery.dataTables.js',
	'/gasnet/assets/js/jquery.min.js',
	'/gasnet/assets/js/popper.min.js',
	'/gasnet/assets/js/polyfill.min.js',
	'/gasnet/assets/js/bootstrap.min.js',
	'/gasnet/assets/js/bootstrap-vue.js',
	'/gasnet/assets/js/sweetalert.min.js',
	'https://use.fontawesome.com/releases/v5.1.1/css/all.css'
];

// Install serviceWorker
self.addEventListener('install', function (event) {
	// Perform install steps
	event.waitUntil(
		caches.open(CACHE_NAME).then(function(cache){
			console.log('Opened cache');
			urlsToCache.forEach(function (url) {
				cache.add(url).catch(/*optional error handling/logging*/);
			});
		})
	);
});

// Fetch serviceWorker
self.addEventListener('fetch', function (event) {
	event.respondWith(
		caches.match(event.request).then(function (response) {
			// cache hit -- return response
			if (response) {
				return response;
			}

			return fetch(event.request);
		})
	);
});

// Activate serviceWorker
self.addEventListener('activete', function (event) {
	event.waitUntill(
		caches.keys().then(function (cacheNames) {
			return Promise.all(
				cacheNames.filter(function (cacheName) {
					return cacheName != CACHE_NAME;
				}).map(function (cacheName) {
					return caches.delete(cacheName);
				})
			);
		})
	);
});