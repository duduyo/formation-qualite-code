#!/bin/bash

URL_BASE="http://localhost:1948"

echo "Export document "
./node_modules/.bin/decktape reveal  --size 1024x768  "${URL_BASE}/10-revue-code.md" "./pdf/10-revue-code.pdf"
./node_modules/.bin/decktape reveal  --size 1024x768  "${URL_BASE}/21-tdd-base.md" "./pdf/21-tdd-base.pdf"
./node_modules/.bin/decktape reveal  --size 1024x768  "${URL_BASE}/22-tdd-sur-code-existant.md" "./pdf/22-tdd-sur-code-existant.pdf"
./node_modules/.bin/decktape reveal  --size 1024x768  "${URL_BASE}/23-tests-sur-application.md" "./pdf/23-tests-sur-application.pdf"
