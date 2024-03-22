<div align="center">
    <h1>NTUST - Thesis - LaTeX Template</h1>

[![](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/repository/docker/hsiangjenli/xelatex/general)
[![](https://img.shields.io/badge/Overleaf-47A141?style=for-the-badge&logo=Overleaf&logoColor=white)](https://www.overleaf.com/latex/templates/ntust-thesis-latex-v1-dot-8-1/zhssqbmtcsjp)
[![](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/hsiangjenli/ntust-thesis-latex)

</div>

This is a LaTeX template for NTUST (National Taiwan University of Science and Technology) thesis. It is based on [`ntust-thesis`](https://github.com/hadziq/ntust-thesis) by ***Hadziq Fabroyir***, which is a modified version of the original [`ntust-thesis-latex-v15`](http://hdj-berkeley.blogspot.tw/2011/03/ntust-thesis-latex-v15-release.html) by ***Ding-Jie Huang***. 

You can use this template to write your thesis in LaTeX, and it can be easily used with Overleaf or using the docker image provided in this repository.

> Feel free to open an issue or pull request if you have any questions or suggestions 😶 

## Overleaf
Go to Settings and change the (1) Compiler to `XeLaTeX` (2) TeX Live version to `2023` and (3) Main document to `my_ntust_thesis.tex`.

> 💡 The template is available on Overleaf, however, the template ***will not be updated frequently*** on Overleaf, so it is recommended to **download / clone** the repository and put it on your Overleaf account.



## Docker
You can use the provided docker image to compile the LaTeX files or you can build the docker image by yourself, the Dockerfile is provided in [`.github/Dockerfile`](.github/Dockerfile), and you can modify it according to your needs.

```bash
# Pull the docker image from the docker hub
docker pull hsiangjenli/xelatex:ntust-thesis-v1.8.1

# Run the docker image, mount the current directory to the /workspace in the docker container
docker run -it --rm -v `pwd`:/workspace hsiangjenli/xelatex:ntust-thesis-v1.8.1 /bin/bash

# Enter the docker container and compile the LaTeX files
# Then you will see the pdf file in build folder
make pdf
```

## The place to modify
- [`frontpages/my_names.tex`](frontpages/my_names.tex)  
   - Your name, student ID, advisor, etc.
- [`frontpages/my_cabstract`](frontpages/my_cabstract.tex)  
   - Your Chinese abstract.
 - [`frontpages/my_eabstract`](frontpages/my_eabstract.tex)  
   - Your English abstract.
 - [`frontpages/my_ackn`](frontpages/my_ackn.tex)  
   - Your acknowledgment.
- [`sections`](sections)  
   - The dissertation content is in this folder.  
   - You need to modify the content of each file and input it in [`my_ntust_thesis.tex`](my_ntust_thesis.tex).

## Official NTUST Thesis Format
- 論文上傳步驟說明 - https://etheses.lib.ntust.edu.tw/zh-hant/help/aboutedit/
- 國立臺灣科技大學學位論文撰寫、編排規則及注意事項（112.03.07）- https://etheses.lib.ntust.edu.tw/media/download/ed6370c8-7c81-11ee-b999-0242ac1f0806.pdf

## Other useful tools for writing LaTeX
- [egeerardyn/awesome-LaTeX](https://github.com/egeerardyn/awesome-LaTeX)
- [FFengIll/pdf-cut-white](https://github.com/FFengIll/pdf-cut-white)
- [google/latexify_py](https://github.com/google/latexify_py) - A library to generate LaTeX expressions from Python code
- [google-research/arxiv-latex-cleaner](https://github.com/google-research/arxiv-latex-cleaner) - Easily clean the LaTeX code of your paper to submit to arXiv
- [xinychen/awesome-latex-drawing](https://github.com/xinychen/awesome-latex-drawing) - 
A collection of illustrations in LaTeX.
- [lericson/pseudopython](https://github.com/lericson/pseudopython/tree/master) - Do you hate writing pseudocode in LaTeX? Good news! Do it in Python instead.
- [DaemonLab/Latex-Pseudocode-Generator](https://github.com/DaemonLab/Latex-Pseudocode-Generator) - Take the input of C++ into pseudocode in LaTeX
- [vedku/Python-to-IGCSE-Pseudocode](https://github.com/vedku/Python-to-IGCSE-Pseudocode)
- [Kixiron/JunkyPy](https://github.com/Kixiron/JunkyPy) - A C# pseudocode generator written in Python

## Credits to
- Original author - Ding-Jie Huang 黃鼎傑 - http://hdj-berkeley.blogspot.tw/2011/03/ntust-thesis-latex-v15-release.html
- Modified by - Hadziq Fabroyir - https://github.com/hadziq/ntust-thesis
- Docker tex-live - Max Kratz - https://github.com/maxkratz/docker_texlive/tree/main
- Font - justrajdeep - https://github.com/justrajdeep/fonts
- Font - CNS11643中文標準交換碼全字庫(簡稱全字庫) - https://data.gov.tw/dataset/5961
- Font - AR PL UKai TW - https://eng.m.fontke.com/font/10222346/download/

## Other school's LaTeX template
- NKUST - https://github.com/yuhao-kuo/NKUST-thesis-template
- 台灣碩博士 LaTeX 論文樣板 - https://github.com/sppmg/TW_Thesis_Template
- Pandoc Template for NTU Thesis - https://github.com/liao961120/thesis

