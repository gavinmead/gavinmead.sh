---
title: "gm-git"
date: 2024-05-28T20:20:29-04:00
draft: false
tags: 
  - technology
  - gm-git
categories:
  - projects
toc:
  auto: false
---

### 6/1 Flag Update Part 2

So it was not a Bazel problem, but a me problem.  I was missing a few header files.  

That being said, variant and any did not work with the templated approach.  I found myself duplicating a bit of code so I tried something fun.

{{< gist gavinmead 6b58dbdbe4d3bba903891dccc00f393c >}}

So far this seems to be working, but I did observe that debugging involving a macro will be funky; so it should be judiciously. 

### 6/1 Flags Update

I'm curious if std::variant or std::any could work for the templated approach.  I was playing around with a Flag interface and some of the templating seemed weird. 

If I want to do that then fixing the bazel build is the next thing.  It looks like the cc_toolchain defaults to c++14, and I'll need at least c++17 (23 is ideal) in order to explore that more.


### 5/29 Slow Productivity: Flags

Thinking through some ideas for how to attach flags to the Commands.  It could be interesting to do some templates like the item below for a set of simple types like bools, ints, floats, strings (at least to start).  The usage
pattern could be something like the fields of a struct passed by reference similar to what you see in awesome tools like Cobra.


```cpp {class="my-class" id="my-codeblock" lineNos=inline tabWidth=2}
//Sample

struct InitConfig {
  string directory;
  string branch;
}
auto cfg = InitConfig{};
cfg.directory = ".";  //For the current working directory
cfg.branch = "main";

auto cmd = std::make_unique<Command>("foo");
cmd->AddFlag<string>(&cfg.directory, "d", "directory", "the directory to create the");
cmd->AddFlag<string>(&cfg.branch, "b", "branch-name", "initial branch for the repo");

```

### Idea

I am relearning C++ and writing a git clone as a means of doing so.

It will not be a full working git clone.  It is will implement a subset of commands for fun.  The primary goal is learning through something practical.  Items are hoping to learn:
* bazel as a build tool
* CLion as an IDE
* Interesting things from later versions of C++; it's been a minute since I used it
* Using libraries like googletest
* Cross platform builds for Mac and Linux

