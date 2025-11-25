---
title: "Centralised Decentralisation"
date: 2025-11-25T22:36:10+01:00
# weight: 30
# aliases: ["/first"]
tags: ["tech leadership", "chaordic leadership"]
author: ""
# author: ["Me", "You"] # multiple authors
showToc: false
TocOpen: false
draft: false
hidemeta: false
comments: true
description: ""
canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlightjs
hideSummary: true
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: false
ShowRssButtonInSectionTermList: true
UseHugoToc: true
cover:
image: "<image path/url>" # image path/url
alt: "<alt text>" # alt text
caption: "<text>" # display caption under cover
relative: false # when using page bundles set this to true
hidden: true # only hide on current single page
---
The world is riddled with wisdom. No surprise I stumbled on the work of [Dee Hock](https://en.wikipedia.org/wiki/Dee_Hock),
the founder of Visa. His philosophy, coined as "Chaordic" (a blend of chaos and order), offered a radical system upgrade
for how we view organizational control.

Hock's core thesis is that organizations must blend chaos (autonomy and innovation) with order
(structure and control). View this from the point of view of the DevOps team:
they have given teams the power to be autonomous, yet teams are drowning in a fragmented implementation of shared tools.

## A. The Illusion of Alignment: Tools are not Standards
Hock’s philosophy highlights a critical flaw in modern engineering: we often mistake "shared tooling" for "standardization."

A "standardized team" is not just one that uses the same CI/CD pipeline as everyone else. It is a team where the
*usage patterns* of that pipeline are predictable. Currently, most organizations suffer from "Tooling Alignment,
Implementation Drift." We all use the same ingredients, but we are baking entirely different cakes.

### The Configuration Trap
We have centralized the purchasing of tools (Jira, GitHub, Kubernetes, AWS) but decentralized the *governance* of how
they are applied.

**Example:** Every team uses Terraform. However, Team A manages state files locally, Team B uses an S3 backend with no
locking, and Team C has hardcoded secrets in their `.tf` files. The tool is standard; the engineering reality is chaotic.

Well, we'll just state the problem here, and try and solve the problem in later posts.

## B. Centralized Decentralization: The "Tight-Loose-Tight" Model
The ultimate architecture for a software company is the "Centralized Decentralization" model. This is often described in
management theory as "Tight-Loose-Tight."

* **Tight (Centralized):** The Strategy and The Standards. We agree on *what* we are building and the *guardrails* of
  how we build it (security, reliability, naming conventions).
* **Loose (Decentralized):** The Execution. Teams have the autonomy to iterate, experiment, and deploy features within
  those guardrails without seeking permission.
* **Tight (Centralized):** The Accountability. We measure results against the initial standards (Production Readiness
  Reviews, SLOs).

The failure happens when we are Loose on Standards but Tight on Tooling. We force a developer to use a specific hammer,
but we don't teach them how to frame a house.

## C. The Golden Path: The Missing Link
In platform engineering, we call this the **Golden Path** (or Paved Road), which always lacks the discipline of structure.

The problem isn't that teams are rebellious; it's that the "right way" is harder to execute than the "quick way."
Standardization is missing because we haven't productized it.

### Example Problem State
**The "Config Drift" Reality.** "We want every microservice to have structured logging and standard health checks."
For most teams, there is certainly a document on how to execute logging, but nobody reads or cares about. Teams copy-paste 
code from old projects, carrying over technical debt and deprecated patterns. The tool (the logger) is the same, 
but the standard is lost.

### The Fix
**The Platform as a Product.** We must stop writing wikis and start writing **Blueprints**. Centralized Decentralization
requires a catalog of pre-configured, standardized templates that are easier to use than starting from scratch.

### Creative Implementation
If one want to spin up a new service, the "Teaspoon" approach is giving him an empty repo and a Jira ticket. The "Bucket"
approach, Centralized Decentralization, would be an Internal Developer Platform (IDP) that says:

> "Click here to spawn a Service. You will get a repo with the linter pre-configured, the Dockerfile optimized for
production, the CI pipeline connected to our security scanners, and the k8s manifest using our standard labels."

By making the standard path the *easiest* path, you achieve standardization without sacrificing speed.

## Final Thoughts
I've realized that autonomy without guardrails isn't freedom; it's just onboarding/incident anxiety waiting to happen.
It's time to stop letting the tools dictate our chaos and start engineering our own "Chaordic" order.
