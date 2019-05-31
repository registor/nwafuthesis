%%
%% This is file `nwafuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% nwafuthesis.dtx  (with options: `cls')
%% ----------------------------------------------------------------
%% nwafuthesis --- Thesis Template for Norhtwest A & F University
%% Licensed under the Apache License, Version 2.0
%% See http://www.apache.org/licenses/LICENSE-2.0
%% ----------------------------------------------------------------
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nwafuthesis}
[2019/5/28 v2.2.11 NWAFU Thesis Template]
\InputIfFileExists{nwafuthesis.cfg}{}{}
\AtEndOfClass{
\newcommand\nwafu@label@nwafu{西北农林科技大学}
\newcommand\nwafu@label@stuno{学号}
\newcommand\nwafu@label@adviser{指导教师}
\newcommand\nwafu@label@worktype@paper{毕业论文}
\newcommand\nwafu@label@worktype@design{毕业设计}
\newcommand\nwafu@label@thesisnum{编号}
\newcommand\nwafu@label@title{题目}
\newcommand\nwafu@label@college{学院}
\newcommand\nwafu@label@department{系部}
\newcommand\nwafu@label@major{专业}
\newcommand\nwafu@label@classid{班级}
\newcommand\nwafu@label@author{学生姓名}
\newcommand\nwafu@label@bachelorcoadviser{协助指导教师}
\newcommand\nwafu@label@bachelorapplydate{完成日期}
\newcommand\nwafu@label@worktype@degree{学位论文}
\newcommand\nwafu@label@worktype@master{硕士}
\newcommand\nwafu@label@worktype@doctor{博士}
\newcommand\nwafu@label@clscode{分类号}
\newcommand\nwafu@label@udccode{UDC}
\newcommand\nwafu@label@cfdlevel{密级}
\newcommand\nwafu@label@unvcode{学校代码}
\newcommand\nwafu@label@teamname{团队名称}
\newcommand\nwafu@label@studentid{学号}
\newcommand\nwafu@label@postcoadviser{联合指导教师}
\newcommand\nwafu@label@adviserteam{指导小组}
\newcommand\nwafu@label@postapplydate{论文提交时间}
\newcommand\nwafu@label@defensedate{答辩日期}
\newcommand\nwafu@label@researchername{论文作者}
\newcommand\nwafu@label@majorsubject{学科专业}
\newcommand\nwafu@label@researchfield{研究方向}
\newcommand\nwafu@label@professionaltype{专业学位类型}
\newcommand\nwafu@label@professionalfield{领域名称}
\newcommand\nwafu@label@graduateschool{研究生院}
\newcommand\nwafu@labelEn@techmasterfield{Field}
\newcommand\nwafu@labelEn@techmastertype{Degree Type}
\newcommand\nwafu@labelEn@majorsubject{Major}
\newcommand\nwafu@labelEn@researchfield{Research Field}
\newcommand\nwafu@labelEn@researchername{Candidate}
\newcommand\nwafu@labelEn@adviser{Supervisor}
\newcommand\nwafu@labelEn@coadviser{Co-Supervisor}
\newcommand\nwafu@labelEn@applydate{Date of Submission}
\newcommand\nwafu@labelEn@nwafu{Norhtwest A \& F University}
\newcommand\nwafu@labelEn@graduateschool{The Graduate School}
\newcommand\nwafu@labelEn@clscode{Classification code}
\newcommand\nwafu@labelEn@cfdlevel{Confidentiality level}
\newcommand\nwafu@labelEn@unvcode{University code}
\newcommand\nwafu@labelEn@studentid{Postgraduate number}
\newcommand\nwafu@labelEn@worktype@master{Master}
\newcommand\nwafu@labelEn@worktype@doctor{Doctor}
\newcommand\nwafu@label@applyaddress{中国\hspace{\ccwd}陕西\hspace{\ccwd}杨凌}
\newcommand\nwafu@labelEn@applyaddress{Yangling\hspace{1em}Shaanxi\hspace{1em}China}
\newcommand\nwafu@label@abstract{摘要}
\newcommand\nwafu@label@abstractshort{摘要}
\newcommand\nwafu@label@keywords{关键词}
\newcommand\nwafu@label@keywordsep{; }
\newcommand\nwafu@label@abstract@toc{摘要}
\newcommand\nwafu@labelEn@abstract{Abstract}
\newcommand\nwafu@labelEn@ABSTRACT{ABSTRACT}
\newcommand\nwafu@labelEn@KeyWords{Key Words}
\newcommand\nwafu@labelEn@keywords{Keywords}
\newcommand\nwafu@labelEn@keywordsep{; }
\newcommand\nwafu@label@reportpaper{毕业设计（论文）}
\ifnwafu@lang@cn
  \newcommand\listfiguretablename{图表清单}
  \def\equationautorefname{式}
  \def\AMSautorefname{式}
\else\ifnwafu@lang@en
  \newcommand\listfiguretablename{List of Figures and Tables}
\fi\fi
}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=nwafu,
  prefix=nwafu@,
  setkeys=\kvsetkeys
}
\newif\ifnwafu@bachelor \nwafu@bachelorfalse
\newif\ifnwafu@master   \nwafu@masterfalse
\newif\ifnwafu@doctor   \nwafu@doctorfalse
\define@key{nwafu}{degree}{
  \expandafter\csname nwafu@#1true\endcsname}
\DeclareBoolOption[false]{techmaster}
\newif\ifnwafu@lang@cn \nwafu@lang@cnfalse
\newif\ifnwafu@lang@en \nwafu@lang@enfalse
\define@key{nwafu}{lang}{
  \expandafter\csname nwafu@lang@#1true\endcsname}
\newif\ifnwafu@worktype@paper  \nwafu@worktype@paperfalse
\newif\ifnwafu@worktype@design \nwafu@worktype@designfalse
\define@key{nwafu}{type}{
  \expandafter\csname nwafu@worktype@#1true\endcsname}
\DeclareBoolOption[false]{blankleft}
\DeclareBoolOption[false]{abstractopenright}
\DeclareStringOption{fontset}
\DeclareBoolOption[false]{nobold}
\DeclareDefaultOption{}
\kvsetkeys{nwafu}{}
\ProcessKeyvalOptions*
\ifnwafu@bachelor\relax\else
\ifnwafu@master\relax\else
\ifnwafu@doctor\relax\else
  \ClassError{nwafuthesis}{
    Thesis degree must be specified: \MessageBreak
    degree=[bachelor|master|doctor]}
\fi\fi\fi
\ifnwafu@bachelor
  \ifnwafu@worktype@paper\relax\else
    \ifnwafu@worktype@design\relax\else
      \ClassError{nwafuthesis}{
        Bachelor thesis type must be specified: \MessageBreak
        type=[paper|design]}
    \fi
  \fi
\else
  \ifnwafu@worktype@design
    \ClassError{nwafuthesis}{In case of Master or Doctor, paper should be submit instead of design}
  \else
    \nwafu@worktype@papertrue
  \fi
\fi
\ifnwafu@lang@cn\relax\else
  \ifnwafu@lang@en\relax\else
    \nwafu@lang@cntrue
  \fi
\fi
\iffalse
  \newcommand\nwafu@university{\nwafu@label@college}
  \newcommand\nwafu@universityLogo{logo/cie.png}
\else
  \newcommand\nwafu@university{\nwafu@label@nwafu}
  \newcommand\nwafu@universityLogo{logo/nwafubilogo.png}
\fi
\newcommand\nwafu@worktypecn{%
  \ifnwafu@bachelor%
    \ifnwafu@worktype@paper%
      \nwafu@label@worktype@paper%
    \else%
      \nwafu@label@worktype@design%
    \fi%
  \else%
    \ifnwafu@master%
      \nwafu@label@worktype@master%
    \else%
      \nwafu@label@worktype@doctor%
    \fi%
  \fi%
}
\newcommand\nwafu@worktypeen{%
  \ifnwafu@master%
    \nwafu@labelEn@worktype@master%
  \else%
    \nwafu@labelEn@worktype@doctor%
  \fi%
}
\newcommand\nwafu@label@coadviser{%
  \ifnwafu@bachelor%
    \nwafu@label@bachelorcoadviser%
  \else%
    \nwafu@label@postcoadviser%
  \fi%
}
\newcommand\nwafu@label@applydate{%
  \ifnwafu@bachelor%
    \nwafu@label@bachelorapplydate%
  \else%
    \nwafu@label@postapplydate%
  \fi%
}
\def\nwafuset{\kvsetkeys{nwafu@value}}
\def\nwafusetEn{\kvsetkeys{nwafu@valueEn}}
\def\nwafu@define #1{
  \define@key{nwafu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{
    \expandafter\gdef\csname nwafu@#1\endcsname{##1}}
  \csname #1\endcsname{}
}
\def\nwafu@define@list#1#2{
  \define@key{nwafu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname nwafu@#1\endcsname{}
  \expandafter\gdef\csname nwafu@#1@pdf\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname nwafu@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname nwafu@#1\endcsname{%
          \ignorespaces #2}
        \expandafter\g@addto@macro\csname nwafu@#1@pdf\endcsname{,}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname nwafu@#1\expandafter\endcsname\expandafter{\reserved@a}
    }
    \expandafter\gdef\csname nwafu@#1@pdf\endcsname{##1}
  }
}
\nwafu@define{value@title}
\nwafu@define{value@author}
\nwafu@define{value@researchername}
\nwafu@define{value@college}
\nwafu@define{value@applydate}
\nwafu@define{value@defensedate}
\ifnwafu@bachelor
  \nwafu@define@list{value@advisers}{、}
  \nwafu@define@list{value@coadvisers}{、}
\else
  \nwafu@define@list{value@advisers}{\linebreak}
  \nwafu@define@list{value@coadvisers}{\linebreak}
\fi
\nwafu@define@list{value@adviserteam}{、}
\nwafu@define{value@cmteemembfile}
\nwafu@define{value@ackdatafile}
\nwafu@define{value@major}
\nwafu@define{value@studentid}
\nwafu@define{value@classid}
\nwafu@define{value@libraryclassid}
\nwafu@define{value@subjectclassid}
\nwafu@define{value@thesisid}
\nwafu@define{value@gradyear}
\nwafu@define{value@majorsubject}
\nwafu@define{value@researchfield}
\nwafu@define{value@clscode}
\nwafu@define{value@udccode}
\nwafu@define{value@cfdlevel}
\nwafu@define{value@unvcode}
\nwafu@define{value@applyaddress}
\nwafu@define{value@professionaltype}
\nwafu@define{value@professionalfield}
\nwafu@define{valueEn@title}
\nwafu@define{valueEn@author}
\nwafu@define{valueEn@researchername}
\nwafu@define{valueEn@researchfield}
\nwafu@define{valueEn@college}
\nwafu@define{valueEn@majorsubject}
\ifnwafu@bachelor
  \nwafu@define@list{valueEn@advisers}{、}
  \nwafu@define@list{valueEn@coadvisers}{、}
\else
  \nwafu@define@list{valueEn@advisers}{\linebreak}
  \nwafu@define@list{valueEn@coadvisers}{\linebreak}
\fi
\nwafu@define{valueEn@degreefull}
\nwafu@define{valueEn@cfdlevel}
\nwafu@define{valueEn@applydate}
\nwafu@define{valueEn@applyaddress}
\nwafu@define{valueEn@institute}
\RequirePackage{etoolbox}
\RequirePackage{environ}
\newcommand{\nwafu@@abstract}[1]{\long\gdef\nwafu@abstract{#1}}
\newenvironment{abstract}{\Collect@Body\nwafu@@abstract}{}
\newcommand{\nwafu@@abstractEn}[1]{\long\gdef\nwafu@abstractEn{#1}}
\newenvironment{abstractEn}{\Collect@Body\nwafu@@abstractEn}{}
\nwafu@define@list{keywords}{\nwafu@label@keywordsep}
\nwafu@define@list{keywordsEn}{\nwafu@labelEn@keywordsep}
\ifnwafu@lang@cn
  \newcommand\nwafu@title{\nwafu@value@title}
\else\ifnwafu@lang@en
  \newcommand\nwafu@title{\nwafu@valueEn@title}
\fi\fi
\newcommand\nwafu@font@toc{\normalsize}
\RequirePackage{expl3}
\ExplSyntaxOn
\sys_if_engine_xetex:TF{
  \PassOptionsToPackage{no-math}{fontspec}
}{}
\ExplSyntaxOff
\ifnwafu@lang@cn
  \DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
  \ProcessKeyvalOptions*
  \PassOptionsToClass{zihao=-4}{ctexbook}%,linespread=1.3889
  \PassOptionsToClass{a4paper,scheme=chinese,space=auto,UTF8}{ctexbook}
  \ifx\nwafu@fontset\@empty\relax
    \PassOptionsToClass{fontset=\nwafu@fontset}{ctexbook}
  \fi
  \LoadClass{ctexbook}
  \newcommand\nwafu@font@title{\sffamily\heiti}
  \newcommand\nwafu@indentloft{3.5pc}
  \newcommand\nwafu@chaptername\CTEX@chaptername
  \PassOptionsToPackage{indentafter}{titlesec}
\else\ifnwafu@lang@en
  \DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{book}}
  \ProcessKeyvalOptions*
  \PassOptionsToClass{a4paper}{book}
  \LoadClass{book}
  \newcommand\nwafu@font@title{\sffamily}
  \newcommand\nwafu@indentloft{5.0pc}
  \newcommand\nwafu@chaptername{\@chapapp\space \thechapter}
  \PassOptionsToPackage{indentafter}{titlesec}
  \fi
  \PassOptionsToPackage{zihao=-4}{ctex}% , linespread=1.3889
  \PassOptionsToPackage{scheme=plain}{ctex}
  \ifx\nwafu@fontset\@empty\relax
    \PassOptionsToPackage{fontset=\nwafu@fontset}{ctex}
  \fi
  \RequirePackage{ctex}
  \typeout{Patching list of figure/table in chapter}
  \patchcmd{\@chapter}
    {\addtocontents{lof}{\protect\addvspace{10\p@}}}
    {}
    {\typeout{lof-ok}}
    {\typeout{lof-FAIL}}
  \patchcmd{\@chapter}
    {\addtocontents{lot}{\protect\addvspace{10\p@}}}
    {}
    {\typeout{lot-ok}}
    {\typeout{lot-FAIL}}
\fi
\ExplSyntaxOn
\sys_if_engine_xetex:TF{}{
  \sys_if_output_dvi:TF{
    \PassOptionsToPackage{dvipdfmx}{graphicx}
    \PassOptionsToPackage{dvipdfmx}{hyperref}
    \def\pgfsysdriver{pgfsys-dvipdfm.def}
  }{}
}
\ExplSyntaxOff
\ifnwafu@nobold
  \newcommand\nwafu@textbf[1]{#1}
\else
  \newcommand\nwafu@textbf[1]{{\bfseries #1}}
\fi
\RequirePackage{geometry}  % 页边距
\RequirePackage{fancyhdr}  % 页眉页脚
\RequirePackage{titlesec}  % 各级标题
\RequirePackage{titletoc}  % 目录
\RequirePackage[backend=biber,
                style=gb7714-2015ay,
                sortlocale=zh__pinyin,
                gbtype=false,
                maxbibnames=99,% 著录所有作者
                maxcitenames=2,% 引用标注中最多显示2个作者
                mincitenames=1,% 3个及3个以上的作者截断为1个作者
                gbpub=false,
                %gbnamefmt=lowercase,% 姓名大小写由输出定
                %gbnamefmt=pinyin,
                gbnamefmt=familyahead,
                %url=false,
                doi=false,
                isbn=false,
                gbfieldtype=true, % 输出学位论文标识
                gbpunctin=false,
                gblanorder=cn;jp;kr;en;fr;ru, % 参考文献列表按中、日、韩、英、俄、法顺序输出，可以根据需要调整
                ]{biblatex} % 参考文献
\RequirePackage{graphicx}  % 插图
\RequirePackage{array}     % 表格格式扩展
\RequirePackage{tabu}      % 复杂表格
\RequirePackage{booktabs}  % 三线表格
\RequirePackage{multicol}  % 合并表格列
\RequirePackage{caption}   % 标题
\RequirePackage{bicaption} % 双语标题
\RequirePackage{hyperref}  % 超链接
\RequirePackage{ifxetex}   % 条件判断
\RequirePackage{siunitx}   % 单位符号、数字
\RequirePackage{amsmath}   % 数学公式(与unicode-math只能有一个)
\RequirePackage{amsthm}    % 数学定理、公理等
\RequirePackage{amssymb}   % 数学符号
\RequirePackage{calc}      % 计算文本长度\widthof{...}
\RequirePackage{aliascnt}  % 计数器别名newaliascnt/aliascntresetthe
\RequirePackage[shortlabels]{enumitem} % 列表环境格式调整宏包
\RequirePackage{environ}   % 创建环境和命令
\RequirePackage[bodytextleadingratio=1.65,
                footnoteleadingratio=1.57]{zhlineskip}% 调整行距
\RequirePackage{datatool} % 处理csv数据文件的宏包
\RequirePackage{floatrow} % 根据需要单独添加，代原float包
\floatsetup[table]{style=plaintop}
\RequirePackage{CJKfntef}
\sloppy
\urlstyle{same}
\def\UrlBreaks{%
  \do\/%
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l%
     \do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L%
     \do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9\do=\do/\do.\do:%
  \do\*\do\-\do\~\do\'\do\"\do\-}
\Urlmuskip=0mu plus 0.1mu
\RequirePackage[defaultsups]{newtxtext} % 正文
\RequirePackage{newtxmath} % 数学
\ExplSyntaxOn
\cs_set:Npn \zhcn #1{
  \str_if_eq_x:nnTF{\f@family}{\rmdefault}
  {{\songti#1}}{
  \str_if_eq_x:nnTF{\f@family}{\sfdefault}
  {{\heiti#1}}{
  \str_if_eq_x:nnTF{\f@family}{\ttdefault}
  {{\kaiti#1}}{#1}
  }}}
\ExplSyntaxOff
\ifthenelse{\equal{\nwafu@fontset}{windows}}{
  \ifxetex
    \setCJKsansfont{SimHei}
  \else
    \setCJKsansfont{simhei.ttf}
    \csname ctex_punct_map_family:nn\endcsname{\CJKsfdefault}{zhhei}
  \fi
}{}
\ifthenelse{\equal{\nwafu@fontset}{mac}}{
  \setCJKmainfont[
         UprightFont = * Light,
            BoldFont = * Bold,
          ItalicFont = Kaiti SC,
      BoldItalicFont = Kaiti SC Bold
    ]{Songti SC}
  \setCJKsansfont[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhsong}[
         UprightFont = * Light,
            BoldFont = * Bold,
    ]{Songti SC}
  \setCJKfamilyfont{zhhei}[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=* Bold]{Kaiti SC}
  \xeCJKsetwidth{‘’“”}{1em}
}{}
\newdimen\bp@
\bp@=1bp
\newcommand\nwafu@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\nwafu@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
  }%
}
\newcommand\nwafu@setdefaultlanguage{%
  \ifnwafu@lang@cn
    \nwafu@setchinese
  \else
    \nwafu@setenglish
  \fi
}
\newif\if@frontmatter
\newif\if@backmatter
\newif\if@appendix
\newif\if@biblio
\let\nwafu@frontmatter\frontmatter
\let\nwafu@mainmatter\mainmatter
\let\nwafu@appendix\appendix
\let\nwafu@backmatter\backmatter
\renewcommand{\frontmatter}{
  \nwafu@frontmatter
  \@frontmattertrue
  \@backmatterfalse
  \@appendixfalse
  \ifnwafu@bachelor\pagenumbering{Roman}\else\pagenumbering{Roman}\fi
  \ifnwafu@bachelor
    \ctexset{%
      chapter={%
        pagestyle={style@front},%
        beforeskip = -14\bp@,  % 24bp - 31bp
        afterskip  =  12\bp@,  % 18bp - 10bp
      },%
    }
  \fi
  \pagestyle{style@front}
}
\renewcommand{\mainmatter}{
  \nwafu@mainmatter
  \@frontmatterfalse
  \@backmatterfalse
  \@appendixfalse
  \@mainmattertrue
  \pagenumbering{arabic}
  \ifnwafu@bachelor
    \ctexset{%
      chapter={%
        pagestyle={style@main},%
        beforeskip = -14\bp@,  % 24bp - 31bp
        afterskip  =  12\bp@,  % 18bp - 10bp
      },%
    }
  \fi
  \pagestyle{style@main}
  \setlength\leftskip{\nwafuparleft}
}
\newcommand{\bibliomatter}{
  \nwafu@backmatter
  \@frontmatterfalse
  \@backmatterfalse
  \@appendixfalse
  \@mainmatterfalse
  \@bibliotrue
  \titleformat{\chapter}
    {\centering\linespread{1.0}\nwafu@font@title\zihao{4}}
    {\nwafu@chaptername}{1em}{}
  \titlespacing*{\chapter}{0pt}{10bp}{10bp}
  \pagestyle{style@biblio}
  \setlength\nwafuparleft{0pt}
  \setlength\leftskip{\nwafuparleft}
}
\renewcommand{\appendix}{
 \nwafu@appendix
 \@frontmatterfalse
 \@backmatterfalse
 \@appendixfalse
 \@mainmattertrue
 \@bibliofalse
 \pagestyle{style@appendix}
 \titleformat{\chapter}
   {\centering\linespread{1.0}\nwafu@font@title\zihao{4}}%\fontsize{15.75bp}{20.0bp}\selectfont}
   {\nwafu@chaptername}{1em}{}
 \titlespacing*{\chapter}{0pt}{10bp}{10bp}
 \pagestyle{style@appendix}
 \setlength\nwafuparleft{0pt}
 \setlength\leftskip{\nwafuparleft}
}
\renewcommand{\backmatter}{
  \nwafu@backmatter
  \@frontmatterfalse
  \@backmattertrue
  \@appendixfalse
  \@mainmatterfalse
  \@bibliofalse
  \titleformat{\chapter}
    {\centering\linespread{1.0}\nwafu@font@title\zihao{4}}
    {\nwafu@chaptername}{1em}{}
  \titlespacing*{\chapter}{0pt}{10bp}{10bp}
  \pagestyle{style@back}
  \setlength\nwafuparleft{0pt}
  \setlength\leftskip{\nwafuparleft}
}
\newlength\nwafuparleft
\ifnwafu@bachelor
  \setlength\nwafuparleft{0pt}%2\ccwd
\else
  \setlength\nwafuparleft{0pt}
\fi
\newcommand\nwafufontparleft{
  \addtolength\@totalleftmargin{\nwafuparleft}
  \addtolength\linewidth{-\nwafuparleft}
  \parshape 1 \nwafuparleft \linewidth
}
\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true
}
\ifnwafu@bachelor \geometry{% 本科生页边距
  paper=a4paper,
  top=3.1cm,
  bottom=2.5cm,
  left=2.5cm,
  right=2.5cm,
  headheight=0.8cm,
  headsep=0.7cm,
  footskip=1.4cm,
} \else \geometry{% 研究生页边距
  paper=a4paper,
  top=3.1cm,
  bottom=3.3cm,
  left=2.6cm,
  right=2.6cm,
  headheight=0.8cm,
  headsep=0.7cm,
  footskip=1.4cm,
  %includehead,
  %includefoot,
}
\fi
\newcommand\nwafu@footerpagenum@decorate[1]{%
\ifnwafu@bachelor%
  \if@frontmatter{#1}\else{- #1 -}\fi% 本科生页码修饰
\else%
  {#1}% 研究生页码无修饰
\fi%
}
\fancypagestyle{style@empty}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{style@front}{
  \fancyhead{}
  \ifnwafu@bachelor
    %\fancyhead[C]{
    %  \ifodd\value{page}
    %  {
    %    \mbox{\songti\zihao{5}\leftmark}
    %  }
    %  \else
    %  {
    %    \mbox{\songti\zihao{5}\nwafu@title}
    %  }
    %  \fi
    %}
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\nwafu@label@nwafu\nwafu@worktypecn\nwafu@label@worktype@degree}%\nwafu@title}
      }
      \fi
    }
  \fi
  % 页脚
  \fancyfoot{}
  \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \if@twoside
  %   \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \else
  %   \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \fi
  % \ifnwafu@bachelor
  %   \if@twoside
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \else
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \fi
  % \else
  %   \relax
  % \fi
  \ifnwafu@bachelor
    \relax
  \else
    \renewcommand{\headrulewidth}{0.75bp}
  \fi
  %\renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\fancypagestyle{style@main}{
  \fancyhead{}
  \ifnwafu@bachelor
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\nwafu@title}
      }
      \fi
    }
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\nwafu@label@nwafu\nwafu@worktypecn\nwafu@label@worktype@degree}%\nwafu@title}
      }
      \fi
    }
  \fi
  % 页脚
  \fancyfoot{}
  \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \if@twoside
  %   \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \else
  %   \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \fi
  % \ifnwafu@bachelor
  %   \if@twoside
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \else
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \fi
  % \else
  %   \relax
  % \fi
  \renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\fancypagestyle{style@biblio}{
  \fancyhead{}
  \ifnwafu@bachelor
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\bibname}
      }
      \else
      {
        \mbox{\songti\zihao{5}\bibname}
      }
      \fi
    }
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\bibname}
      }
      \else
      {
        \mbox{\songti\zihao{5}\nwafu@label@nwafu\nwafu@worktypecn\nwafu@label@worktype@degree}
      }
      \fi
    }
    % \fancyhead[L]{
    %   \ifodd\value{page}
    %   {
    %     \relax
    %   }
    %   \else
    %   {
    %     \mbox{\songti\zihao{5}\thepage}
    %   }
    %   \fi
    % }
    % \fancyhead[R]{
    %   \ifodd\value{page}
    %   {
    %     \mbox{\songti\zihao{5}\thepage}
    %   }
    %   \else
    %   {
    %     \relax
    %   }
    %   \fi
    % }
  \fi
  \fancyfoot{}
  \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \ifnwafu@bachelor
  %   \if@twoside
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \else
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \fi
  % \else
  %   \relax
  % \fi
  \renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\fancypagestyle{style@appendix}{
  \fancyhead{}
  \ifnwafu@bachelor
    \renewcommand{\chaptermark}[1]{%
      \markboth{\@chapapp}{}}
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \fi
    }
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\nwafu@label@nwafu\nwafu@worktypecn\nwafu@label@worktype@degree}
      }
      \fi
    }
    % \fancyhead[L]{
    %   \ifodd\value{page}
    %   {
    %     \relax
    %   }
    %   \else
    %   {
    %     \mbox{\songti\zihao{5}\thepage}
    %   }
    %   \fi
    % }
    % \fancyhead[R]{
    %   \ifodd\value{page}
    %   {
    %     \mbox{\songti\zihao{5}\thepage}
    %   }
    %   \else
    %   {
    %     \relax
    %   }
    %   \fi
    % }
  \fi
  \fancyfoot{}
  \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \ifnwafu@bachelor
  %   \if@twoside
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \else
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \fi
  % \else
  %   \relax
  % \fi

  \renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\fancypagestyle{style@back}{
  \fancyhead{}
  \ifnwafu@bachelor
    %\renewcommand{\chaptermark}[1]{%
    % \markboth{##1}{}}
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \fi
    }
  \else
    \fancyhead[C]{
      \ifodd\value{page}
      {
        \mbox{\songti\zihao{5}\leftmark}
      }
      \else
      {
        \mbox{\songti\zihao{5}\nwafu@label@nwafu\nwafu@worktypecn\nwafu@label@worktype@degree}
      }
      \fi
    }
    % \fancyhead[L]{
    %   \ifodd\value{page}
    %   {
    %     \relax
    %   }
    %   \else
    %   {
    %     \mbox{\songti\zihao{5}\thepage}
    %   }
    %   \fi
    % }
    % \fancyhead[R]{
    %   \ifodd\value{page}
    %   {
    %     \mbox{\songti\zihao{5}\thepage}
    %   }
    %   \else
    %   {
    %     \relax
    %   }
    %   \fi
    % }
  \fi
  \fancyfoot{}
  \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  % \ifnwafu@bachelor
  %   \if@twoside
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \else
  %     \fancyfoot[C]{\footnotesize{\nwafu@footerpagenum@decorate{\thepage}}}
  %   \fi
  % \else
  %   \relax
  % \fi
  \renewcommand{\headrulewidth}{0.75bp}
  %\ifnwafu@bachelor
  %  \renewcommand{\footrulewidth}{0.75bp}
  %\fi
}
\ifnwafu@lang@cn
  \ctexset{%
    appendixname=附录,
    contentsname={目\hspace{\ccwd}录},
    listfigurename=插图索引,
    listtablename=表格索引,
    figurename=图,
    tablename=表,
    bibname=参考文献,
    indexname=索引,
  }
  \newcommand\nwafu@denotation@name{主要符号对照表}
  \newcommand\listequationname{公式索引}
  \newcommand\equationname{式}
  \newcommand\nwafu@ack@name{致谢}
\else
  \newcommand\nwafu@denotation@name{Nomenclature}
  \newcommand\listequationname{List of Equations}
  \newcommand\equationname{Equation}
\fi
\ifnwafu@bachelor
  \newcommand{\cabstractname}{摘要}
  \newcommand{\eabstractname}{Abstract}
  \newcommand\nwafu@resume@title{个人简历}
\else
  \newcommand{\cabstractname}{摘\hspace{\ccwd}要}
  \newcommand{\eabstractname}{Abstract}
  \newcommand\nwafu@resume@title{个人简历}
\fi
\let\CJK@todaysave=\today
\def\CJK@todaysmall@short{\the\year 年 \the\month 月}
\def\CJK@todaysmall{\the\year 年 \the\month 月 \the\day 日}
\def\CJK@todaybig@short{\zhdigits{\the\year}年\zhnumber{\the\month}月}
\def\CJK@todaybig{\zhdigits{\the\year}年\zhnumber{\the\month}月\zhnumber{\the\day}日}
\def\CJK@today{\CJK@todaysmall}
\renewcommand\today{\CJK@today}
\newcommand\CJKtoday[1][1]{%
  \ifcase#1\def\CJK@today{\CJK@todaysave}
    \or\def\CJK@today{\CJK@todaysmall}
    \or\def\CJK@today{\CJK@todaybig}
  \fi}
\AtBeginDocument{%
  \pagestyle{style@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\nwafu@chapter@titleformat[1]{%
  \ifnwafu@bachelor #1\else%
    \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
      \fi}
\ifnwafu@bachelor%
  \ctexset{%
    chapter={%
      name={第,章},%
      number=\arabic{chapter},%
      afterindent=true,%
      pagestyle={style@main},%
      %beforeskip   = {0.2\baselineskip},%
      %afterskip    = {0.5\baselineskip},%
      format={\centering\sffamily\nwafu@font@title\zihao{3}},%
      nameformat=\relax,%
      numberformat=\relax,%
      titleformat=\nwafu@chapter@titleformat,%
      lofskip=0pt,%
      lotskip=0pt,%
    },%
    section={%
      afterindent=true,%
      %beforeskip = {0.5\baselineskip},%
      %afterskip  = {0.5\baselineskip},%
      beforeskip={-7\bp@ \@plus 1ex \@minus .2ex},
      afterskip={12\bp@ \@plus .2ex},
      format={\raggedright\sffamily\nwafu@font@title\zihao{4}},%
    },%
    subsection={%
      afterindent=true,%
      %beforeskip = {0.2\baselineskip},%
      %afterskip  = {0.2\baselineskip},%
      beforeskip={6\bp@ \@plus 1ex \@minus 0.2ex},
      afterskip={6\bp@ \@plus .2ex},
      format={\sffamily\nwafu@font@title\zihao{-4}},%
    },%
    subsubsection={%
      name={( , )},%
      number=\arabic{subsubsection},%
      afterindent=true,%
      beforeskip={-8\bp@ \@plus 1ex \@minus .2ex},%
      afterskip={8\bp@ \@plus 1ex \@minus .2ex},%
      format={\rmfamily\zihao{-4}},%\nwafu@font@title
      indent=2\ccwd,%
    },%
    paragraph/afterindent=true,%
    subparagraph/afterindent=true%
  }
\else%
  \ctexset{%
    chapter={%
      name={第,章},%
      number=\chinese{chapter},%
      afterindent=true,%
      pagestyle={style@main},%
      beforeskip   = {0.2\baselineskip},%
      afterskip    = {0.5\baselineskip},%
      format={\centering\sffamily\nwafu@font@title\zihao{3}},%
      nameformat=\relax,%
      numberformat=\relax,%
      titleformat=\nwafu@chapter@titleformat,%
      lofskip=0pt,%
      lotskip=0pt,%
    },%
    section={%
      afterindent=true,%
      beforeskip = {0.5\baselineskip},%
      afterskip  = {0.5\baselineskip},%
      format={\raggedright\sffamily\nwafu@font@title\zihao{4}},%
    },%
    subsection={%
      afterindent=true,%
      beforeskip = {0.2\baselineskip},%
      afterskip  = {0.2\baselineskip},%
      format={\sffamily\nwafu@font@title\zihao{-4}},%
    },%
    subsubsection={%
      afterindent=true,%
      %beforeskip = {0.2\baselineskip},%
      %afterskip  = {0.2\baselineskip},%
      format={\sffamily\nwafu@font@title\zihao{-4}},%
      %indent=2\ccwd,%
    },%
    paragraph/afterindent=true,%
    subparagraph/afterindent=true%
  }%
\fi%
\newcounter{nwafu@bookmark}
\NewDocumentCommand\nwafu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{nwafuthesis}{You have to use the star form: \string\nwafu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi\phantomsection%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \addtocounter{nwafu@bookmark}\@ne
      \pdfbookmark[0]{#3}{nwafuchapter.\thenwafu@bookmark}
    }{%
      \addcontentsline{toc}{chapter}{#3}
    }
  }{%
    \addcontentsline{toc}{chapter}{#3}
  }%
  \ifnwafu@bachelor \ctexset{chapter/beforeskip=25bp} \fi
  \chapter*{#3}%
  \ifnwafu@bachelor \ctexset{chapter/beforeskip=15bp} \fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}
    {\@mkboth{}{}}
    {\@mkboth{#4}{#4}}
  }{%
    \@mkboth{#3}{#3}
  }
}
\setcounter{secnumdepth}{3}
\ifnwafu@lang@en
  \titlecontents{chapter}[5pc]
    {\bfseries\zihao{-4}\nwafu@font@toc}
    {\contentslabel[\chaptername~\thecontentslabel]{5pc}}
    {\renewcommand\thecontentslabel{\relax}\hspace*{-5pc}}
    {\titlerule*[1ex]{.}\contentspage}
\else
  \titlecontents{chapter}[3.5pc]
    {\heiti\zihao{-4}\nwafu@font@toc}
    {\contentslabel[\thecontentslabel]{3.5pc}}
    {\hspace*{-3.5pc}}
    {\titlerule*[1ex]{.}\contentspage}
\fi
\titlecontents{section}[3pc]
  {\zihao{-4}\nwafu@font@toc}
  {\contentslabel[\thecontentslabel]{2pc}}
  {}
  {\titlerule*[1ex]{.}\contentspage}
\titlecontents{subsection}[5pc]
  {\zihao{-4}\nwafu@font@toc}
  {\contentslabel[\thecontentslabel]{3pc}}
  {}
  {\titlerule*[1ex]{.}\contentspage}
\titlecontents{figure}[\nwafu@indentloft]
  {\nwafu@font@toc}
  {\contentslabel[\figurename~\thecontentslabel]{\nwafu@indentloft}}
  {\figurename}
  {\titlerule*[1ex]{.}\contentspage}
\titlecontents{table}[\nwafu@indentloft]
  {\nwafu@font@toc}
  {\contentslabel[\tablename~\thecontentslabel]{\nwafu@indentloft}}
  {\tablename}
  {\titlerule*[1ex]{.}\contentspage}
\DefineBibliographyExtras{english}{\renewcommand*{\bibrangedash}{$\sim$}}
\newcommand\nwafu@font@bib{\linespread{1.3}\zihao{5}}%
\renewcommand{\bibfont}{\nwafu@font@bib}%\fangsong
\DeclareFieldFormat[article]{journaltitle}{\iffieldequalstr{userd}{chinese}{#1}{\textit{#1}}\isdot}%
\renewcommand{\postnotedelim}{\addcolon\space}
\DeclareFieldFormat{postnote}{#1}
\renewcommand*{\nameyeardelim}{\space}
\DeclareDelimFormat[bib,biblist]{nameyeardelim}{\addperiod\space}
\DefineBibliographyStrings{english}{
    %and         = {\addcomma},%将第2和3人名见的and符号改成 逗号，用\finalnamedelim命令也可以定义，参见3.9.1节
    %andcn       = {\addcomma},%\str@andcn\ and本地化字符串的中文对应词
    andincitecn = {和},%将标注中的分开，便于与文献表中的区分
    andincite   = {and},
    mathesiscn={[硕士学位论文]},
    phdthesiscn={[博士学位论文]},
    in={In:\addspace},
    incn={见:\addspace},
}
\DeclareDelimFormat{finalnamedelim}{%
  \ifnumgreater{\value{liststop}}{2}{\finalandcomma}{}%
  %\addspace%
  \edef\userfieldabcde{userd}%
  \ifcurrentname{translator}{\edef\userfieldabcde{usere}}{}%
  \ifcurrentname{editor}{\edef\userfieldabcde{userc}}{}%
  \ifcurrentname{author}{\edef\userfieldabcde{userf}}{}%
  \ifcurrentname{bookauthor}{\edef\userfieldabcde{userb}}{}%
  \ifcase\value{gbcitelocalcase}%
    \iffieldequalstr{\userfieldabcde}{chinese}{\bibstring{andincitecn}}{}%
    \iffieldequalstr{\userfieldabcde}{korean}{\bibstring{andkr}}{}%
    \iffieldequalstr{\userfieldabcde}{japnese}{\bibstring{andjp}}{}%
    \iffieldequalstr{\userfieldabcde}{english}{\addspace\bibstring{andincite}\addspace}{}%
    \iffieldequalstr{\userfieldabcde}{french}{\addspace\bibstring{and}\addspace}{}%
    \iffieldequalstr{\userfieldabcde}{russian}{\addspace\bibstring{and}\addspace}{}%
  \or%
  \bibstring{andincitecn}%
  \or%
  \addspace\bibstring{andincite}\addspace%
  \fi
}
\DeclareDelimFormat{strandothersdelim}{%
  \ifnumgreater{\value{liststop}}{2}{\finalandcomma}{}%
  %\addspace%
  \edef\userfieldabcde{userd}%
  \ifcurrentname{translator}{\edef\userfieldabcde{usere}}{}%
  \ifcurrentname{editor}{\edef\userfieldabcde{userc}}{}%
  \ifcurrentname{author}{\edef\userfieldabcde{userf}}{}%
  \ifcurrentname{bookauthor}{\edef\userfieldabcde{userb}}{}%
  \ifcase\value{gbcitelocalcase}%
    \iffieldequalstr{\userfieldabcde}{chinese}{\bibstring{andothersincitecn}}{}%中文已经通过english本地化字符串定义
    \iffieldequalstr{\userfieldabcde}{korean}{\bibstring{andotherskr}}{}%韩语未定义，所以与bib中一致
    \iffieldequalstr{\userfieldabcde}{japnese}{\bibstring{andothersjp}}{}%日与同韩语
    \iffieldequalstr{\userfieldabcde}{english}{\bibstring{andothersincite}}{}%英语已定义
    \iffieldequalstr{\userfieldabcde}{french}{\bibstring{andothers}}{}%法语未定义，若要定义需要针对french本地化字符串定义
    \iffieldequalstr{\userfieldabcde}{russian}{\bibstring{andothers}}{}%俄语未定义，若要定义需要针对russian本地化字符串定义
  \or%
  \bibstring{andothersincitecn}%
  \or%
  \bibstring{andothersincite}%
  \fi
}
\AtEveryCitekey{%
  \iffieldequalstr{userf}{chinese}{\renewcommand*{\andothersdelim}{}}%\addthinspace
  {\renewcommand*{\andothersdelim}{\addspace}}%
}
\renewbibmacro*{cite:extradate}{%
  \iffieldundef{extradate} {}
  {\printtext[bibhyperref]{\printlabeldateextra}}%\printfield{extradate}
}
\renewbibmacro*{date+extradate}{%
  \iffieldundef{labelyear}{}%
  {\ifboolexpr{%
     test {\ifentrytype{patent}}
     or
     (test {\ifentrytype{newspaper}} )%
   }%
   {\printtext{\blx@isodate{}{}}}%
   {\printtext{%
       \iflabeldateisdate
       {\printdateextra}
       {\printlabeldateextra}
    }
   }%
  }%
}
\newbibmacro*{origdate+extradate}{%
  \printtext{\printorigdate}%
}
\renewbibmacro*{bytranslator+others}{%
  \ifnameundef{translator}
    {}
    {%\usebibmacro{bytranslator+othersstrg}
     %\setunit{\addspace}%
     \printnames[bytranslator]{translator}%
     %\clearname{translator}%
     %从macro*{bytranslator+othersstrg}%中可以看到当地化字符串格式的引用前的代码处理
     %比如生成cotranslator等用于调用cotranslator所代表的当地化字符串
     \usebibmacro{bytranslator+othersstrg}%“译”的位置换到下面来，即放到译者后面。
     %\setunit{\addspace}%
     \newunit
    }%
  \usebibmacro{withothers}%
  \ifboolexpr{%
    test {\iffieldundef{origyear}} or test {\ifnameundef{translator}}%%
  }{}{\printtext{\printdate}}%
}
\renewbibmacro*{url+urldate}{%
  % \usebibmacro{url}%%更换url的位置，放到下面
  \usebibmacro{url}%
  \iffieldundef{urlyear}%
  {}
  {%\setunit*{\addspace}%
    \usebibmacro{urldate}
  }
}
\DeclareFieldFormat{addnumflag}{%
  \ifentrytype{newspaper}
  {\setunit{\addcomma\addspace}\printtext{#1}}
  {\nobreak\printtext{(}\nobreak #1\nobreak\printtext{)}}
}
\renewbibmacro*{patenttitle}{%原输出来自biblatex.def文件
  \ifboolexpr{%
    test{\iffieldundef{title}}%
    and%
    test{\iffieldundef{subtitle}}%
  }%
  {}%
  {
    \printtext[title]{\bibtitlefont%
    \printfield[titlecase]{title}%
    \ifboolexpr{test {\iffieldundef{subtitle}}}%这里增加了对子标题的判断，解决不判断多一个点的问题
    {}
    {
      \setunit{\subtitlepunct}%
      \printfield[titlecase]{subtitle}}%
      \iffieldundef{titleaddon}{}%判断一下titleaddon，否则直接加可能多一个空格
      {\setunit{\subtitlepunct}\printfield{titleaddon}}%
      \setunit{\adddot\addspace}\printfield{number}%写专利号
      \iftoggle{bbx:gbtype}{\printfield[gbtypeflag]{usera}}{}%
     %\iffieldundef{booktitle}{\newunit}{}%当title是析出时，不要标点
     %\newunit
    }%
  }%
}
\renewbibmacro*{name:andothers}{%
  \ifboolexpr{
    test {\ifnumequal{\value{listcount}}{\value{liststop}}}
    and
    test \ifmorenames
  }{\ifnumgreater{\value{liststop}}{1}%
       {\finalandcomma}%
       {}%biblatex作者要区别单作者加等的情况，这里为符合gbt7714-2015第7.2节的要求加上了逗号。
\printdelim{andothersdelim}\printdelim{strandothersdelim}%
}{%当是译者的时候需要特殊处理：从7.2节看等，译前面加逗号，但从示例看等和译同时出现时，译前的逗号没有，比如：
}}

\DeclareFieldFormat{edition}{%源来自biblatex.DEF
\testCJKfirst{userd}%
\iftoggle{ifCJKforgbt}%
{\ifinteger{#1}%
{\printtext{\bibstring{serialcn}\zhnumber{#1}\str@edition}}%
{#1\isdot}}%
{\ifinteger{#1}%
{\mkbibordedition{#1}~\bibstring{edition}}%
{#1\isdot}}}

\renewbibmacro*{author}{%以前的date+extrayear变为date+extradate，所以对3.8以上版本重定义一下author
  \ifboolexpr{
    test \ifuseauthor
    and
    not test {\ifnameundef{author}}
  }
    {\usebibmacro{bbx:dashcheck}
       {%\bibnamedash %去掉相同作者用横线代替的处理
       \printnames{author}\setunit{\printdelim{nameyeardelim}}%把标点也带上
       }
       {\usebibmacro{bbx:savehash}%
        \printnames{author}%
        \iffieldundef{authortype}
          {\setunit{\printdelim{nameyeardelim}}}
          {\setunit{\printdelim{authortypedelim}}}}%
     \iffieldundef{authortype}
       {}
       {\usebibmacro{authorstrg}%
        \setunit{\printdelim{nameyeardelim}}}}%
    {\global\undef\bbx@lasthash
     \usebibmacro{labeltitle}%
     \setunit*{\printdelim{nonameyeardelim}}}%
     \ifboolexpr{%
    test {\iffieldundef{origyear}} or test {\ifnameundef{translator}}%
     }{\usebibmacro{date+extradate}}%
  {\usebibmacro{origdate+extradate}}%
  }

  \DeclareBibliographyDriver{book}{%源来自standard.bbx文件
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
\usebibmacro{author/editor+others/translator+others}%
\ifnameundef{author}{}{\setunit{\labelnamepunct}\newblock}%这一段用于去除作者不存在时多出的标点
\usebibmacro{maintitle+title}%
\iftoggle{bbx:gbstrict}{}{%
\newunit
\printlist{language}%
\newunit\newblock%
\usebibmacro{byauthor}%
\newunit\newblock}%
\newunit
\printfield{edition}%
\newunit
\usebibmacro{byeditor+others}%
\newunit\newblock%%
\iftoggle{bbx:gbstrict}{}{%
\iffieldundef{maintitle}%
{\printfield{volume}%
\printfield{part}}%
{}%
\newunit%
\printfield{volumes}%
\newunit\newblock%
\usebibmacro{series+number}}%
\newunit\newblock%
\usebibmacro{publisher+location+date}%
\usebibmacro{chapter+pages}%
  \iffieldundef{url}{}{%当没有网址时也不输出
  \usebibmacro{modifydate}}%带括号的修改或更新日期，
\usebibmacro{doi+eprint+url}%从下面移动到上面来，因为gbt2015的url需直接放在页码后面。
  \newunit\newblock%
  \printfield{pagetotal}%
  \newunit\newblock%
  \iftoggle{bbx:isbn}
    {\printfield{isbn}}
    {}%
  \newunit\newblock
  %\usebibmacro{doi+eprint+url}%
  %\newunit\newblock
  \usebibmacro{addendum+pubstate}%
  \setunit{\bibpagerefpunct}\newblock
  \usebibmacro{pageref}%
  \newunit\newblock
  \iftoggle{bbx:related}
    {\usebibmacro{related:init}%
     \usebibmacro{related}}
    {}%
  \usebibmacro{finentry}}
\DeclareBibliographyDriver{online}{%源来自standard.BBX
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author/editor+others/translator+others}%
\ifnameundef{author}{}{\setunit{\labelnamepunct}\newblock}%这一段用于去除作者不存在时多出的标点
  \usebibmacro{title}%
  \iftoggle{bbx:gbstrict}{}{%
  \newunit%
  \printlist{language}%
  \newunit\newblock
  \usebibmacro{byauthor}%
  \newunit\newblock
  \usebibmacro{byeditor+others}%
  \newunit\newblock
  \printfield{note}}%
  \newunit
  \printfield{version}%
  \newunit\newblock
 \printlist{institution}%
  \newunit\newblock
\ifboolexpr{%
test{\iffieldundef{day}} and test{\iffieldundef{endday}} and test{\iffieldundef{eventday}}%
}{\usebibmacro{date}}%
  \usebibmacro{url+urldate}%从下面移上来
  \newunit\newblock
  \iftoggle{bbx:eprint}
    {\usebibmacro{eprint}}
    {}%
  \newunit\newblock
  %\usebibmacro{url+urldate}%
  %\newunit\newblock
  \usebibmacro{addendum+pubstate}%
  \setunit{\bibpagerefpunct}\newblock
  \usebibmacro{pageref}%
  \newunit\newblock
  \iftoggle{bbx:related}
    {\usebibmacro{related:init}%
     \usebibmacro{related}}
    {}%
  \usebibmacro{finentry}}

  \DeclareBibliographyDriver{patent}{%源来自standard.BBX
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author}%
\ifnameundef{author}{}{\setunit{\labelnamepunct}\newblock}%这一段用于去除作者不存在时多出的标点
  %\usebibmacro{title}%
  \usebibmacro{patenttitle}%给出专利专用的标题输出
  \iftoggle{bbx:gbstrict}{}{%
  \newunit%
  \printlist{language}%
  \newunit\newblock
  \usebibmacro{byauthor}}%
  \newunit\newblock
  \printfield{type}%
  \setunit*{\addspace}%
  %\printfield{number}%已放到patenttitle中处理
  \iflistundef{location}
    {}
    {\setunit*{\addspace}%
     \printtext{%[parens]
       \printlist[][-\value{listtotal}]{location}}}%
  \newunit\newblock
  \usebibmacro{byholder}%
  \newunit\newblock
  \printfield{note}%
  \newunit\newblock
  %\usebibmacro{newsdate}%
  %\newunit\newblock
  \usebibmacro{doi+eprint+url}%
  \newunit\newblock
  \usebibmacro{addendum+pubstate}%
  \setunit{\bibpagerefpunct}\newblock
  \usebibmacro{pageref}%
  \newunit\newblock
  \iftoggle{bbx:related}
    {\usebibmacro{related:init}%
     \usebibmacro{related}}
    {}%
  \usebibmacro{finentry}}
\setlength{\bibitemsep}{2pt}
\setlength{\bibnamesep}{0ex}
\setlength{\bibinitsep}{0ex}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\hypersetup{
  hidelinks,
  bookmarksnumbered=true,
}
\ifxetex
\RequirePackage{upgreek}
\sisetup{
  math-micro = {\upmu},
  text-micro = {\textmu},
}
\fi
\ifnwafu@lang@cn
  \def\mathellipsis{\cdots}
\fi
\protected\def\le{\leqslant}
\protected\def\ge{\geqslant}
\AtBeginDocument{%
  \renewcommand\leq{\leqslant}%
  \renewcommand\geq{\geqslant}%
}
\AtBeginDocument{%
  \renewcommand{\Re}{\operatorname{Re}}%
  \renewcommand{\Im}{\operatorname{Im}}%
}
\newcommand\bm{\symbf}
\renewcommand\boldsymbol{\symbf}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand\figureautorefname\figurename
\renewcommand\tableautorefname\tablename
\newcommand\subfigureautorefname\figureautorefname
\renewenvironment{proof}[1][\proofname]{
  \pushQED{\qed}%
  \normalfont
  \topsep0pt \partopsep0pt % no space before
  \trivlist
  \nwafufontparleft
  \item[\hskip\labelsep\hskip\parindent
        \nwafu@font@title\selectfont
    #1\@addpunct{:}]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\ifnwafu@lang@cn
  \renewenvironment{proof}[1][\proofname]{
    \pushQED{\qed}%
    \normalfont
    \topsep0pt \partopsep0pt % no space before
    \trivlist
    \nwafufontparleft
    \item[\hskip\labelsep\hskip\parindent
          \nwafu@font@title\selectfont
      #1\@addpunct{:}]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \newtheoremstyle{nwafuplain}
    {0pt}{0pt}
    {\nwafufontparleft}{\parindent}
    {}{：}
    {0em}
    {\nwafu@font@title\selectfont\thmname{#1}\thmnumber{#2}\thmnote{（#3）}}
\else\ifnwafu@lang@en
  \renewenvironment{proof}[1][\proofname]{
    \pushQED{\qed}%
    \normalfont
    \topsep0pt \partopsep0pt % no space before
    \trivlist
    \nwafufontparleft
    \item[\hskip\labelsep\hskip\parindent
          \itshape\selectfont
      #1\@addpunct{:}]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \newtheoremstyle{nwafuplain}
    {0pt}{0pt}
    {\nwafufontparleft\itshape\selectfont}{\parindent}
    {}{:~}
    {0em}
    {\nwafu@font@title\selectfont\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}
\else
  \popQED\endtrivlist\@endpefalse
  \newtheoremstyle{nwafuplain}
    {0pt}{0pt}
    {\nwafufontparleft}{\parindent}
    {}{: }
    {0em}
    {\nwafu@font@title\selectfont\thmname{#1}\thmnumber{#2}\thmnote{(#3)}}
\fi\fi
\newcommand\nwafutheoremg[3][\@empty]{
  \newtheorem{#2}{#3}
  \expandafter\gdef\csname #2autorefname\endcsname{% 空格消除
    \expandafter\ifstrempty\expandafter{#1}{#3}{#1}}
}
\newcommand\nwafutheoremchap[3][\@empty]{
  \newtheorem{#2}{#3}[chapter]
  \expandafter\gdef\csname #2autorefname\endcsname{% 空格消除
    \expandafter\ifstrempty\expandafter{#1}{#3}{#1}}
}
\newcommand\nwafutheoremchapu[3][\@empty]{
  \newaliascnt{#2}{dummytheorem}
  \newtheorem{#2}[#2]{#3}
  \aliascntresetthe{#2}
  \expandafter\gdef\csname #2autorefname\endcsname{% 空格消除
    \expandafter\ifstrempty\expandafter{#1}{#3}{#1}}
}
\newtheorem{dummytheorem}{Dummy}[chapter]
\newcommand\nwafufontcaption{
  \ifnwafu@bachelor
    \nwafu@font@title\zihao{5}
  \else
    \normalfont
  \fi
}
\setlength{\floatsep}{12bp \@plus4pt \@minus1pt}
\setlength{\intextsep}{12bp \@plus4pt \@minus2pt}
\setlength{\textfloatsep}{12bp \@plus4pt \@minus2pt}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\ifnwafu@bachelor
  \g@addto@macro\appendix{\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}}
  \g@addto@macro\appendix{\renewcommand*{\thetable}{\thechapter-\arabic{table}}}
\fi
\let\old@tabular\@tabular
\def\nwafu@tabular{\zihao{5}\old@tabular}
\DeclareCaptionLabelFormat{nwafu}{{\zihao{5}\nwafufontcaption #1~#2}}
\DeclareCaptionLabelSeparator{nwafu}{\hspace{1em}}
\DeclareCaptionFont{nwafu}{\nwafufontcaption}
\captionsetup{labelformat=nwafu,labelsep=nwafu,font=nwafu,skip=12bp}
\captionsetup[table]{position=top}
\captionsetup[figure]{position=bottom}
\captionsetup[sub]{font=nwafu}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\captionsetup{justification=centerlast}
\captionsetup[figure][bi-first]{name=图}
\captionsetup[figure][bi-second]{name=Fig.}
\captionsetup[table][bi-first]{name=表}
\captionsetup[table][bi-second]{name=Tab.}
\setlength\heavyrulewidth{0.5bp}
\setlength\lightrulewidth{0.5bp}
\setlength\cmidrulewidth{0.5bp}
\ifnwafu@bachelor
  \DeclareFloatFont{bachelor}{\linespread{1.3}\fontsize{10.5bp}{15.6bp}\selectfont}
  \floatsetup[table]{font=bachelor}
\fi
\newenvironment{denotation}[1][2.5cm]{%
  \nwafu@chapter*[]{\nwafu@denotation@name} % no tocline
  \vskip-30bp\zihao{-4}\begin{nwafu@denotation}[labelwidth=#1]
}{%
  \end{nwafu@denotation}
}
\newlist{nwafu@denotation}{description}{1}
\setlist[nwafu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\newenvironment{acknowledgement}[1][\nwafu@ack@name]{%
    \nwafu@chapter*{#1}
  }{}
\newenvironment{resume}[1][\nwafu@resume@title]{%
    \nwafu@chapter*{#1}
  }{}
\newcommand{\resumeitem}[1]{%
  \vspace{24bp}{\zihao{-4}\heiti\centerline{#1}}\par\vspace{6bp}}
\newcommand{\researchitem}[1]{%
  \vspace{32bp}{\zihao{-4}\heiti\centerline{#1}}\par\vspace{14bp}}
\newlist{publications}{enumerate}{1}
\setlist[publications]{label=[\arabic*],align=left,nosep,itemsep=6bp,
  leftmargin=10mm,before=\zihao{-4},resume}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{label=[\arabic*],align=left,nosep,itemsep=6bp,
  leftmargin=10mm,before=\zihao{-4}}
\def\publicationskip{\bigskip\bigskip}
\setlist{nosep}
\setlist*{leftmargin=*}
\setlist[1]{labelindent=\dimexpr\parindent+\nwafuparleft\relax} %% Only the level 1
\setlist[enumerate]{wide=\parindent}  % 设置列表首行缩进
\setlist[itemize]{wide=\parindent}    % 设置编号首行缩进
\newcommand{\nwafu@dateCn}{
  \the\year 年\the\month 月
}
\newcommand{\nwafu@dateEn}{
  \ifcase\the\month
  \or January%
  \or February%
  \or March%
  \or April%
  \or May%
  \or June%
  \or July%
  \or August%
  \or September%
  \or October%
  \or November%
  \or December%
  \fi, \the\year
}
\ifnwafu@blankleft
  \let\nwafu@cleardoublepage\cleardoublepage
  \renewcommand{\cleardoublepage}{
    \clearpage
    {
    \pagestyle{style@empty}
    \nwafu@cleardoublepage
    }
  }
\fi
\newbox\nwafu@kw
\newcommand{\nwafu@put@kw}[2]{%
  \begingroup
  \setbox\nwafu@kw=\hbox{#1}
  \noindent\hangindent\wd\nwafu@kw\hangafter1
  \box\nwafu@kw#2\par
  \endgroup}
\def\makecover{
  \ifnwafu@lang@cn
    \hypersetup{
      pdftitle = {\nwafu@value@title},
      pdfauthor = {\nwafu@value@author},
      pdfkeywords = {\nwafu@keywords@pdf}
    }
  \else\ifnwafu@lang@en
    \hypersetup{
      pdftitle = {\nwafu@valueEn@title},
      pdfauthor = {\nwafu@valueEn@author},
      pdfkeywords = {\nwafu@keywordsEn@pdf}
    }
  \fi\fi
  \pagestyle{style@empty}
  \pagenumbering{Alph}
  \cleardoublepage

  \ifnwafu@bachelor
    \nwafu@make@cover@bachelor
  \else
    \nwafu@make@cover@master@cn
    \nwafu@make@cover@master@en%
    \nwafu@make@titlepage@master@cn
    %\nwafu@make@projlist@master
  \fi
}
\newcommand\makeprojlist{
  \ifnwafu@bachelor
    \relax
  \else
    \nwafu@make@projlist@master
  \fi
}
\newcommand\makedeclare{
  \ifnwafu@bachelor
    \nwafu@make@declare@bachelor
  \else
    \nwafu@make@declare@master
  \fi
}
\newcommand\makeabstract{
  %\pagestyle{style@empty}
  \cleardoublepage

  \ifnwafu@bachelor
    \nwafu@make@abstract@bachelor@cn
    \nwafu@make@abstract@bachelor@en
  \else
    \nwafu@make@abstract@master@cn
    \nwafu@make@abstract@master@en
  \fi
}
\newcommand\nwafutableofcontents{
  \cleardoublepage
  \ifnwafu@bachelor
    \nwafu@chapter*[]{
      \linespread{1.5}\fontsize{16bp}{15.6bp}\selectfont
    \contentsname}[]
  \else
    \nwafu@chapter*[]{\contentsname}
  \fi
  \@starttoc{toc}
}
\newcommand\nwafulistoffigurestables{
  \clearpage
  \chapter*{\listfiguretablename}
  \@starttoc{lof}
  \bigskip
  \@starttoc{lot}
}
\newcommand\nwafu@make@cover@bachelor{
  \cleardoublepage
  \newgeometry{top=1.0in, bottom=1.0in, left=1.25in, right=1.25in}

  \begin{flushright}
    \linespread{1.25}\zihao{4}\bfseries%\sffamily\heiti\fontsize{14bp}{16.8bp}\selectfont
    \nwafu@label@stuno ： \underline{\nwafu@value@studentid}\hspace*{1.3cm}
    \vspace{\stretch{2}}
  \end{flushright}

  \begin{center}
    \includegraphics[width=0.7\linewidth]{logo/nwafubilogo.png}
    \vspace{\stretch{1.5}}

    \linespread{1}\heiti\zihao{1}%\fontsize{35bp}{35bp}\selectfont%\zihaoxiaochu
    {\makebox[0.8\linewidth][s]{\nwafu@value@gradyear 届本科生\nwafu@worktypecn}}
    %{\nwafu@value@gradyear 届本科生\nwafu@worktypecn}
    \vspace{\stretch{1.5}}
  \end{center}

  \begin{center}
    \linespread{1.212}\heiti\zihao{2}%\fontsize{22bp}{26.4bp}\selectfont%\zihaoer%
    \begin{tabular}{C{4em}C{4.0in}}
    {\nwafu@label@title ：} &
    \ifnwafu@lang@en
      {\expandafter\uline\expandafter{\nwafu@valueEn@title} \par}
    \fi
    {\expandafter\uline\expandafter{\nwafu@value@title}}
    \end{tabular}
    \vspace{\stretch{5}}

    \linespread{1}\sffamily\songti\fontsize{15.75bp}{37.6bp}\selectfont%\bfseries
    \newlength{\lablen}
    \ifdefempty{\nwafu@value@coadvisers}{
      \setlength{\lablen}{\widthof{\nwafu@label@adviser}}
    }{
      \setlength{\lablen}{\widthof{\nwafu@label@coadviser}}
    }
    \begin{tabular} {cc}%
      \makebox[\the\lablen][s]{\nwafu@label@college} ： & \nwafu@value@college \\ \cline{2-2}%
      \makebox[\the\lablen][s]{\nwafu@label@major \nwafu@label@classid} ：& \nwafu@value@major \nwafu@value@classid 班 \\ \cline{2-2}
      \makebox[\the\lablen][s]{\nwafu@label@author} ：& \nwafu@value@author \\ \cline{2-2}
      \makebox[\the\lablen][s]{\nwafu@label@adviser} ：& \nwafu@value@advisers \\ \cline{2-2}
      \ifdefempty{\nwafu@value@coadvisers}{% 无协助指导教师，不输出
        \relax
      }{
        \makebox[\the\lablen][s]{\nwafu@label@coadviser} ：& \nwafu@value@coadvisers \\ \cline{2-2}
      }
      \makebox[\the\lablen][s]{\nwafu@label@applydate} ：& \ifdefempty{\nwafu@value@applydate}{\nwafu@dateCn}{\nwafu@value@applydate} \\ \cline{2-2}
    \end{tabular}
    %\begin{tabular} {cc}
    %  \nwafu@label@college ： & \nwafu@value@college \\ \cline{2-2}
    %  \nwafu@label@major\hfill  \nwafu@label@classid ： & \nwafu@value@major \nwafu@value@classid 班 \\ \cline{2-2}
    %  \nwafu@label@author ： & \nwafu@value@author \\ \cline{2-2}
    %  \nwafu@label@adviser ： & \nwafu@value@advisers \\ \cline{2-2}
    %  \nwafu@label@coadviser ： & \nwafu@value@coadvisers \\ \cline{2-2}
    %  \nwafu@label@applydate ： & \ifdefempty{\nwafu@value@applydate}{\nwafu@dateCn}{\nwafu@value@applydate} \\ \cline{2-2}
    %\end{tabular}
  \end{center}
  \restoregeometry
}
\newcommand\nwafu@make@declare@bachelor{
  \cleardoublepage
  \newgeometry{top=1.0in, bottom=1.0in, left=1.25in, right=1.25in}

  \begin{center}
    \linespread{1.5}\bfseries\sffamily\songti\zihao{3}%\fontsize{18bp}{31.2bp}\selectfont
    本科生\nwafu@worktypecn{}的独创性声明
  \end{center}

  \begingroup
    \linespread{1.5}\kaishu\zihao{-4}%\fontsize{14bp}{31.2bp}\selectfont
    \setlength\parindent{2\ccwd}\indent

    本人声明：所呈交的\nwafu@worktypecn{}是我个人在导师指导下独立进行的研究工作及取得的研究结果。
    尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究结果，
    也不包含其他人和自己本人已获得\nwafu@label@nwafu{}或其它教育机构的学位或证书而使用过的材料。
    与我一同工作的同事对本研究所做的任何贡献均已在论文的致谢中作了明确的说明并表示了谢意。
    如违反此声明，一切后果与法律责任均由本人承担。

    \vspace{15.6bp}

    \begin{flushleft}
      \setlength{\tabcolsep}{0bp}
      \begin{tabular}{rccr}
      本\hfill{}科\hfill{}生\hfill{}签\hfill{}名： & \hspace{7.5em} & 时间： &  \hspace{4em} 年 \hspace{1.5em} 月 \hspace{1.5em} 日 \\
      \end{tabular}
    \end{flushleft}
  \endgroup

  \vspace{26.2bp}

  \begin{center}
    \linespread{1.5}\bfseries\sffamily\songti\zihao{3}%\fontsize{18bp}{31.2bp}\selectfont
    关于本科生\nwafu@worktypecn{}知识产权的说明
  \end{center}

  \begingroup
    \linespread{1.5}\kaishu\zihao{-4}%\fontsize{14bp}{31.2bp}\selectfont
    \setlength\parindent{2\ccwd}\indent

    本\nwafu@worktypecn{}的知识产权归属\nwafu@label@nwafu{}。本人同意\nwafu@label@nwafu{}保存
    或向国家有关部门或机构送交论文的纸质版和电子版，允许论文被查阅和借阅。

    本人保证，在毕业离开\nwafu@label@nwafu{}后，发表或者使用本\nwafu@worktypecn{}及其相关的工作成果时，
    将以\nwafu@label@nwafu{}为第一署名单位，否则，愿意按《中华人民共和国著作权法》等有关规定接受处理并承担法律责任。

    任何收存和保管本论文各种版本的其他单位和个人(包括作者本人)未经本论文作者的导师同意，
    不得有对本论文进行复制、修改、发行、出租、改编等侵犯著作权的行为，
    否则，按违背《中华人民共和国著作权法》等有关规定处理并追究法律责任。

    \vspace{15.6bp}

    \begin{flushleft}
      \setlength{\tabcolsep}{0bp}
      \begin{tabular}{rccr}
        本\hfill{}科\hfill{}生\hfill{}签\hfill{}名： & \hspace{7.5em} & 时间： &  \hspace{4em} 年 \hspace{1.5em} 月 \hspace{1.5em} 日 \\[2ex]
        指\hfill{}导\hfill{}教\hfill{}师\hfill{}签\hfill{}名： & \hspace{7.5em} & 时间： &  \hspace{4em} 年 \hspace{1.5em} 月 \hspace{1.5em} 日
      \end{tabular}
    \end{flushleft}
  \endgroup

  \restoregeometry
}
\newcommand\nwafu@make@abstract@bachelor@cn{
  \ifnwafu@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  %\pagestyle{empty}

  \begin{center}
    \vspace*{-4.3pt}
    \sffamily\heiti\zihao{3}
    \nwafu@value@title
  \end{center}

  %\begin{center}
  %  \sffamily\heiti\zihao{-3}\vspace{1em}
  %  \nwafu@label@abstract
  %\end{center}

  \begingroup
    \setlength\parindent{2\ccwd}\songti\indent
    {\heiti\zihao{-4} \makebox[\widthof{\nwafu@label@keywords}][s]{\nwafu@label@abstract}：}
    {\songti\zihao{5}\nwafu@abstract}
  \endgroup

  \vspace{2ex}

  \begingroup
    \setlength\parindent{2\ccwd}\songti\indent
    \nwafu@put@kw{\heiti\zihao{-4}\nwafu@label@keywords{}：}{\songti\zihao{5}\nwafu@keywords}
  \endgroup

}
\newcommand\nwafu@make@abstract@bachelor@en{
  \ifnwafu@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \begin{center}
    \vspace*{-4.3pt}
    \sffamily\zihao{3}
    %\phantomsection
    %\addcontentsline{toc}{chapter}{\nwafu@labelEn@abstract}
    \textsc{\nwafu@valueEn@title}
  \end{center}

  %\begin{center}
  %  \sffamily\heiti\zihao{-3}\vspace{18pt}
  %  \nwafu@labelEn@abstract
  %  \vspace{10pt}
  %\end{center}

  \begingroup
    \setlength\parindent{2em}\rmfamily\indent
    {\bfseries \zihao{-4} \nwafu@labelEn@abstract: }
    {\zihao{5}\nwafu@abstractEn}
  \endgroup

  \vspace{2ex}

  \begingroup
    \setlength\parindent{2em}\rmfamily\indent
    \nwafu@put@kw{\nwafu@textbf{\zihao{-4}\nwafu@labelEn@keywords: } }{\rmfamily\zihao{5}\nwafu@keywordsEn}
  \endgroup
}
\newcommand\nwafu@make@cover@master@cn{
  \cleardoublepage
  %\pagestyle{style@empty}
  %\pagenumbering{Alph}
  \newgeometry{top=2.0in, bottom=1.0in, left=1.25in, right=1.25in}

  \vspace{\stretch{8}}

  % LOGO及论文类别名称
  \begin{center}
    \includegraphics[width=0.65\linewidth]{logo/nwafubilogo.png}
    \vspace{\stretch{0.8}}

    \linespread{1}\heiti\zihao{0}%\fontsize{35bp}{35bp}\selectfont%\zihaoxiaochu
    \makebox[0.8\textwidth][s]{\nwafu@worktypecn \nwafu@label@worktype@degree}
  \end{center}
  \vspace{\stretch{3.0}}

  % 题目及作者信息
  \begin{center}
    % 题目
    \linespread{1.0}\heiti\zihao{2}%\fontsize{22bp}{26.4bp}\selectfont%\zihaoer%
    {\nwafu@value@title}
    %\makebox[0.9\linewidth][c]{\nwafu@value@title}
    \vspace{\stretch{4.0}}

    \linespread{1.5}\sffamily\heiti\zihao{-3}%fontsize{15.75bp}{37.6bp}\selectfont%\bfseries
    % 作者信息
    \begin{tabular}{cc}%>{\bfseries}
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\ifnwafu@techmaster{\nwafu@label@professionaltype}\else{\nwafu@label@majorsubject}\fi}&
                                                                                                                                            \ifnwafu@techmaster{\nwafu@value@professionaltype}\else{\nwafu@value@majorsubject}\fi \\ \cline{2-2}%
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\ifnwafu@techmaster{\nwafu@label@professionalfield}\else{\nwafu@label@researchfield}\fi}& \ifnwafu@techmaster{\nwafu@value@professionalfield}\else{\nwafu@value@researchfield}\fi \\ \cline{2-2}%
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@researchername} & \nwafu@value@researchername \\ \cline{2-2}%
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@adviser} & \nwafu@value@advisers \\ \cline{2-2}%
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@coadviser} & \nwafu@value@coadvisers \\ \cline{2-2}%
      \makebox[\widthof{\nwafu@label@coadviser}][s]{\nwafu@label@applydate} & \ifdefempty{\nwafu@value@applydate}{\nwafu@dateCn}{\nwafu@value@applydate} \\ \cline{2-2}%
    \end{tabular}
  \end{center}
  \vspace{\stretch{4}}

  \restoregeometry
}
\newcommand\nwafu@make@cover@master@en{
  \cleardoublepage
  \newgeometry{top=2.0in, bottom=2.0in, left=1.25in, right=1.25in}

  \vspace{\stretch{8.0}}

  % 论文类别
  \begin{center}
    \linespread{1.212}\zihao{-3}%\fontsize{35bp}{35bp}\selectfont%\zihaoxiaochu
    Thesis Submitted to Northwest A \& F University\\
    in Partial Fulfillment of the Requirements\\
    for Degree of\\
    \nwafu@worktypeen \ of \uline{\nwafu@valueEn@degreefull}
  \end{center}
  \vspace{\stretch{3.0}}

  % 题目及作者信息
  \begin{center}
    {\linespread{1.212}\bfseries\zihao{1}%\fontsize{22bp}{26.4bp}\selectfont%\zihaoer%
    \nwafu@valueEn@title}%
    %\makebox[0.9\linewidth][c]{\nwafu@valueEn@title}}
    \vspace{\stretch{4.0}}

    \linespread{1.5}\rmfamily\zihao{-3}%fontsize{15.75bp}{37.6bp}\selectfont%\bfseries
    \begin{tabular}{l}
      \ifnwafu@techmaster{\nwafu@labelEn@techmasterfield}\else{\nwafu@labelEn@majorsubject}\fi : \uline{\nwafu@valueEn@majorsubject}\\
      \ifnwafu@techmaster{\nwafu@labelEn@techmastertype}\else{\nwafu@labelEn@researchfield}\fi: \uline{\nwafu@valueEn@researchfield}\\
      \nwafu@labelEn@researchername: \uline{\nwafu@valueEn@researchername}\\
      \nwafu@labelEn@adviser: \uline{\nwafu@valueEn@advisers}\\
      \nwafu@labelEn@coadviser: \uline{\nwafu@valueEn@coadvisers}\\
      \nwafu@labelEn@applydate: \uline{\ifdefempty{\nwafu@valueEn@applydate}{\nwafu@dateEn}{\nwafu@valueEn@applydate}}
    \end{tabular}
  \end{center}
  \vspace{\stretch{4}}

  \begin{center}
    \linespread{1}

    \rmfamily\zihao{-3}%fontsize{18bp}{31.2bp}\selectfont
    \nwafu@valueEn@institute\\ \nwafu@labelEn@nwafu%
  \end{center}
  \restoregeometry
}
\newcommand\nwafu@make@titlepage@master@cn{
  \cleardoublepage
  %\pagestyle{style@empty}
  %\pagenumbering{Alph}
  \newgeometry{top=1.0in, bottom=1.0in, left=1.25in, right=1.25in}

  % 分类号等
  \begin{multicols}{2}
    \linespread{1.3}\songti\zihao{5}%\fontsize{10.5bp}{15.6bp}\selectfont
    \begin{flushleft}
      \begin{tabular} {cc}%
        \makebox[\widthof{\nwafu@label@clscode}][s]{分类号}：& \nwafu@value@clscode \\ \cline{2-2}%
        \makebox[\widthof{\nwafu@label@clscode}][l]{UDC}：& \nwafu@value@udccode \\ \cline{2-2}%
        \makebox[\widthof{\nwafu@label@clscode}][s]{密级}：& \ifdefempty{\nwafu@value@cfdlevel}{公开}{\nwafu@value@cfdlevel} \\ \cline{2-2}%
      \end{tabular}
    \end{flushleft}
    \columnbreak
    \begin{flushright}
      \begin{tabular} {cc}%
        \makebox[\widthof{研究生\nwafu@label@studentid}][s]{\nwafu@label@unvcode}：& \ifdefempty{\nwafu@value@unvcode}{10712}{\nwafu@value@unvcode}  \\ \cline{2-2}%
        \\ %
        \makebox[\widthof{研究生\nwafu@label@studentid}][s]{研究生\nwafu@label@studentid}：& \nwafu@value@studentid \\ \cline{2-2}%
      \end{tabular}
      % \makebox[\widthof{\nwafu@label@unvcode}][s]{\nwafu@label@unvcode}：\nwafu@value@unvcode \par
      % \makebox[\widthof{\nwafu@label@unvcode}][s]{\nwafu@label@studentid}：\nwafu@value@studentid
    \end{flushright}
  \end{multicols}
  \vspace{\stretch{3.0}}

  % 论文类别名称
  \begin{center}

    \linespread{1}\bfseries\sffamily\songti\zihao{-2}%\fontsize{35bp}{35bp}\selectfont%\zihaoxiaochu
    \nwafu@label@nwafu \nwafu@worktypecn \nwafu@label@worktype@degree
    %\makebox[0.8\textwidth][s]{\nwafu@worktypecn \nwafu@label@worktype@degree}
  \end{center}
  \vspace{\stretch{1.0}}

  % 题目及作者
  \begin{center}
    % 题目
    \linespread{1.212}\heiti\zihao{2}%\fontsize{22bp}{26.4bp}\selectfont%\zihaoer%
    {\nwafu@value@title}
    %\makebox[0.9\linewidth][c]{\nwafu@value@title}
    \vspace{\stretch{4.5}}

    \linespread{1.5}\sffamily\songti\zihao{3}%fontsize{15.75bp}{37.6bp}\selectfont%\bfseries
    % 作者信息
    \begin{tabular}{>{\bfseries}cc}%>{\bfseries}
      \nwafu@label@researchername ： & \makebox[8cm][s]{} \\ \cline{2-2}%
      \nwafu@label@adviser ： & \makebox[8cm][s]{} \\ \cline{2-2}%
      % 博士需要指导小组
      \ifnwafu@doctor
        \nwafu@label@adviserteam ： & \makebox[8cm][s]{} \\
      \cline{2-2}%
      \else
        \relax
      \fi
    \end{tabular}
  \end{center}
  \vspace{\stretch{3}}

  % 答辩委员会
  % 定义用于记录最长字符串的变量及初始化
  \begingroup
  \newlength{\textlen}
  \newlength{\namelen}
  \setlength{\namelen}{\widthof{a}}
  \newlength{\instlen}
  \setlength{\instlen}{\widthof{a}}
  \newlength{\titlelen}
  \setlength{\titlelen}{\widthof{a}}

  \linespread{1.5}\sffamily\songti\zihao{3}
  {\noindent\bfseries 答辩委员会：}
  % 读取答辩委员会成员数据，计算最长字数
  % \nwafu@define{value@cmteemembfile}  \nwafu@define{value@ackdatafile}
  \DTLloaddb{memblist}{\nwafu@value@cmteemembfile}%data/committeememb.csv}
  \DTLforeach{memblist}{
    % .csv 档里对应每一列的宏
    \Name=name,%
    \Inst=inst,%
    \Title=title%
  }{
    \settowidth{\textlen}{\Name}
    \ifdim \textlen > \namelen
      \setlength{\namelen}{\textlen}
    \else
      \relax
    \fi
    \settowidth{\textlen}{\Inst}
    \ifdim \textlen > \instlen
      \setlength{\instlen}{\textlen}
    \else
      \relax
    \fi
    \settowidth{\textlen}{\Title}
    \ifdim \textlen > \titlelen
      \setlength{\titlelen}{\textlen}
    \else
      \relax
    \fi
  }
  % 为姓名长度加上1个汉字的长度
  \addtolength{\namelen}{\widthof{我}}
  % %\hspace{2\ccwd}
  \begin{center}
    \linespread{1.3}\sffamily\songti\zihao{3}%\fontsize{22bp}{26.4bp}\selectfont%\zihaoer%
    % 读取答辩委员会成员数据，根据最长字数宽度输出各个数据
    \DTLforeach{memblist}{
    % .csv 档里对应每一列的宏
    \Name=name,%
    \Inst=inst,%
    \Title=title%
    }{
      \makebox[\the\instlen][s]{\Inst}\uline{\makebox[\the\namelen][c]{\Name}}\makebox[\the\titlelen][s]{\Title}\\
    }
  \end{center}

  % 答辩日期
  \vspace{\stretch{3}}
  \linespread{2.0}\sffamily\songti\zihao{3}
  {\noindent\bfseries 答辩日期：}\nwafu@value@defensedate
  \endgroup

  \restoregeometry
}
\newcommand\nwafu@make@projlist@master{
  \cleardoublepage
  %\pagestyle{style@empty}
  %\pagenumbering{Alph}
  \newgeometry{top=3.0in, bottom=1.0in, left=1.25in, right=1.25in}

  \begingroup
  \linespread{1.5}\heiti\zihao{3}%
  % 读取资助项目员数据，输出内容
  \DTLloaddb{ackdatalist}{\nwafu@value@ackdatafile}
  \DTLforeach{ackdatalist}{
    % .csv 档里对应每一列的宏
    \ProjName=name,%
    \ProjID=id%
  }{
    本研究得到\ProjName (编号:\ProjID )资助。\par
  }
  \endgroup

  \restoregeometry
}

\newcommand\nwafu@make@declare@master{
  \cleardoublepage
  % \newgeometry{top=1.0in, bottom=1.0in, left=1.25in, right=1.25in}
  %\phantom{西北农林科技大学}
  \begin{center}
    \linespread{1.2}\bfseries\sffamily\heiti\zihao{3}%\fontsize{18bp}{31.2bp}\selectfont
    研究生学位论文的独创性声明
  \end{center}
  \begingroup
    \linespread{1.5}\songti\zihao{-4}%\fontsize{14bp}{31.2bp}\selectfont
    \setlength\parindent{2\ccwd}\indent

    本人声明:所呈交的学位论文是我个人在导师指导下独立进行的研究工作及取
    得的研究结果;论文中的研究数据及结果的获得完全符合学校《关于规范西北
    农林科技大学研究生学术道德的暂行规定》,如果违反此规定,一切后果与法
    律责任均由本人承担。

    尽我所知,除了文中特别加以标注和致谢的地方外,论文中不包含其他人已经
    发表或撰写过的研究结果,也不包含其他人和自己本人已获得西北农林科技大
    学或其它教育机构的学位或证书而使用过的材料。与我一同工作的同事对本
    研究所做的任何贡献均已在论文的致谢中作了明确的说明并表示了谢意。

    \vspace{25.6bp}

    %\makebox[\widthof{研究生签名}][s]{研究生签名}研\hfill{}究\hfill{}生\hfill{}签\hfill{}名
    %\begin{flushleft}
      \setlength{\tabcolsep}{0bp}
      \begin{tabular}{rccr}
      \makebox[\widthof{研究生签名}][s]{研究生签名}： & \hspace{8.5em} & 时间： &  \hspace{4em} 年 \hspace{2em} 月 \hspace{2em} 日
      \end{tabular}
    %\end{flushleft}
  \endgroup

  \vspace{36.2bp}

  \begin{center}
    \linespread{1.2}\bfseries\sffamily\heiti\zihao{3}%\fontsize{18bp}{31.2bp}\selectfont
    导师指导研究生学位论文的承诺
  \end{center}

  \begingroup
    \linespread{1.5}\songti\zihao{-4}%\fontsize{14bp}{31.2bp}\selectfont
    \setlength\parindent{2\ccwd}\indent
    % \phantom{西北农林科技}
    本人承诺：我的研究
    生\uline{\hspace{\ccwd}\nwafu@value@researchername\hspace{\ccwd}}所
    呈交的学位论文是在我指导下独立开展研究工作及取得的研究结果,属于我现
    岗职务工作的结果,并严格按照学校《关于规范西北农林科技大学研究生学术
    道德的暂行规定》而获得的研究结果。如果违反学校《关于规范西北农林科
    技大学研究生学术道德的暂行规定》,我愿接受按学校有关规定的处罚处理并
    承担相应导师连带责任。

    \vspace{25.6bp}

    %\begin{flushleft}导\hfill{}师\hfill{}签\hfill{}名
      \setlength{\tabcolsep}{0bp}
      \begin{tabular}{rccr}
       \makebox[\widthof{研究生签名}][s]{导师签名} ： & \hspace{8.5em} & 时间： &  \hspace{4em} 年 \hspace{2em} 月 \hspace{2em} 日
      \end{tabular}
    %\end{flushleft}
  \endgroup

  \cleardoublepage

  \begin{center}
    \linespread{1.2}\bfseries\sffamily\heiti\zihao{3}%\fontsize{18bp}{31.2bp}\selectfont
    关于研究生学位论文使用授权的说明
  \end{center}

  \begingroup
    \linespread{1.5}\songti\zihao{-4}%\fontsize{14bp}{31.2bp}\selectfont
    \setlength\parindent{2\ccwd}\indent

    本学位论文的知识产权归属西北农林科技大学。本人同意西北农林科技大学
    保存或向国家有关部门或机构送交论文的纸质版和电子版,允许论文被查阅和
    借阅;同意西北农林科技大学将本学位论文的全部或部分内容授权汇编录入
    《中国博士/硕士学位论文全文数据库》和《中国学位论文全文数据库》进行
    出版,并享受相关权益。

    本人保证,在毕业离开(或者工作调离)西北农林科技大学后,发表或者使用本
    学位论文及其相关的工作成果时,将以西北农林科技大学为第一署名单位,否
    则,愿意按《中华人民共和国著作权法》等有关规定接受处理并承担法律责
    任。

    任何收存和保管本论文各种版本的其他单位和个人(包括研究生本人)未经本
    论文作者的导师同意,不得有对本论文进行复制、修改、发行、出租、改编等
    侵犯著作权的行为,否则,按违背《中华人民共和国著作权法》等有关规定处
    理并追究法律责任。

    {\heiti (保密的学位论文在保密期限内,不得以任何方式发表、借阅、复印、
      缩印或扫描复制手段保存、汇编论文)}

    \vspace{25.6bp}

    %\begin{flushleft}导\hfill{}师\hfill{}签\hfill{}名研\hfill{}究\hfill{}生\hfill{}签\hfill{}名
      \setlength{\tabcolsep}{0bp}
      \begin{tabular}{rccr}
        \makebox[\widthof{研究生签名}][s]{研究生签名}： & \hspace{8.5em} & 时间： &  \hspace{4em} 年 \hspace{2em} 月 \hspace{2em} 日 \\[2ex]
        \makebox[\widthof{研究生签名}][s]{导师签名}： & \hspace{8.5em} & 时间： &  \hspace{4em} 年 \hspace{2em} 月 \hspace{2em} 日
      \end{tabular}
    %\end{flushleft}
  \endgroup

  %\restoregeometry
}
\newcommand\nwafu@make@abstract@master@cn{
  \ifnwafu@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \nwafu@chapter*[\nwafu@label@abstract]{\nwafu@label@abstract}
  %\chapter[\nwafu@label@abstractshort]{\nwafu@label@abstract}%{\nwafu@value@title} \vskip 1\baselineskip minus 0.5\baselineskip
  %\addcontentsline{toc}{chapter}{\nwafu@label@abstract}
  %\thispagestyle{style@empty}

  \begingroup
    \setlength\parindent{2\ccwd}
    \rmfamily\songti\zihao{-4}\indent

    \nwafu@abstract
  \endgroup
  \vskip 1\baselineskip minus 0.5\baselineskip

  \begingroup
    \nwafu@put@kw{\heiti\zihao{5}\nwafu@label@keywords{}：}{\zihao{5}\songti\nwafu@keywords}
  \endgroup
}
\newcommand\nwafu@make@abstract@master@en{
  \ifnwafu@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \begingroup
    %\titleformat{\chapter}{\centering\rmfamily\zihao{3}\bf}{}{0pt}{}{}
    % \chapter*{\textrm{\nwafu@textbf{\nwafu@labelEn@ABSTRACT}}}{\MakeUppercase
    % \rmfamily \nwafu@valueEn@title} \vskip 1\baselineskip minus
    % 0.5\baselineskip
    \nwafu@chapter*[\nwafu@labelEn@ABSTRACT]{\rmfamily  \nwafu@labelEn@ABSTRACT}
    %\chapter[\nwafu@labelEn@abstract]{\rmfamily  \nwafu@labelEn@ABSTRACT}
    %\addcontentsline{toc}{chapter}{\nwafu@labelEn@abstract}
  \endgroup

  %\thispagestyle{style@empty}

  \begingroup
    \setlength\parindent{2em}
    \rmfamily\zihao{-4}\indent
    \nwafu@abstractEn
  \endgroup
  \vskip 1\baselineskip minus 0.5\baselineskip

  \begingroup
    \nwafu@put@kw{\zihao{5}\nwafu@textbf{\MakeUppercase{\nwafu@labelEn@KeyWords}}: }{\rmfamily\zihao{5}\nwafu@keywordsEn}
  \endgroup
}
\newcommand\nwafu@atendpackage{\csname ctex_at_end_package:nn\endcsname}
\nwafu@atendpackage{nomencl}{
  \let\nomname\nwafu@denotation@name
  \def\thenomenclature{\begin{denotation}[\nom@tempdim]}
  \def\endthenomenclature{\end{denotation}}
}
\NewDocumentCommand{\shuji}{O{\nwafu@ctitle} O{\nwafu@cauthor}}{%
  \newpage\thispagestyle{empty}%
  \fangsong\addCJKfontfeatures*{RawFeature={vertical:}}
  \xiaosan\ziju{0.4}%
  \noindent\hfill\rotatebox[origin=lt]{-90}{\makebox[\textheight]{#1\hfill#2}}}

\newcommand{\nwafuthesis}{%
  \makebox{\rmfamily%
    N\hspace{-0.2ex}\raisebox{-0.5ex}{W}\raisebox{0.5ex}{\hspace{-0.2ex}\textsc{afu}}\hspace{0.3ex}%
    \textsc{Thesis}}}
\newcommand{\oldnwafuthesis}{%
  N\raisebox{0.5ex}{U}\hspace{-0.3ex}AA%
  \textsc{Thesis}
}
\newcommand{\seuthesix}{%
  \makebox{S\hspace{-0.3ex}\raisebox{-0.5ex}{E}\hspace{-0.3ex}U\hspace{0.1em}%
  \textsc{Thesix}}
}
\newcommand\nuaathesis{\textsc{Nuaa}\-\textsc{Thesis}}

%% 
%% Copyright (C) 2019 by nangeng
%% 
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%% 
%%     http://www.apache.org/licenses/LICENSE-2.0
%% 
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%% 
%% This work consists of the file  nwafuthesis.dtx
%% and the derived files           nwafuthesis.ins,
%%                                 nwafuthesis.cls,
%%                                 nwafuthesis.cfg and
%%                                 nwafuthesis.pdf
%% 
%%
%% End of file `nwafuthesis.cls'.
