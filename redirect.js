// Computes the forwarding URL for a given path. Exposed separately from the
// navigation so the mapping can be exercised without actually redirecting.
function computeRedirect(path, search, hash, targets) {
  var isAcademic = path === "/academic" || path.indexOf("/academic/") === 0;
  var base = isAcademic ? targets.academic : targets.blog;
  if (!base) return null;

  var suffix = isAcademic ? path.replace(/^\/academic/, "") : path;
  if (suffix === "") suffix = "/";
  return base.replace(/\/$/, "") + suffix + search + hash;
}

(function () {
  var url = computeRedirect(
    window.location.pathname,
    window.location.search,
    window.location.hash,
    window.REDIRECT_TARGETS || {}
  );

  if (!url) {
    document.addEventListener("DOMContentLoaded", function () {
      var el = document.getElementById("status");
      if (el) {
        el.textContent =
          "This site has moved, but the new address has not been configured yet. " +
          "Set window.REDIRECT_TARGETS in config.js.";
      }
    });
    return;
  }
  window.location.replace(url);
})();
