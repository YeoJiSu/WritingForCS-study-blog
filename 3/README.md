# 3. LaTeX을 활용한 간단한 문서(article) 작성

## 🌹 실습 환경
[Overleaf](https://www.overleaf.com/)

<br>

## 🌹 내용
1. 과제 1 "좋은 글이란?"에 대해 작성한 내용을 이번에는 LaTeX로 작성한다.
2. 작성시 기존의 과제1에서 미흡했던 부분을 보완해서 문서를 작성한다. 

<br>

## 🌹 LaTeX 
> LaTeX는 문서를 프로그램 작성하듯이 쓸 수 있는 문서 조판 언어이다.

<br>

### 🏛 입력 파일의 구조
1.  ```LaTeX
    \documentclass{...}
    ``` 
    * 입력 파일 맨 처음에 적는 레이틱 명령이다.
    * 작성하는 문서가 어떤 종류의 것인지를 지정한다.

2.  ```LaTeX
    \usepackage{...}
    ```
    * 전체 문서의 형식에 영향을 주는 명령이나 레이텍에 새로운 기능을 추가하는 패키지 로드하는 명령이다.

3.  ```LaTeX
    \begin{...}
    ```
    * 본문을 시작한다는 뜻의 명령이다.   
    * 이 다음 문서의 내용을 텍스트와 레이텍 명령을 함께 섞어서 작성한다.
    
4.  ```LaTeX
    \end{...}
    ```
    * 문서의 끝에 적는 명령으로 레이텍에게 작업의 끝임을 알려주는 역할은 한다.
    * 이 명령 이후에 오는 내용은 어떤 것이든 무시된다.
### 🏛 각주
*   ```LaTeX
    \footnote{...}
    ```
    * 각주를 다는 명령이다.
    * 현재 페이지의 하단부에 각주가 표시된다.

### 🏛 리스트 문단
*   ```LaTeX
    \begin{itemize}
        \item ...
        \item ...
    \end{itemize}
    ```
    * itemize는 단순 리스트다.
    * 각 항목으니 \item으로 지시해야 하며 하나 이상의 \item이 반드시 있어야 한다. 
*   ```LaTeX
    \begin{enumerate}
        \item ...
        \item[-] ...
    \end{enumerate}
    ```
    * enumerate는 번호가 붙은 리스트다.    
*   ```LaTeX
    \begin{description}
        \item[강조하는 단어] ...
        \item[강조하는 단어] ...
    \end{description}
    ```
    * description은 설명형 리스트다. 
### 🏛 인용문
*   ```LaTeX
    \begin{quote}

    \end{quote}
    ```
    * quote는 인용문, 중요 구절, 예시 문장을 위해 사용할 수 있는 환경이다.




<br>

------
참고 문헌 : [LaTeX2 입문](https://github.com/KoreanTUG/lshort-ko/blob/master/lshort-ko.pdf)
