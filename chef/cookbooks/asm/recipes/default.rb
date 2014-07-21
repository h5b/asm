Chef::Log.info("[Adding: ASM Development Packages]")
[
  "binutils-avr",
  "gcc",
  "gdb",
  "git-core",
  "intel2gas",
  "nasm",
  "python3",
  "vim",
].each do |p|
  package p
end
