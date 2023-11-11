---
title: "Radiate"
date: 2023-11-11T10:17:08-05:00
draft: false
tags: 
  - technology
categories:
  - projects
toc:
  auto: false
---

### Idea

Inspired by Spark (thesaurus.com has **radiate** as a synonym to Spark), this is an academic project
to learn Rust, get smart about cool data projects in the Rust ecosystem and do something fun.

### Goals

* User focused SDK
  * Easy quickstart; it just works
  * Course and fine grained configuration levers; profiles and full control
* A REPL
* Fast (find some Spark Benchmarks for fun)
* Data Frame and SQL interfaces should be available (Datafusion can probably help here)

#### Intuitions (Probably Wrong)

* Apache Arrow is the foundation of the 'big-data' world.  Assume it will play a role in any solution.
  * Arrow Flight could be neat to explore as the data movement mechanism
  * Datafusion is probably something to explore to support DF/SQL
* Resource management:
  * Local (IPC)
  * Remote (ex: Kubernetes)
* Some sort of Driver and Worker/Executor communication protocol

#### Initial Problems to explore
* Messages between Driver and Worker
* Data movement between the Driver and Workers
* Passing user Rust code to workers?
* 
The repo is currently private, but if I can stay committed to working on it for the next 6 months,
then I'll consider making it public.