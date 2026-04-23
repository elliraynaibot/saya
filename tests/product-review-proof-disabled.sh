#!/bin/sh
set -eu

rg -q '"type": "shopify://apps/judge-me-reviews/blocks/judgeme_core/61ccd3b1-a9f2-4160-9fe9-4fec8413e5d8"' config/settings_data.json
rg -q '"disabled": true' config/settings_data.json
rg -q '"judge_me_reviews_review_widget_WrryAx"' templates/product.json
rg -q '"disabled": true' templates/product.json
rg -q '"judge_me_reviews_review_widget_Y9cAkg"' templates/product.pre-order.json
rg -q '"disabled": true' templates/product.pre-order.json
