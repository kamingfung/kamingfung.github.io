// ---------------------------------------------------------------------------
// THE ONLY FILE YOU NEED TO EDIT.
//
// Set these to the live Cloudflare URLs once the deploys succeed. Workers
// deploys land on https://<worker-name>.<account-subdomain>.workers.dev —
// find them in the Cloudflare dashboard, or run `npx wrangler deploy` and read
// the URL it prints.
//
// While a value is left empty, that route shows a plain "not configured yet"
// page instead of bouncing visitors to a dead URL.
// ---------------------------------------------------------------------------
window.REDIRECT_TARGETS = {
  blog: "https://blogs.kamingfung.workers.dev",
  academic: "https://academic.kamingfung.workers.dev",
};
