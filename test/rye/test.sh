#!/bin/bash

set -e

source dev-container-features-test-lib


check "env script exists" test -f /usr/local/share/rye/env
check "rye version on bash" rye --version
check "Uses uv" rye --version | grep -q 'uv enabled: true'

reportResults