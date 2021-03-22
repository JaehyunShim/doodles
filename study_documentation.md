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
- Doc Status: [![Documentation Status](https://readthedocs.org/projects/jaehyun-doodle/badge/?version=latest)](https://jaehyun-doodle.readthedocs.io/en/latest/?badge=latest)

## 2. Doxygen
- Usage
```sh
# 1. Generate Doxyfile
$ doxygen -g

# 2. Project name: "Project Name", OUTPUT_DIRECTORY: "doxygen_docs", RECURSIVE: Yes, GENERATE_LATEX: No

# 3. Run doxygen
$ doxygen Doxyfile

# 4. Modify & add more content to index.html and other files.

# 5. create a web hosting server, e.g., github.io, and upload the files.
ex) https://github.com/JaehyunShim/docs.ros2_tutorial.org
```
- Doxygen Status: [![Doxygen](https://img.shields.io/badge/doxygen-documentation-blue.svg)](https://jaehyunshim.github.io/docs.ros2_tutorial.org/)

## 3. Example
- TODO

## 4. Reference
- [Read the Docs official webpage](https://readthedocs.org/)
- [Doxygen Doxyfile](https://www.doxygen.nl/manual/starting.html)
