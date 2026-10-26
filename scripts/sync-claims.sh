#!/usr/bin/env bash
# Copy the platform's checked claims — which frameworks build, which languages
# have an SDK, which systems an app can send to, and the vendored marks — into
# the site. The platform's landing-claims.test.ts regenerates the source file
# and fails when it is stale, so this copy never says something unchecked.
set -euo pipefail
here="$(cd "$(dirname "$0")/.." && pwd)"
src="${TOFT_CHECKOUT:-$here/../toft}/web/src/lib/landing-claims.json"
cp "$src" "$here/src/data/claims.json"
echo "synced $(basename "$src") from $(dirname "$src")"
