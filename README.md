chef-atom
=========

[![Cookbook Version](https://img.shields.io/cookbook/v/atom.svg)](https://supermarket.chef.io/cookbooks/atom)
[![Build Status](https://img.shields.io/circleci/project/github/sous-chefs/atom/master.svg)](https://circleci.com/gh/sous-chefs/atom)

Install/Configures Atom `atom.io`

Provides the `atom_apm` resource to install, uninstall, upgrade packages.

Recipes
---------
### default
Installs atom via package manager.

### atom::packages
Installs the apm packages listed under `node.attributes`.

```
attributes:
  atom:
    packages:
      - vim-mode
      - minimap
```

Resource Usage
---------

### atom_apm
This resource manages apm packages, supporting the following actions:

    :install(default), :uninstall, :upgrade

#### Examples,
  ```ruby
  # Install 'lychee-theme'
  atom_apm 'lychee-theme'

  # Uninstall 'dracula-theme'
  atom_apm 'dracula-theme' do
    action :uninstall
  end
  ```

License and Authors
-------------------
Authors:
- Mohit Sethi <mohit@sethis.in>
