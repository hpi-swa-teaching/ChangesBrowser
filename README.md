# ChangesReloaded [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/ChangesBrowser.svg?branch=team09)](https://travis-ci.org/HPI-SWA-Teaching/ChangesBrowser)

ChangesReloaded is a project developed in context of SWT 2020 based on the Changes Browser project from 2017. It is supposed to simplify the old tool.

## Installation
In order to use our tool, you have to install it in your squeak image. You can either do that by using the Git Browser or by using Monticello.

### Git Browser
- Open the Git Browser in your squeak image (`Tools>Git Browser` or `Apps>Git Browser`).
- Right click on `-- Projects --` and choose `Clone project`.
- Copy and paste the URL of the project on GitHub (https://github.com/hpi-swa-teaching/ChangesBrowser.git) and click "Accept".
- Now choose the `origin/dev`-branch in the branch overview.
- Right click on the latest commit on top of the list and choose `Checkout objects`.

### Monticello
- Execute the following code in a Workspace (`Tools>Workspace`)
```
Metacello new
    baseline: 'Changes';
    repository: 'github://hpi-swa-teaching/ChangesBrowser:dev/packages';
    load.
```

After you installed the tool through one of those options you have to execute 'CRBrowser open' in a Workspace in order to work with it.
