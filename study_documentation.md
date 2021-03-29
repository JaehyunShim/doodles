# Study Documentation

## 1. Read the Docs
- Sign up & in Read the Docs (https://readthedocs.org/).
- Necessary Files
```sh
# Read the Docs YML File
https://github.com/JaehyunShim/doodles/blob/master/.readthedocs.yml

# MkDocs File
https://github.com/JaehyunShim/doodles/blob/master/mkdocs.yml

# Index File
https://github.com/JaehyunShim/doodles/blob/master/docs/index.md
```
- Add your project in the Read the Docs website.
```sh
# My Projecs -> Import a Project -> Choose your project
```
- Doc Status: [![Documentation Status](https://readthedocs.org/projects/doodles/badge/?version=latest)](https://doodles.readthedocs.io/en/latest/?badge=latest)

## 2. Doxygen
- Install
```sh
$ sudo apt-get install doxygen
```
- Usage
```sh
# 1. Generate Doxyfile
$ doxygen -g

# 2. Project name: "Project Name", OUTPUT_DIRECTORY: "docs", RECURSIVE: YES, GENERATE_LATEX: NO

# 3. Run doxygen
$ doxygen Doxyfile

# 4. Upload index.html file with other docs files using Readthedocs
```

## 3. Reference
- [Read the Docs official webpage](https://readthedocs.org/)
- [Doxygen Doxyfile](https://www.doxygen.nl/manual/starting.html)
