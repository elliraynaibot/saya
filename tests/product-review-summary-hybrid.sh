#!/bin/sh
set -eu

rg -q "assign replace_product_review_preview_badge = false" snippets/product-info.liquid
rg -q "block.type contains 'preview_badge'" snippets/product-info.liquid
rg -q "render 'product-review-summary-link'" snippets/product-info.liquid
rg -q 'id="product-reviews"' sections/apps.liquid
