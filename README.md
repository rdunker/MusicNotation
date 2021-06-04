
# Music Notation [![Build Status](https://travis-ci.org/hpi-swa-teaching/MusicNotation.svg)](https://travis-ci.org/hpi-swa-teaching/MusicNotation) [![Coverage Status](https://img.shields.io/badge/coverage-disabled-red)](https://github.com/hpi-swa-teaching/MusicNotation/issues/67) [![CI](https://github.com/hpi-swa-teaching/MusicNotation/actions/workflows/main.yml/badge.svg?branch=development)](https://github.com/hpi-swa-teaching/MusicNotation/actions/workflows/main.yml) [![CI-Lint](https://github.com/hpi-swa-teaching/MusicNotation/actions/workflows/ci-linter.yml/badge.svg?branch=development)](https://github.com/hpi-swa-teaching/MusicNotation/actions/workflows/ci-linter.yml)

Group 13

> We disabled code coverage because the executor used by the Smalltalk VM for debugging and code coverage crashed with a segmentation fault. [See issue #67](https://github.com/hpi-swa-teaching/MusicNotation/issues/67).

## Installation

To install this project in your Squeak image, choose one of the following methods:

### Using MusicNotation.sar file

Simply drag-and-drop the MusicNotation.sar file in your image. In the following dialog window, choose "install sar". That's it!

### Using the git repository

Clone this repository in a folder. Then, open your Squeak image. In the menu bar at the top choose: "Apps" -> "Git Browser". If you never used the Git Browser before, a window prompts you to create a new project. Do so and name it. Then, a file chooser opens. Choose the folder of the cloned repository. Now, the project is loaded. In the "Branches"-field of the Git Browser, choose the master branch and right-click it. Choose "Create a new branch an switch to it". Give the branch a name (e.g. master). This creates a local copy of the remote branch you just copied. You work in this branch and commit your changes through the Git Browser. That's it!
If you want to work with the remote branch, this is how it works:
Via command line, you push your commited changes to the remote branch. Also, you pull via command line. The changes are shown as a new commit in the Git Browser. Right-click it and choose "Merge objects". 

### Done! And now?

To find out what's next check out the documentation. 
(Either by choosing a link below or by going to the folder "docs".)

## Documentation 
- [Getting Started](./docs/getting-started.md)
- [Entry Points](./docs/entry-points.md)
- [Architectural Information](./docs/architectural-information.md)
- [Scripting](./docs/scripting.md)
