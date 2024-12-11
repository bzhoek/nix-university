derivation {
  name = "hello";
  system = "x86_64-darwin";
  builder = "/bin/bash";
  src = ./hello.c;
  args = ["-c" "/usr/bin/clang $src -o $out"];
}
