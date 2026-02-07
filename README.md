## Ka Ming Fung's Personal Website

Created based on the [Hugo Academic Theme](https://academic-demo.netlify.app/) for [Hugo Blox Builder](https://hugoblox.com/).

## ⚠️ Important: Hugo Version Requirement

This site uses **Hugo Blox `blox-tailwind v0.2.1`**, which requires specific Hugo versions.

**REQUIRED VERSION: Hugo v0.127.0 (Extended)**

> [!WARNING]
> DO NOT USE Hugo v0.155.0+ or the latest Homebrew version.
> Newer versions introduce breaking changes that cause the **Grid Layout** (Blogs, Papers, Projects) to break and render as a single column list.

### Checking Your Version

```bash
hugo version
# ✅ Good: hugo v0.127.0+extended ...
# ❌ Bad: hugo v0.155.2+extended ...
```

### Installation Guide (Recommended)

We provide a setup script to automatically download and install the correct Hugo version locally within this project. This avoids conflicts with your system-wide Hugo installation.

1. **Run the setup script:**
   (Only needs to be done once or when upgrading)

   ```bash
   ./bin/setup_hugo.sh
   ```

2. **Activate the environment:**
   This adds the local `bin/` directory to your PATH for the current shell session.

   ```bash
   source bin/activate
   ```

3. **Start the server:**
   Now you can simply run:

   ```bash
   hugo server
   ```

   To exit the environment later, run:

   ```bash
   deactivate
   ```

### Manual Installation (Alternative)

If you prefer to install manually to `/usr/local/bin`:

1. **Download Hugo v0.127.0 Extended:**

   ```bash
   curl -L https://github.com/gohugoio/hugo/releases/download/v0.127.0/hugo_extended_0.127.0_darwin-universal.tar.gz -o /tmp/hugo.tar.gz
   ```

2. **Install:**

   ```bash
   cd /tmp
   tar -xzf hugo.tar.gz
   sudo mv hugo /usr/local/bin/hugo
   rm hugo.tar.gz LICENSE README.md
   ```

3. **Update PATH:**

   ```bash
   export PATH="/usr/local/bin:$PATH"
   ```

## Local Development

```bash
hugo server
```

Access the site at `http://localhost:1313/`.

## Deployment

The site is deployed via GitHub Actions. Push changes to `main` to deploy.
