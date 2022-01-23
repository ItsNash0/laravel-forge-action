#!/bin/sh
set -e

deploy_with_webhook() {
    curl \
        --fail \
        --silent \
        --show-error \
        --user-agent "Forge-GitHubAction/1.0" \
        --max-time 5 \
        --connect-timeout 5 \
        --request 'POST' \
        "$TRIGGER_URL"
}

deploy_with_webhook
echo "$SITE_LABEL was Deployed"
exit 0

