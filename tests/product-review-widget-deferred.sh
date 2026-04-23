#!/bin/sh
set -eu

rg -q 'window.customElements.define\("deferred-product-reviews"' assets/theme.js
rg -q 'data-reviews-content' sections/apps.liquid
rg -q '<template>' sections/apps.liquid
rg -q "block.type contains 'review_widget'" sections/apps.liquid
