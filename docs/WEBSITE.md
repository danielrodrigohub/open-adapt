# Project website / Sitio del proyecto

- English: https://danielrodrigohub.github.io/open-adapt/
- Español: https://danielrodrigohub.github.io/open-adapt/es/

The two language editions are static HTML, so their content and language metadata are available without JavaScript. `scripts/build_site.py` contains both sets of text; `site/assets/style.css` defines the responsive design. There are no external fonts, analytics or application server requirements.

## Edit and preview

```sh
python3 scripts/build_site.py
python3 scripts/check_site.py
python3 -m http.server 4173 --directory site
```

Open http://localhost:4173/ and http://localhost:4173/es/. Commit the regenerated HTML alongside the builder changes. A push to main affecting the website triggers `.github/workflows/pages.yml`, validates generated pages and publishes the `site/` directory through GitHub Pages.

When publishing a new app version, update the release URL and SoftwareApplication version in `scripts/build_site.py`, then regenerate. Screenshots must correspond to real app captures; missing shoe readings must not be replaced by invented battery percentages.

## Search and sharing

Each edition has a descriptive title, description, canonical URL and English/Spanish/x-default `hreflang` alternatives. Open Graph/Twitter metadata use the shared PNG banner. SoftwareApplication structured data describes the experimental Android app; no ratings or download counts are invented. `sitemap.xml` lists both editions.

`robots.txt` is included at the project URL; crawlers normally read robots rules at the domain root, which this repository does not control. Public pages are crawlable without a login. Search-engine indexing and position are not guaranteed and may take time. The owner can optionally submit the sitemap through their own search-console account.

The glowing Swoosh in [the banner](../site/assets/revive-banner.png) is concept artwork, not a claimed hardware capability. The image was made with the built-in image-generation tool from the user's reference; [the exact prompt](artwork/README-banner-prompt.md) is retained. The [app product artwork prompt](../analysis/openadapt/artwork-prompt.md) is also recorded.
