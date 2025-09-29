# 0.2.1 (Sep 29, 2025)
* Configure log retention via cluster configuration.

# 0.2.0 (Sep 22, 2025)
* Upgraded terraform providers.

# 0.1.24 (Aug 28, 2025)
* Fixed `var.memory` description.

# 0.1.23 (Aug 19, 2025)
* Fixed syntax constructing `linuxParameters`.

# 0.1.22 (Aug 19, 2025)
* Fixed kernel capabilities included in `linuxParameters`.

# 0.1.21 (Aug 18, 2025)
* Added support for `linuxParameters` in capabilities.

# 0.1.20 (Jul 31, 2025)
* Fixed linux kernel capabilities when none are specified.

# 0.1.19 (Jul 21, 2025)
* Upgraded all terraform providers to latest.

# 0.1.18 (Jul 09, 2025)
* Added `nullstone.io/version` tag to task definition.

# 0.1.17 (Apr 30, 2025)
* Configured main container with `pseudoTerminal`.

# 0.1.16 (Mar 31, 2025)
* Fixed `launch_type` injected into capabilities.

# 0.1.15 (Mar 31, 2025)
* Fixed contract for linux kernel capabilities from Nullstone capabilities.

# 0.1.14 (Mar 31, 2025)
* Fixed configuration of linux parameters.

# 0.1.13 (Mar 19, 2025)
* Added support for linux kernel capabilities from Nullstone capabilities.

# 0.1.12 (Jan 22, 2025)
* When an app secret is removed, it is immediately deleted from AWS secrets manager.

# 0.1.11 (Sep 16, 2024)
* Fixed removal of `ulimit` capability.

# 0.1.10 (Sep 16, 2024)
* Added `app/` prefix to cpu and memory metrics, so they are grouped on the dashboard.
* Added support for `ulimit` on main container definition from capability modules.

# 0.1.9 (Apr 29, 2024)
* Added `launch_type=EC2` to outputs.

# 0.1.8 (Apr 17, 2024)
* Fixed support for `volume.host_path` from capabilities.

# 0.1.7 (Apr 17, 2024)
* Added support for `volume.host_path` on ECS Task Definition.

# 0.1.6 (Mar 19, 2024)
* Upgrade terraform providers (aws -> `5.41.0`).

# 0.1.5 (Feb 14, 2024)
* Added GPU support.

# 0.1.4 (Feb 10, 2024)
* Added permissions to list image tags in image repository.

# 0.1.3 (Feb 06, 2024)
* Added support for metrics for capabilities.

# 0.1.2 (Jan 16, 2024)
* Added metrics outputs to enable real-time monitoring.

# 0.1.1 (Dec 28, 2023)
* Added support for "target-group" metric alarms.
* Added support for querying metric data from the log reader.

# 0.1.0 (Nov 03, 2023)
* Initial draft
