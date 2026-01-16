# Logic and Machine Learning: Laboratory Material

This repository contains all the material for the
[
    Logic and Machine Learning
](
    https://sites.google.com/view/logic-and-machine-learning
) course laboratory sessions.

During these sessions, you will learn how to use the
[Julia programming language](https://julialang.org/) together with the
[Sole.jl](https://github.com/aclai-lab/Sole.jl) framework for training and
analysing symbolic machine learning models, leveraging various logics.

The material is provided in the form of `Jupyter notebooks` (files with `.ipynb`
extension), which is the standard for writing, sharing, and reproducing
scientific computing scripts.

*Fun fact:* Jupyter stands for *Julia, Python and R*. 

[UPDATE] Exported htmls and pdfs including the output cells are also provided
into the relative folders.

Have fun! 😄

## Setup

### Julia Programming Language 

If you are using Windows, you can install Julia by running the following in the
command prompt:
```
winget install --name Julia --id 9NJNWW8PVKMN -e -s msstore
```
If you are using macOS or Linux, you can install Julia by running the following
in your terminal:
```
curl -fsSL https://install.julialang.org | sh
```
This will install the latest stable version of Julia, as well as the `juliaup`
tool. Start Julia from the command-line by typing `julia`.

For more information, please visit
[Julia's official page](https://julialang.org/downloads/).

Please note that the provided material was written using Julia 1.11. Hence, we
suggest installing the 1.11 version explicitly as well:
```
juliaup add 1.11
```

### VS Code

To run the notebooks, we suggest installing VS Code using the installer provided
from [its official website](https://code.visualstudio.com/). 

Once installed, open the `Extensions` view (`Ctrl+Shift+X`), then enter the
keyword `julia` and install the extension maintained by the `julialang`
organization.

### JupyterLab (Alternative)

In case Visual Studio Code doesn't work for you, a good alternative is
JupyterLab.

To install it, you can follow the instruction provided in 
[its official website](https://jupyter.org/install).

Once installed, you can open a JupyterLab session (e.g., tipying `jupyter-lab`
in a linux terminal) to start a JupyterLab local server. This will also open a
Web App in your browser, where you can run the notebooks. 

### Dependencies

This repository contains a `Project.toml` file, which is necessary to locally
setup a self-contained Julia project and accommodate all the dependencies we are
going to need.

To download the repository, click the `<> Code` button in the
[
    GitHub page of the course
](
    https://github.com/aclai-lab/logic-and-machine-learning
) and select `Download ZIP`.

Then, unzip it where you prefer on your system, open the
`logic-and-machine-learning` folder in a terminal window and write `julia` to
start a new Julia session.

First, we need to import the built-in package manager:
```julia
using Pkg
```
Then, we need to `activate` the project, i.e., we need to specify to Julia that
we are working inside this folder:
```julia
Pkg.activate(".")
```
Finally, we use the method `instantiate` to install all the dependencies
specified in the `Project.jl` file:
```julia
Pkg.instantiate()
```

This will install all dependencies, including:
- [DecisionTree.jl](https://github.com/JuliaAI/DecisionTree.jl): the standard
implementation of decision trees and random forests in Julia;
- [SoleLogics.jl](https://github.com/aclai-lab/SoleLogics.jl): a package
containing the base definitions for playing with (modal) logic;
- [ModalDecisionTrees.jl](https://github.com/aclai-lab/ModalDecisionTrees.jl): a
machine learning algorithm for extracting modal decision trees.

### Troubleshooting

- *`Julia channel v1.11` not found when selecting a kernel in Visual Studio
Code.*

    Installing the `IJulia` package in the target channel seem to solve the
    problem:
    - start a new Julia session in a terminal (you can click `Ctrl+J` in Visual
    Studio Code) specifying the channel version we are interested in, in our
    case v1.11
    ```
    julia +1.11
    ```
    - press `]` to enter package management mode (notice the `Pkg>` instead of
    `julia` at the beginning of the line)
    - type the following command:
    ```julia
    add IJulia
    ```
    - this should also build the `IJulia` package by default, creating a conda
    environment suitable for running a jupyter session with this specific
    version of Julia; if we want to be sure, we can also run the command
    explicitly:
    ```julia
    build IJulia
    ```
    **Note**: This should not be needed on most machines; you may first want to
    try reinstalling `julia-lang` and `jupyter` extensions in Visual Studio Code
    and/or rebooting your machine.