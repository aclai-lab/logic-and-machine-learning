# Logic and Machine Learning: Laboratory Material

This repository contains the Jupyter notebooks for the *Logic and Machine Learning* course laboratory sessions.
Have fun! 😄

# Setup

### Julia Programming Language 
First of all, this course will be held using the *Julia* programming language: hurray!

For a taste of the advantages and disadvantages of this language, we suggest reading [this summary](https://juliateachingctu.github.io/Julia-for-Optimization-and-Learning/stable/why/) taken from a famous Julia course, taught at the Czech Technical University in Prague. Summing it up in a few words, Julia is *fast* and keeps growing in popularity year after year.

To install the latest stable version of Julia, we refer you to [the official documentation](https://julialang.org/downloads/).

### VS Code
Next, we need a good text editor to support the Julia workflow.

The solution we suggest is to download *Visual Studio Code*, as it is easy to set up and provides a robust extension for handling everything we need.

You can install VS Code [from its official website](https://code.visualstudio.com/), then open it. Select "View" and then click "Extensions". Enter the keyword "Julia" and download the extension with the same name, maintained by the "julialang" organization. Finally, restart VS Code.

### This Repository
Last but not least, we need to download this repository.

This contains a `Project.toml` file, which is necessary to locally set up a self-contained Julia project and accommodate all the dependencies we are going to need.

The `notebooks` folder contains the laboratory material, in the form of *Jupyter notebooks* (the files with `ipynb` extension), which is the standard for writing, sharing, and reproducing scientific computing scripts.

To download the project, click the green "<>Code" button in the [GitHub page of the course](https://github.com/aclai-lab/logic-and-machine-learning) and select "Download ZIP". Then, unzip the folder where you prefer on your system. Open VS Code, select "File", "Open Folder" and browse the unzipped folder.

If you have `git` installed on your machine and are familiar with Unix-shell, you can just run this in the terminal:

```
git clone https://github.com/aclai-lab/logic-and-machine-learning
cd logic-and-machine-learning
code .
```

You can toggle a terminal within VS Code, by pressing `CTRL + J` or by clicking "View" and selecting "Terminal".

Write `julia` in the terminal to start a new Julia session.

We want to *activate* the project (we specify to Julia that we are working *inside this folder*) and *instantiate* it (we install all the dependencies). To do so, we can exploit the built-in package manager `Pkg` as follows:

```julia
using Pkg
Pkg.activate(".")
Pkg.instantiate()
```

This will install all dependencies, including:
- [IJulia.jl](https://github.com/JuliaLang/IJulia.jl): Julia backend for Jupyter Notebook;
- [MLJ.jl](https://github.com/alan-turing-institute/MLJ.jl): general-purpose machine learning framework;
- [SoleLogics.jl](https://github.com/aclai-lab/SoleLogics.jl): library containing the base definitions for playing with (modal) logic;
- [ModalDecisionTrees.jl](https://github.com/aclai-lab/ModalDecisionTrees.jl): machine learning algorithm for extracting modal decision trees.

To open the notebooks, start Jupyter Notebook with the Julia backend by typing:
```
using IJulia; IJulia.notebook(; dir=".")
```