package openssf.omega.policy.autogenerated.cwe.cwe_1351

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_1351
# title: "CWE-1351: Improper Handling of Hardware Behavior in Exceptionally Cold Environments"
# methodology: >
#   A hardware device, or the firmware running on it, is missing or has incorrect protection features to maintain goals of security primitives when the device is cooled below standard operating temperatures.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-1351" in assertion.predicate.content.tags
    }
}