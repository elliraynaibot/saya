#!/bin/sh
set -eu

rg -q '"type": "shopify://apps/klaviyo-email-marketing-sms/blocks/klaviyo-onsite-embed/2632fe16-c075-4321-a88b-50b567f42507"' config/settings_data.json
rg -q '"type": "shopify://apps/microsoft-clarity/blocks/clarity_js/31c3d126-8116-4b4a-8ba1-baeda7c4aeea"' config/settings_data.json
rg -q '"type": "shopify://apps/microsoft-clarity/blocks/brandAgents_js/31c3d126-8116-4b4a-8ba1-baeda7c4aeea"' config/settings_data.json

disabled_count=$(rg -c '"disabled": true' config/settings_data.json)
[ "$disabled_count" -ge 4 ]
