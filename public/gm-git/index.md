# gm-git


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
cfg.branch = "";  //Logic for init will set to main if this is empty

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


