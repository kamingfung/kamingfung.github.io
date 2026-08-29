# kamingfung.github.io

Redirect stub. Nothing is published from here — it exists only to forward
traffic from the old GitHub Pages address to the current sites on Cloudflare.

| Old address | New home |
| --- | --- |
| `kamingfung.github.io/*` | the blog |
| `kamingfung.github.io/academic/*` | the academic site |

Both source repos are private, which is why this public stub is needed: GitHub
Pages will not serve a user site from a private repo on the free plan.

## Configuring it

Edit **`config.js`** — it is the only file that needs changing:

```js
window.REDIRECT_TARGETS = {
  blog: "https://<worker>.<subdomain>.workers.dev",
  academic: "https://<worker>.<subdomain>.workers.dev",
};
```

Leave a value empty and that route shows a "not configured yet" message rather
than bouncing visitors to a dead URL.

## How deep links survive

GitHub Pages serves `404.html` for any path it cannot match. Both `index.html`
and `404.html` load the same redirect logic, so `/blogs/some-post/` forwards to
`<blog>/blogs/some-post/` with the path, query string, and fragment intact.
Paths under `/academic` are routed to the academic site with the `/academic`
prefix stripped.
