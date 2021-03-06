# UPS product build scripts for ToolAnalysis

This repository provides additional files needed to build the ToolAnalysis
as a [relocatable
ups](https://cdcvs.fnal.gov/redmine/projects/ups/wiki/Documentation)
(Unix Product Support) product.

## Prerequisites

To build the toolanalysis v2_0_0 ups product, the cetbuildtools, zeromq, boost,
python, and root ups products must be set up first. The build process has been
tested with cetbuildtools v5_14_00, boost v1_64_0, zeromq v4_0_7,
root v6_10_08b, and python v2_7_14.

## Build procedure

After setting up the prerequisite products, clone the toolanalysis ups product
repository into your desired source directory `SOURCE_DIR`:
```
git clone https://github.com/sjgardiner/toolanalysis-ups-build.git SOURCE_DIR
```

Then create a new build directory and source the development setup script from
within it:
```
mkdir build
cd build
source SOURCE_DIR/ups/setup_for_development <-d | -p | -o>
```
The flag after `setup_for_development` should be `-d` if you set up the boost
product with the `debug` qualifier, `-p` if you used the `prof` qualifier, or
`-o` if you used the `opt` qualifier.

Choose a directory `INSTALL_DIR` in which you would like to install the toolanalysis 
ups product. Then build and install the product via
```
buildtool -I "INSTALL_DIR" -bti [-jN]
```
where the optional `-j` flag may be used to build using `N` parallel jobs.
