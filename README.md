# 2026 NixOS Configuration (Flake-based)

## Details
- Laptop: 
    - Framework Laptop 13 (11th Gen Intel® Core™)
    - 11th Gen Intel® Core™ i7-1165G7 × 8
    - Intel® Iris® Xe Graphics (TGL GT2)
    - 36 GB RAM
    - 1.0 TB SSD

## Goals
1. Simplicity
2. Understandability

## Usage

`nixos-rebuild switch --sudo`
`nrs` -> aliased (in ./programs/bash.nix) to the above with a specified config location.

## Modification
- To install/configure programs:
    - create a new `.nix` file in the `programs/` directory
    - enable and configure the program in said file

## Structure

To go further into detail about the structure of this configuration:
1.
