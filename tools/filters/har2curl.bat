@echo off
jq -r "reduce [[[.log.entries[].request][] | {method, url, \"headers\": .headers | del(.[] | select(.name == (\"Expires\", \"Pragma\", \"Cache-Control\", \"TE\", \"Connection\", \"Accept-Language\", \"Host\", \"Origin\", \"Accept-Language\", \"Accept-Encoding\", \"Content-Length\", \"Access-Control-Request-Method\", \"Access-Control-Request-Headers\", \"Referer\", \"Accept\", \"User-Agent\", \"X-XSRF-TOKEN\", \"Cookie\"))) | sort_by(.value | length)}][] | \"curl.exe -X \(.method)\" + (\" \") * (7- (.method | length)) + \" \(.url)\n--verbose --quiet --ssl-no-revoke --location\n\", (.headers[] | \"-H \\\"\(.name): \(.value)\\\"\n\"), \"\n\"][] as $itm (\"\"; . + $itm)" %*