if ('serviceWorker' in navigator) {
    window.addEventListener('load', function () {
        navigator.serviceWorker.register('/gasnet/sw.js').then(function(registration){
            console.log('ServiceWorker registration successfully with scope: ', registration.scope);
        }, function(err){
            console.log('ServiceWorker registration failed: ', err);
        });
    });
}