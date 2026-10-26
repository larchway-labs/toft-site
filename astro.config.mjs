// @ts-check
import { defineConfig } from "astro/config";

// The product's home page: one static page, published to GitHub Pages at
// gettoft.com (public/CNAME). SITE_URL overrides the address for a preview.
export default defineConfig({
  site: process.env.SITE_URL ?? "https://gettoft.com",
});
