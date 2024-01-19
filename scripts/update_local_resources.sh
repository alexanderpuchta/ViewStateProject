#!/bin/bash

./scripts/set_settings_bundle_copyright.sh
./scripts/swiftgen.sh ./swiftgen_local_resources.yml
./scripts/swiftgen.sh ./swiftgen_core.yml