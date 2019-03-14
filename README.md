# nwafuthesis

#### 介绍
西北农林科技大学学位论文LaTeX文档类(模板)，支持本科、硕士(学硕、专硕)、博士学位论文。

该模板基于南京航空航天大学毕业论文LaTeX模板，通过修改相关内容实现，参见 "http://www.latexstudio.net/archives/51558.html" ，另外，该模板开发过程中的参考文献样式得到了"biblatex-gb7714-2015样式包"作者胡振震的悉心指导。在此，对他们表示衷心的感谢。

1. 排版样例
![](./screenshot/output00.png)
![](./screenshot/output01.png)
![](./screenshot/output02.png)
![](./screenshot/output03.png)


2. 更多样例请查看"./demo"。

#### 使用说明

1. 目前支持本科生毕业论文（设计），硕士(学硕、专硕)、博士学位论文。
2. 请按注释说明使用参数选择不同类型的模板工作：
   ```
   \documentclass[
     lang=cn,           % 目前只支持中文
     % degree=doctor,   % 博士论文
     % degree=master,   % 硕士论文(学硕不能使用techmaster参数)
     % techmaster,      % 专业学位硕士论文(必须与degree=master参数共同作用)
     degree=bachelor,   % 本科论文(设计)
     type=paper,        % 支持paper(论文)或design(设计)(该参数仅对本科生作用)
     % openany,oneside  % 单面打印
     openright,blankleft,twoside % 双面打印
     ]{nwafuthesis}
   ```
   引入`nwafuthesis`文档类。
3. 为确保参考文献样式正确，请务必使用胡振震开发的"biblatex-gb7714-2015样式包"最新版的`gb7714-2015ay.bbx`和`gb7714-2015ay.cbx`样式文件，有关`gb7714-2015ay`样式文件的详情，请参考 "https://github.com/hushidong/biblatex-gb7714-2015" 。

4. 建议使用`TexLive2018`以上的`XeLaTeX`编译`*.tex`文件。

#### 安装教程

1. 需要安装TexLive2018的跨平台LaTeX发行版。
2. 可以使用除Windows记事本外的任何文本编辑器编辑LaTeX代码。

#### 参与贡献

1. 本项目由西北农林科技大学信息工程学院耿楠创建和维护
2. 如果您愿意一同参与工作(不计报酬，免费自由)，请及时与作者联系
