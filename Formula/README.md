# Formula directory

Put Homebrew formulae for command-line tools in this directory.

Example:

```ruby
class Mytool < Formula
  desc "Description of the tool"
  homepage "https://example.com"
  url "https://github.com/leviholliday/mytool/releases/download/v1.0.0/mytool.tar.gz"
  sha256 "REPLACE_WITH_SHA256"
  version "1.0.0"

  def install
    bin.install "mytool"
  end
end
```

You can then install it with:

```bash
brew tap leviholliday/tap
brew install leviholliday/tap/mytool
```
