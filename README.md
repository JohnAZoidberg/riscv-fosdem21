# EDK2 UEFI on RISC-V

At the virtual FOSDEM21 I gave this presentation after attending FOSDEM20 in
person and spending 2020 together with my colleage Abner Chang ([@changab](https://github.com/changab))
finishing up the EDK2 port for RISC-V and upstreaming it. He had worked on it
for a couple years before.

Up-to-date documentation is available here: https://github.com/riscv/riscv-uefi-edk2-docs.

Please check out the compiled presentation in the releases tabs and the vide on
the [FOSDEM website](https://fosdem.org/2021/schedule/event/firmware_uor/).

## Abstract
RISC-V is a relatively new ISA and platform, which has been evolving rapidly. A few Linux distributions already have good support and have compiled most of their packages for it. The boot process has been neglected and only recently did everyone start using the widely used embedded bootloader U-Boot instead of a custom research bootloader. We have ported the EDK2 reference implementation of UEFI to make the boot process more like current desktops and servers. This talk explains how we did that, how it works and how we got Linux to boot. We also want to explain what's left to do and how we can move in the direction of a RISC-V server platform.

## Usage
### Continuous development
1. Install a LaTeX distribution with pplatex or `nix-shell`.
2. `make` as often as you like while changing source
3. Have your favourite PDF reader reload the `presentation.pdf` automatically

### Final package
1. `nix-build`
2. Open `result/presentation.pdf` in your favourite PDF reader

### Tweaks
- Uncomment `, handout` to combine animations ("overlays") into single slide
- Unocmment `\setbeameroption{show notes on second screen}` to enable speaker notes
