// @ts-check
import { defineConfig } from "astro/config";

// The product's home page: one static page, published to GitHub Pages at the
// organization's root. SITE_URL changes when a custom domain is attached.
export default defineConfig({
  site: process.env.SITE_URL ?? "https://larchway-labs.github.io",
});
