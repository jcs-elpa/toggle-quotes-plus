[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# toggle-quotes-plus
> Simple quote toggler that cycle through " ' and `

[![CI](https://github.com/jcs-elpa/toggle-quotes-plus/actions/workflows/test.yml/badge.svg)](https://github.com/jcs-elpa/toggle-quotes-plus/actions/workflows/test.yml)

<p align="center">
  <img src="./etc/toggle-quotes-plus-demo.gif" width="504" height="112"/>
</p>

This is much of the universal solution, it just simply toggle and cycle through the 
`quotes` you specify under `toggle-quotes-plus-chars` list in any file. 

This package search for the character that can be cycled in both `backward` and 
`forward` directions. The original `toggle-quotes` will only works in string so 
it will not work in `.html` or `.md` file type. 

For escape character, I couldn't figure out the best way to resolve this. Currently, 
this package will just ignore the escape character. If you have an idea to solve this 
you can open an `issue` or `pull request`, both methods are welcome.

*P.S. Inspired by [Toggle Quotes](https://marketplace.visualstudio.com/items?itemName=BriteSnow.vscode-toggle-quotes) from VS Code Marketplace.* <br/>
*P.S. Similar package [toggle-quotes](https://github.com/toctan/toggle-quotes.el) by [Tian, Jin](https://github.com/toctan).*

## 🔧 Usage

Call it from minibuffer directly,

```
M-x toggle-quotes-plus
```

Or you can bind it globally to any key you want.

```el
(global-set-key (kbd "C-'") #'toggle-quotes-plus)
```

## 🧪 Configurations

Configure the list of character you want to cycle through.

```el
(setq toggle-quotes-plus-chars '("\""
                                 "'"
                                 "`"))
```

## 🛠️ Contribute

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Elisp styleguide](https://img.shields.io/badge/elisp-style%20guide-purple)](https://github.com/bbatsov/emacs-lisp-style-guide)
[![Donate on paypal](https://img.shields.io/badge/paypal-donate-1?logo=paypal&color=blue)](https://www.paypal.me/jcs090218)
[![Become a patron](https://img.shields.io/badge/patreon-become%20a%20patron-orange.svg?logo=patreon)](https://www.patreon.com/jcs090218)

If you would like to contribute to this project, you may either 
clone and make pull requests to this repository. Or you can 
clone the project and establish your own branch of this tool. 
Any methods are welcome!

### 🔬 Development

To run the test locally, you will need the following tools:

- [Eask](https://emacs-eask.github.io/)
- [Make](https://www.gnu.org/software/make/) (optional)

Install all dependencies and development dependencies:

```sh
eask install-deps --dev
```

To test the package's installation:

```sh
eask package
eask install
```

To test compilation:

```sh
eask compile
```

**🪧 The following steps are optional, but we recommend you follow these lint results!**

The built-in `checkdoc` linter:

```sh
eask lint checkdoc
```

The standard `package` linter:

```sh
eask lint package
```

*📝 P.S. For more information, find the Eask manual at https://emacs-eask.github.io/.*

## ⚜️ License

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

See [`LICENSE`](./LICENSE.txt) for details.
