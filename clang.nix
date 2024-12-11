derivation {
  name = "clang-18";
  system = "x86_64-darwin";
  src = builtins.fetchTarball {
    url = "https://github.com/llvm/llvm-project/releases/download/llvmorg-18.1.8/clang-18.1.8.src.tar.xz";
    sha256 = "sha256:1wgvgj9igwcjfk9942kghqv54sg0y78m288lk8bakgd0qkw1vsxn";
  };
  builder = "/bin/bash";
  args = ["-c" ''
    /usr/bin/tar -xf $src -C $out
    ''];
}
