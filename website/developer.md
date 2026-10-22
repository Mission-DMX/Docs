---
layout: page
title: Developer Documentation
permalink: /docs/dev/index.html
---

# Developer Documentation
Welcome to the developer documentation. Please find the required resources below:

 * [Fish Class Documentation](/docs/fish-dev/)
 * [Editor Class Documentation](/docs/editor-class-doc/)
 * Debugging Tools
 * Hardware Documentation

## Operating System Documentation

### How the updater works
The on-device updater (running every 6h with a 10 min
boot delay) fetches `manifest.json` from a base URL, picks the bundle whose
`build_timestamp` sorts higher than the local `/etc/mdmx-build-timestamp`,
downloads it, verifies the hybrid RSA + ML-DSA CMS signature against the
on-device keyring (`/etc/rauc/mdmx-keyring.pem`), and stages it as "pending".
Installation itself is user-initiated from the console menu.

- Default base URL compiled into every image: `https://mission-dmx.org/downloads/os-updates/`
- Override (per device, rarely used): `[update] url = …` in `~/.config/console-settings.ini`
- Bundle format: verity-only RAUC bundles with `compatible = MissionDMX`

