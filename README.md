[![Build Status](https://travis-ci.com/jcs090218/toggle-quotes-plus.svg?branch=master)](https://travis-ci.com/jcs090218/toggle-quotes-plus)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)


# toggle-quotes-plus #
> Simple quote toggler that cycle through " ' and `

<p align="center">
  <img src="./screenshot/toggle-quotes-plus-demo.gif" width="504" height="112"/>
</p>

This is much of the universal solution, it just simply toggle 
and cycle through the `quotes` you specify under 
`toggle-quotes-plus-chars` list.

*P.S. Inspired by [Toggle Quotes](https://marketplace.visualstudio.com/items?itemName=BriteSnow.vscode-toggle-quotes) from VS Code Marketplace.*
*P.S. Similar package [toggle-quotes](https://github.com/toctan/toggle-quotes.el) by [Tian, Jin](https://github.com/toctan).*


## Usage
Call it from minibuffer directly,
```
M-x toggle-quotes-plus
```
Or you can bind it globally to any key you want.
```el
(global-set-key (kbd "C-'") #'toggle-quotes-plus)
```


## Configurations
Configure the list of character you want to cycle through.
```el
(setq toggle-quotes-plus-chars '("\""
                                 "'"
                                 "`"))
```


## Contribution
If you would like to contribute to this project, you may either 
clone and make pull requests to this repository. Or you can 
clone the project and establish your own branch of this tool. 
Any methods are welcome!
