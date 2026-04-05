\NeedsTeXFormat{LaTeX2e}
\ProvidesExplClass{chsmc}{2026/04/01}{v1.0}{Chinese High School Mathematics Competition Template}

\LoadClass[fontset=windows]{ctexart}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{amsmath}
% \RequirePackage{amssymb}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}

\setmainfont{Times~New~Roman}
\RequirePackage[amsbb]{mtpro2}

\cs_new:Npn \int_to_chinese:n #1 {
  \int_to_symbols:nnn { #1 } { 2 } {
    { 1 } { 一 }
    { 2 } { 二 }
  }
}

\keys_define:nn { chsmc } {
  year .tl_set:N = \l_chsmc_year_tl,
  part .choices:nn = { 1, 2 } { \tl_set:Nn \l_chsmc_part_tl { \int_to_chinese:n { #1 } } } ,
  type .choices:nn = { A, B } { \tl_set_eq:NN \l_chsmc_type_tl \l_keys_choice_str } ,
  show-answers .bool_set:N = \l_chsmc_show_answers_bool,
  show-answers .default:n = true,
  show-answers .initial:n = true,
}

\NewDocumentCommand{ \chsmcsetup }{ m }
  { \keys_set:nn {chsmc} {#1} }

\AtBeginDocument{
  \begin{center}
    \Large\bfseries
    \l_chsmc_year_tl 年全国中学生数学奥林匹克竞赛（预赛）\\
    暨 \l_chsmc_year_tl 年全国高中数学联合竞赛 \\
    \l_chsmc_part_tl 试\bool_if:NF \l_chsmc_show_answers_bool { 试题 }（\l_chsmc_type_tl 卷）
    \bool_if:NT \l_chsmc_show_answers_bool { 参考答案及评分标准 }
  \end{center}
  \bool_if:NT \l_chsmc_show_answers_bool {
  说明：
  \begin{enumerate}[1.,itemsep=0pt]
    \item 评阅试卷时，请依据本评分标准. 填空题只设 8 分和 0 分两档；其他各题的
      评阅，请严格按照本评分标准的评分档次给分，不要增加其他中间档次.
    \item 如果考生的解答方法和本解答不同，只要思路合理、步骤正确，在评卷时可参考本评分标准适当划分档次评分，解答题中第 9 小题 4 分为一个档次，第 10、11 小题 5 分为一个档次，不要增加其他中间档次．
  \end{enumerate} }
}

\NewDocumentCommand{ \answer }{ m }{
  \bool_if:NT \l_chsmc_show_answers_bool {
    \par \textbf{答案：}#1.
  }
}

\NewDocumentEnvironment{ solution }{ +b }{
  \bool_if:NT \l_chsmc_show_answers_bool {
    \par \textbf{解：}#1
  }
}{}

\newcommand{\ii}{\mathrm{i}}
\newcommand{\blankline}{$\underline{\hspace{2cm}}$}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}

\ctexset{
  section = {
    number = \chinese{section}、,
    format = { \zihao{-4}\heiti },
    aftername = \space
  }
}