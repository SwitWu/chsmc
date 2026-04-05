## Introduction

全国高中数学联赛 (Chinese High School Mathematics Competition, CHSMC) 试题集锦

## Quick Start

```tex
\documentclass{chsmc}
\chsmcsetup{
  year = 2026,
  type = A,
  part = 1,
  show-answers
}
\begin{document}

\section{填空题：本大题共 8 小题，每小题 8 分，满分 64 分.}
\begin{enumerate}
  \item foo
    \answer{...}
    \begin{solution}
      ...
    \end{solution}
  \item foo
\end{enumerate}

\section{解答题：本大题共 3 个小题，满分 56 分. 解答应写出文字说明、证明过程或演算步骤.}
\begin{enumerate}[resume]
  \item baz
  \item baz
\end{enumerate}
\end{document}
```

## Key-Values of the class

1. `year`: 指定年份
1. `type`: 指定试卷类型，只能为 `type = A` 或 `type = B`
1. `part`: 指定试卷为一试还是二试，只能为 `part = 1` 或 `part = 2`
1. `show-answers`: 布尔选项，控制是否显示答案，缺省值和默认值都为 `true`

## Notes

1. 中文、英文和数学字体默认分别用 Windows 字库、Times New Roman 和 mtpro2，如果因系统不同或未安装相应字体请直接在 `chsmc.cls` 中进行更改。