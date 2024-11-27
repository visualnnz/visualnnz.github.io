---
layout: single
title: System Call Collection
categories: Linux
tags: [Linux, C]
author: visualnnz
header:
  teaser: /images/2024-11-27-system-call-collection/System_Calls_In_Linux.png
---

# Linux 기본 명령어

## 로그인/로그아웃

| 명령어 |          기능           | 주요 옵션 |         예제         |
| :----: | :---------------------: | :-------: | :------------------: |
| telnet |  리눅스 시스템에 접속   |           | **telnet** ***.co.kr |
|  ssh   |  리눅스 시스템에 접속   |           |  **ssh** ***.co.kr   |
|  exit  | 리눅스 시스템 접속 해제 |           |       **exit**       |
| logout | 리눅스 시스템 접속 해제 |           |      **logout**      |

<br>

## 파일/디렉터리

| 명령어 |              기능               |        주요 옵션        |         예제         |
| :----: | :-----------------------------: | :---------------------: | :------------------: |
|  pwd   |     현재 디렉터리 경로 출력     |                         |       **pwd**        |
|   ls   |       디렉터리 내용 출력        |   -a: 숨김 파일 출력    |    **ls** -a /tmp    |
|   ls   |       디렉터리 내용 출력        | -l: 파일 상세 정보 출력 |      **ls** -l       |
|   cd   |          디렉터리 이동          |                         |     **cd** /tmp      |
|   cd   |          디렉터리 이동          |                         |    **cd** ~han01     |
|   cp   |            파일 복사            |                         |  **cp** a.txt b.txt  |
|   cp   |          디렉터리 복사          |    -r: 디렉터리 복사    | **cp** -r dir1 dir2  |
|   mv   |    파일 명/디렉터리 명 변경     |                         |  **mv** a.txt b.txt  |
|   mv   |    파일 명/디렉터리 명 변경     |                         |   **mv** dir1 dir2   |
|   mv   |       파일/디렉터리 이동        |                         |  **mv** a.txt dir1   |
|   rm   |            파일 삭제            |                         |     **rm** a.txt     |
|   rm   |          디렉터리 삭제          |    -r: 디렉터리 삭제    |    **rm** -r dir1    |
| mkdir  |          디렉터리 생성          |                         |    **mkdir** dir1    |
| rmdir  |        빈 디렉터리 삭제         |                         |    **rmdir** dir1    |
|  cat   |         파일 내용 출력          |                         |    **cat** a.txt     |
|  more  | 화면 크기 단위로 파일 내용 출력 |                         |    **more** a.txt    |
| chmod  |  파일/디렉터리 접근 권한 변경   |                         | **chmod** 755 a.exe  |
| chmod  |  파일/디렉터리 접근 권한 변경   |                         | **chmod** go+x a.exe |
|  grep  |            패턴 검색            |                         | **grep** abcd a.txt  |

<br>

## 프로세스

| 명령어 |                기능                 |              주요 옵션              |          예제          |
| :----: | :---------------------------------: | :---------------------------------: | :--------------------: |
|   ps   | 현재 실행 중인 프로세스의 정보 출력 |                                     |         **ps**         |
|   ps   | 현재 실행 중인 프로세스의 정보 출력 | -ef: 모든 프로세스의 상세 정보 출력 |       **ps** -ef       |
|   ps   | 현재 실행 중인 프로세스의 정보 출력 | -ef: 모든 프로세스의 상세 정보 출력 | **ps** -ef \| grep ftp |
|  kill  |         프로세스 강제 종료          |                                     |     **kill** 5000      |
|  kill  |         프로세스 강제 종료          |            -9: 강제 종료            |    **kill** -9 5001    |

<br>

## 기타

| 명령어  |        기능        |                주요 옵션                 |        예제         |
| :-----: | :----------------: | :--------------------------------------: | :-----------------: |
|   su    |  사용자 계정 변경  |                                          |       **su**        |
|   su    |  사용자 계정 변경  | -: 변경할 사용자의 환경 초기화 파일 실행 |      **su** -       |
|   su    |  사용자 계정 변경  | -: 변경할 사용자의 환경 초기화 파일 실행 |   **su** - han02    |
|   tar   | 파일/디렉터리 묶기 |            cvf: tar 파일 생성            | **tar** cvf a.tar * |
|   tar   | 파일/디렉터리 묶기 |         tvf: tar 파일 내용 보기          |  **tar** tvf a.tar  |
|   tar   | 파일/디렉터리 묶기 |            xvf: tar 파일 풀기            |  **tar** xvf a.tar  |
| whereis |   파일 위치 검색   |                                          |   **whereis** ls    |
|  which  |   파일 위치 검색   |                                          |  **which** telnet   |

<br>

<br>

# vi 편집기 내부 명령어

|              명령어              |        기능        |
| :------------------------------: | :----------------: |
|            i, a, o, O            |  입력 모드로 전환  |
| j, k, h, l 또는 `←`  `↑` `→` `↓` |     커서 이동      |
|                r                 |    한 글자 수정    |
|                cw                |     단어 수정      |
|          :%s/aaa/bbb/g           |    검색해 수정     |
|                p                 |       붙이기       |
|         x, #x(3x, 5x 등)         |     글자 삭제      |
|           :wq! 또는 ZZ           |   저장하고 종료    |
|         J(`Shift` + `J`)         |     행 붙이기      |
|          행 번호 보이기          |      :set nu       |
|              `ESC`               |  명령 모드로 전환  |
|  :행 번호 또는 #G(50G, 143G 등)  |      행 이동       |
|          #s(5s, 7s 등)           |   여러 글자 수정   |
|               u, U               |     명령 취소      |
|        #yy(5yy, 10yy 등)         |        복사        |
|         D(`Shift` + `D`)         |   커서 이후 삭제   |
|       dd, #dd(3dd, 4dd 등)       | 행 삭제(잘라내기)  |
|               :q!                | 저장하지 않고 종료 |
|      `Ctrl` + `l`(소문자 L)      |   화면 다시 표시   |
|            :set nonu             |   행 번호 없애기   |

<br>

<br>

# 기본 라이브러리 함수

## 오류 메시지 출력

### perror()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
void perror(const char *s);
```

<br>

**Argument**

- `s`: 출력할 문자열

<br>

**Return**

- N/A

<br>

**Operation**

- `errno`에 저장된 값을 읽어 이에 해당하는 메시지를 표준 오류(`stderr`, fd 2번)로 출력한다.
- 인자로 입력한 문자열 `s`는 `stderr`에 전달되어 에러 메시지로 출력된다.

<br>

**Feature**

- perror() 함수의 인자 `s` 값으로는 일반적으로 프로그램 이름을 지정하는 것이 좋다.
- `s`값이 NULL이면 에러 메시지만 출력된다.

<br>

---

### strerror()

**헤더 파일**

```c
#include <string.h>
```

<br>

**함수 원형**

```c
char *strerror(int errnum);
```

<br>

**Argument**

- `errnum`: errno에 저장된 값(에러 번호)

<br>

**Return**

- `errnum`에 해당하는 에러 메시지를 가리키는 문자열 포인터

<br>

**Operation**

- 함수의 인자로 `errno`에 저장된 값을 받아 오류 메시지를 반환한다.

<br>

**Feature**

- 반환된 오류 메시지를 사용자가 적절하게 가공할 수 있다는 것이 장점

<br>

## 메모리 할당&해제

### malloc()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
void *malloc(size_t size);
```

<br>

**Argument**

- `size`: 할당받을 메모리 크기
  - 메모리 크기는 바이트(byte) 단위

<br>

**Return**

- **성공**: 할당된 메모리의 시작 주소
- **실패**: NULL

<br>

**Operation**

- 인자로 지정한 크기의 메모리를 할당한다.

<br>

**Feature**

- 할당된 메모리에는 어떤 타입의 데이터든 저장할 수 있다.
- `malloc()` 함수는 할당된 메모리를 초기화하지 않는 것에 주의(쓰레기 값이 담김)

<br>

---

### calloc()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
void *calloc(size_t nmemb, size_t size);
```

<br>

**Argument**

- `nmemb`: 배열 요소의 개수
- `size`: 배열 요소 하나의 크기

<br>

**Return**

- **성공**: 할당된 메모리의 시작 주소
- **실패**: NULL

<br>

**Operation**

- `nmemb` × `size` 바이트 크기의 배열을 저장할 메모리를 할당한다.
- 할당된 메모리를 0으로 초기화한다.

<br>

**Feature**

- 

<br>

---

### realloc()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
void *realloc(void *ptr, size_t size);
```

<br>

**Argument**

- `ptr`: 이전에 할당된 메모리를 가리키는 포인터
  - 이 포인터는 `malloc()`, `calloc()`, 또는 이전의 `realloc()`에 의해 할당된 메모리여야 한다.
  - 인자 값이 NULL일 경우, `realloc()`은 `malloc()`과 동일하게 동작하여 새로운 메모리를 할당한다.

- `size`: 다시 할당받을 전체 메모리 크기(바이트 단위)
  - 새로운 메모리 크기가 이전보다 크거나 작을 수 있다.
  - 인자 값이 0일 경우, 메모리가 해제되고 NULL이 반환된다.


<br>

**Return**

- **성공**: 새로 할당된 메모리의 시작 주소
- **실패**: NULL

<br>

**Operation**

- 요청된 크기(`size`)만큼 메모리를 재할당한다.
- 새로운 크기가 이전에 할당된 메모리 크기보다 크면 새로 추가된 메모리 영역은 초기화되지 않는다.(쓰레기값이 들어감)
- 새로운 크기가 이전에 할당된 메모리 크기보다 작으면 초과 메모리는 해제된다.
- 재할당 시 기존 메모리 위치를 사용할 수 없는 경우, 새로운 메모리 블록을 할당하고 기존 데이터를 새로운 메모리 블록으로 복사한다.

<br>

---

### free()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
void free(void *ptr)
```

<br>

**Argument**

- `ptr`: 해제할 메모리 주소

<br>

**Return**

- N/A

<br>

**Operation**

- 사용을 마친 메모리를 해제하고 운영체제에 반납한다.

<br>

**Feature**

- `free()` 함수가 성공하면 `ptr`이 가리키던 메모리는 더 이상 의미가 없음
- 메모리 해제 후 해당 포인터 `ptr`을 다시 사용하려면 반드시 초기화해야 함(e.g. `ptr = NULL`)

<br>

## getopt()

### getopt() 본체

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int getopt(int argc, const char *argv[], const char *optstring);
```

<br>

**Argument**

- `argc`: `main()` 함수의 인자 argc
- `argv`: `main()` 함수의 인자 argv
- `optstring`: 각 옵션들에 대해서 추가 옵션(길이 설정, 파일 이름 등)이 있는지 없는지, 해당 옵션이 실제로 필요한 옵션인지 아닌지 등을 판별하기 위한 일종의 딕셔너리(dictionary) 역할
  - 자신이 옵션으로 사용할 문자들(b, d, m, h 등)을 공백 없이 하나의 문자열에 입력한다.
  - 이때 `-b 4096`과 같이 옵션 뒤에 추가 옵션이 필요한 경우에는 `b:`와 같이 `:`(colon)을 옵션의 뒤에 붙인다.

<br>

**Return**

- 옵션 문자(a, b, s, t, ...)
  - `getopt()` 함수가 읽은 문자가 인식된 옵션 문자인 경우(`optstring`에 정의되어 있는 경우), 해당 옵션 문자를 반환한다. 이때, `-`는 옵션 문자로 인식되지 않는다.
  - `optstring`에서 `:`으로 지정된 옵션에 값이 주어졌을 경우에도 해당 옵션 문자를 반환한다. (e.g. `-s strawberry`)
- `:`(colon)
  - `optstring`에 `:`이 두 개(`::`) 붙어 있는 옵션 문자가 있고 해당 옵션에 인수가 전달되지 않았을 경우 `:`을 반환한다.
  - 이 기능은 특정 조건에서 선택적 인수를 허용할 때 유용하다.
- `?`
  - `getopt()` 함수가 인식되지 않는 옵션 문자(`optstring`에 정의되지 않은 문자)를 읽거나 필수 값이 있는 옵션에 값이 주어지지 않은 경우 `?`를 반환한다.
- -1
  - 더 이상 처리할 옵션이 없는 경우, 즉 모든 옵션이 처리되고 더 이상 읽을 옵션이 없을 때 -1을 반환한다.

<br>

**Operation**

- 파라미터를 분석(parsing)할 때 -d -i -m -b 등과 같이 `-`으로 시작하면서 옵션의 길이가 d i m b와 같이 1글자인 옵션들을 해석한다.

<br>

---

### getopt() 함수와 같이 쓰이는 전역 변수

**헤더 파일**

```c
#include <unistd.h>
```

<br>

#### optind

- 

<br>

#### opterr

- Default 값으로 1로 설정되어 있다.
- 0이 아닌 값으로 설정할 경우 `getopt()` 함수가 오류를 발견하면 `stderr`에 오류 메시지를 출력한다.
- 0으로 설정할 경우 오류 메시지를 출력하지 않는다.

<br>

#### optopt

- `getopt()` 함수가 인식하지 못한 알 수 없는 옵션의 문자를 기록하기 위한 변수
- `getopt()` 함수가 `?`를 반환했을 때, 즉 알 수 없는 옵션을 발견했을 때 사용된다.
- 일반적으로 이 값을 이용하여 알 수 없는 옵션이 무엇인지에 대한 오류 메시지를 출력하거나 처리한다.

<br>

#### optarg

- 옵션의 인수(option argument)를 가리키는 포인터이다. (e.g. ./getopt -b `optarg`)

<br>

<br>

# 파일&디렉터리 관리

## 디렉터리

### mkdir()

**헤더 파일**

```c
#include <sys/stat.h>
#include <sys/types.h>
```

<br>

**함수 원형**

```c
int mkdir(const char *pathname, mode_t mode);
```

<br>

**Argument**

- `pathname`: 생성할 디렉터리의 경로
- `mode`: 생성된 디렉터리의 접근 권한
  - <접근 권한>
    - 0000~0777

<br>

**Return**

- **성공**: 0
- **실패**: -1
  - 상위 디렉터리가 존재하지 않으면 실패한다.

<br>

**Operation**

- 지정된 경로에 새로운 디렉터리를 생성한다.

<br>

**Feature**

- 

<br>

---

### rmdir()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int rmdir(const char *pathname);
```

<br>

**Argument**

- `pathname`: 제거할 디렉터리의 경로

<br>

**Return**

- **성공**: 0
- **실패**: -1
  - 디렉터리가 비어 있지 않으면 실패한다.

<br>

**Operation**

- 지정된 경로에 있는 **비어 있는 디렉터리**를 제거한다.

<br>

**Feature**

- 

<br>

---

### getcwd()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
char *getcwd(char *buf, size_t size);
```

<br>

**Argument**

- `buf`: 현재 작업 디렉터리 경로를 저장할 버퍼 주소
- `size`: `buf`의 크기
- <인자를 지정하는 방법> (3 中 택1)
  -  `buf`에 경로를 저장할 만큼 충분한 메모리를 할당하고 그 크기를 `size`에 지정
     -  **메모리 할당**: 수동, **메모리 크기 지정**: 수동
  -  `buf`에 NULL을 지정하고 할당이 필요한 메모리 크기를 `size`에 지정
     -  **메모리 할당**: 자동, **메모리 크기 지정**: 수동
  -  `buf`에 NULL을 지정하고 `size`는 0으로 지정
     -  **메모리 할당**: 자동, **메모리 크기 지정**: 자동

<br>

**Return**

- **성공**: 현재 디렉터리 경로를 포함한 포인터(`buf`)
- **실패**: NULL
  - 버퍼가 충분히 크지 않으면 실패한다.

<br>

**Operation**

- 현재 작업 디렉터리의 절대 경로를 반환한다.

<br>

**Feature**

- `buf` 인자의 값으로 NULL을 전달하면, 필요한 크기의 메모리를 동적으로 할당한다.(**자동으로 할당**)
- `size` 인자의 값으로 0을 전달하면 함수가 현재 작업 디렉터리 경로를 저장할 버퍼 크기를 **자동으로 할당**한다.

<br>

---

### get_current_dir_name()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
char *get_current_dir_name(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- **성공**: 현재 디렉터리 경로를 포함하는 동적 메모리의 포인터
- **실패**: NULL

<br>

**Operation**

- 현재 작업 디렉터리의 절대 경로를 반환한다.
- 시스템이 메모리를 자동으로 할당해 경로를 저장하고 해당 메모리의 포인터를 반환한다.

<br>

**Feature**

- 반환된 포인터는 `free()`로 해제해야 한다.

<br>

---

### rename()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int rename(const char *oldpath, const char *newpath);
```

<br>

**Argument**

- `oldpath`: 기존 파일 또는 디렉터리의 경로
- `newpath`: 새 파일 또는 디렉터리의 이름 또는 경로

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 파일 또는 디렉터리의 이름이나 위치를 변경한다.

<br>

**Feature**

- 소스와 대상이 같은 파일 시스템에 있어야 한다.
- `newpath`로 지정한 이름이 이미 존재하면, 기존 파일의 내용으로 덮어씌워진다.

<br>

---

### chdir()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int chdir(const char *path);
```

<br>

**Argument**

- `path`: 이동하려는 디렉터리 경로(목적지)

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 현재 작업 디렉터리(pwd)를 지정된 경로로 변경한다.

<br>

**Feature**

- 절대 경로와 상대 경로 모두 사용 가능
- 작업 디렉터리 변경 후에는 모든 경로 지정이 이 디렉터리를 기준으로 이루어진다.

<br>

---

### fchdir()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int fchdir(int fd);
```

<br>

**Argument**

- `fd`: 이동하려는 디렉터리의 파일 디스크립터(fd)

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 파일 디스크립터를 통해 작업 디렉터리를 변경한다.
  - **파일 디스크립터(fd)**: `open()` 함수로 디렉터리를 열고 돌려받는 것

<br>

**Feature**

- `fchdir()` 함수를 사용하려면 `open()` 함수로 해당 디렉터리를 먼저 열어야 한다.

<br>

---

### opendir()

**헤더 파일**

```c
#include <dirent.h>
```

<br>

**함수 원형**

```c
DIR *opendir(const char *name);
```

<br>

**Argument**

- `name`: 열고자 하는 디렉터리 경로

<br>

**Return**

- **성공**: `DIR` 객체
  - `DIR` 객체: 파일의 정보가 담긴 구조체
- **실패**: NULL

<br>

**Operation**

- 지정된 디렉터리를 열고, 디렉터리 스트림을 반환한다.

<br>

**Feature**

- 디렉터리를 읽기 위해 `readdir()`과 함께 사용된다.

<br>

---

### closedir()

**헤더 파일**

```c
#include <dirent.h>
```

<br>

**함수 원형**

```c
int closedir(DIR *dirp);
```

<br>

**Argument**

- `dirp`: 닫을 디렉터리 스트림의 포인터

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 디렉터리 스트림을 닫는다.

<br>

**Feature**

- `opendir()`로 연 디렉터리를 해제할 때 사용된다.

<br>

---

### readdir()

**헤더 파일**

```c
#include <dirent.h>
```

<br>

**함수 원형**

```c
struct dirent *readdir(DIR *dirp);
```

<br>

**Argument**

- `dirp`: 읽을 디렉터리 스트림의 포인터

<br>

**Return**

- **성공**: `dirent` 구조체를 가리키는 포인터
  - `readdir()` 함수는 수행에 성공하면 디렉터리의 내용을 한번에 하나씩 읽음
- **실패**: NULL
  - 더 이상 읽을 항목이 없으면 NULL을 반환한다.

<br>

**Operation**

- 디렉터리 스트림에서 다음 항목을 읽는다.

<br>

**Feature**

- 디렉터리 내의 파일 이름, 타입 등을 얻을 수 있다.
- NULL 반환 시 스트림 끝에 도달했거나 오류가 발생한 것이다.

<br>

## 파일

### struct stat

**헤더 파일**

```c
#include <sys/stat.h>
```

<br>

**구조체 정의**

```c
struct stat 
{
    dev_t     st_dev;      // 파일이 위치한 장치의 ID
    ino_t     st_ino;      // 파일의 inode 번호
    mode_t    st_mode;     // 파일 모드(파일 종류 및 권한)
    nlink_t   st_nlink;    // 링크(하드 링크) 개수
    uid_t     st_uid;      // 파일 소유자 ID
    gid_t     st_gid;      // 파일 그룹 ID
    dev_t     st_rdev;     // (특수 파일일 경우) 장치 ID
    off_t     st_size;     // 파일 크기(바이트)
    time_t    st_atime;    // 마지막 접근 시간
    time_t    st_mtime;    // 마지막 수정 시간
    time_t    st_ctime;    // 마지막 상태 변경 시간
    blksize_t st_blksize;  // 파일 시스템의 블록 크기
    blkcnt_t  st_blocks;   // 할당된 블록 수
};

```

- `st_dev`: 파일이 저장되어 있는 장치의 번호
- `st_ino`: 파일의 inode 번호
- `st_mode`: 파일의 종류 및 접근 권한을 저장
- `st_nlink`: 하드 링크의 개수
- `st_uid`: 파일 소유자(User)의 UID
- `st_gid`: 파일 소유 그룹(Group)의 GID
- `st_rdev`: 
  - 장치 파일이면 주 장치 번호와 부 장치 번호를 저장
  - 장치 파일이 아니면 아무 의미가 없음
- `st_size`: 파일 크기(바이트)
- `st_atime`: 마지막 접근 시간
- `st_mtime`: 마지막 수정 시간
- `st_ctime`: 마지막 상태 변경 시간
- `st_blksize`: 파일 내용을 입출력할 때 사용하는 버퍼의 크기
- `st_blocks`: 파일에 할당된 파일 시스템의 블록 수(블록의 크기: 512 바이트)

<br>

---

### struct timespec

**헤더 파일**

```c
#include <time.h>
```

<br>

**구조체 정의**

```c
struct timespec
{
    time_t tv_sec; // 초(seconds)
    long tv_nsec;  // 나노초(nanoseconds)
}
```

<br>

---

### 파일 종류 상수

#### 파일 종류 상수

|   상수   | 상숫값(8진수) | 설명                                         |
| :------: | :-----------: | :------------------------------------------- |
| S_IFREG  |    0100000    | 일반 파일                                    |
| S_IFDIR  |    0040000    | 디렉터리 파일                                |
| S_IFCHR  |    0020000    | 문자 장치 파일                               |
| S_IFBLK  |    0060000    | 블록 장치 파일                               |
| S_IFIFO  |    0010000    | FIFO(파이프) 파일                            |
| S_IFLNK  |    0120000    | 심볼릭 링크 파일                             |
| S_IFSOCK |    0140000    | 소켓 파일                                    |
|  S_IFMT  |    0170000    | 파일의 종류 비트를 가져오기 위한 비트 마스크 |

<br>

#### 파일 종류 확인 매크로

|   매크로    | 기능                                  |         매크로 정의          |
| :---------: | ------------------------------------- | :--------------------------: |
| S_ISREG(m)  | 일반 파일인지 확인 (`true`: 일반파일) | (((m) & S_IFMT) == S_IFREG)  |
| S_ISDIR(m)  | 디렉터리인지 확인                     | (((m) & S_IFMT) == S_IFDIR)  |
| S_ISCHR(m)  | 문자 장치인지 확인                    | (((m) & S_IFMT) == S_IFCHR)  |
| S_ISBLK(m)  | 블록 장치인지 확인                    | (((m) & S_IFMT) == S_IFBLK)  |
| S_ISFIFO(m) | FIFO(파이프)인지 확인                 | (((m) & S_IFMT) == S_IFIFO)  |
| S_ISLNK(m)  | 심볼릭 링크인지 확인                  | (((m) & S_IFMT) == S_IFLNK)  |
| S_ISSOCK(m) | 소켓인지 확인                         | (((m) & S_IFMT) == S_IFSOCK) |

<br>

---

### stat()

**헤더 파일**

```c
#include <sys/stat.h>
```

<br>

**함수 원형**

```c
int stat(const char *pathname, struct stat *statbuf);
```

<br>

**Argument**

- `pathname`: 정보를 알고자 하는 파일 경로
- `statbuf`: 검색한 파일 정보를 저장할 `stat` 구조체의 주소

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 지정된 파일 경로에 대한 정보를 가져와 `stat` 구조체에 저장한다.

<br>

**Feature**

- 파일에 대한 읽기/쓰기/실행 권한이 반드시 있어야 하는 것은 아니지만 **파일에 이르는 경로의 각 디렉터리에 대한 읽기 권한은 있어야 한다.**

<br>

---

### fstat()

**헤더 파일**

```c
#include <sys/stat.h>
```

<br>

**함수 원형**

```c
int fstat(int fd, struct stat *statbuf);
```

<br>

**Argument**

- `fd`: 열려 있는 파일의 파일 디스크립터
- `statbuf`: 검색한 파일 정보를 저장할 `stat` 구조체 주소

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 열린 파일 디스크립터에 대한 정보를 가져와 `stat` 구조체에 저장한다.

<br>

**Feature**

- 

<br>

---

### access()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int access(const char *pathname, int mode);
```

<br>

**Argument**

- `pathname`: 접근 권한을 알고자 하는 파일의 경로
- `mode`: 접근 권한
  - **R_OK**: 읽기 권한 확인
  - **W_OK**: 쓰기 권한 확인
  - **X_OK**: 실행 권한 확인
  - **F_OK**: 파일이 존재하는지 확인

<br>

**Return**

- **성공**: 0 (접근 권한을 지님)
- **실패**: -1
  - errno
    - ENOENT: 해당 파일이 존재하지 않거나 심볼릭 링크의 경우 원본 파일이 없음
    - EACCES: 접근 권한이 없음

<br>

**Operation**

- 지정된 파일에 대한 접근 권한을 확인한다.
- `pathname`에 지정된 파일이 `mode`로 지정된 권한을 지니고 있는지 확인하고 반환한다.

<br>

**Feature**

- 

<br>

---

### chmod()

**헤더 파일**

```c
#include <sys/stat.h>
```

<br>

**함수 원형**

```c
int chmod(const char *pathname, mode_t mode);
```

<br>

**Argument**

- `pathname`: 접근 권한을 변경하려는 파일의 경로
- `mode`: 새로운 권한
  - <특수 접근 권한>
    - S_ISUID
    - S_ISGID
    - S_ISVTX
  - <소유자/그룹/기타 사용자의 접근 권한>
    - 0000~0777

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 지정된 파일의 접근 권한을 변경한다.

<br>

**Feature**

- 접근 권한을 변경할 파일의 경로를 받아 `mode`에 지정한 상수값으로 권한을 변경한다.

<br>

---

### fchmod()

**헤더 파일**

```c
#include <sys/stat.h>
```

<br>

**함수 원형**

```c
int fchmod(int fd, mode_t mode);
```

<br>

**Argument**

- `fd`: 열려 있는 파일의 파일 디스크립터
- `mode`: 새로운 권한

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 열린 파일 디스크립터의 접근 권한을 변경한다.

<br>

**Feature**

- 접근 권한 지정 방법은 `chmod()` 함수와 같음

<br>

## 링크

### link()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int link(const char *oldpath, const char *newpath);
```

<br>

**Argument**

- `oldpath`: 기존 파일의 경로
- `newpath`: 새로 생성할 하드 링크의 경로

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 기존 파일의 하드 링크를 생성한다.

<br>

**Feature**

- 하드 링크는 동일한 inode 번호를 공유하여 동일한 파일 데이터를 참조한다.
- 파일이 삭제되려면 모든 하드 링크가 삭제되어야 함
- **하드 링크는 같은 파일 시스템에 있어야 하므로 두 경로를 반드시 같은 파일 시스템으로 지정해야 한다.**
- 디렉터리에 대해서는 동작하지 않음
- 심볼릭 링크가 아닌 실제 파일에 대해 동작한다.

<br>

---

### symlink()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int symlink(const char *target, const char *linkpath);
```

<br>

**Argument**

- `target`: 심볼릭 링크가 가리킬 기존 파일의 경로
- `linkpath`: 생성할 심볼릭 링크의 경로

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 심볼릭 링크를 생성한다.

<br>

**Feature**

- 심볼릭 링크는 파일의 경로를 저장하는 특수 파일이다.
- 심볼릭 링크는 디렉터리와 파일 모두에 사용할 수 있다.
- 원본 파일이 삭제되거나 이동되면 심볼릭 링크는 깨진다.(broken link)
- **심볼릭 링크는 기존 파일과 다른 파일 시스템에도 생성할 수 있다.**

<br>

---

### lstat()

**헤더 파일**

```c
#include <sys/stat.h>
```

<br>

**함수 원형**

```c
int lstat(const char *pathname, struct stat *statbuf);
```

<br>

**Argument**

- `pathname`: 심볼릭 링크의 경로
- `statbuf`: 파일 정보를 저장할 `stat` 구조체 포인터

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 심볼릭 링크 자체의 정보를 반환한다.

<br>

**Feature**

- `lstat()` 함수는 심볼릭 링크 자체의 파일 정보를 검색한다.
- 심볼릭 링크를 `stat()` 함수로 검색하면 원본 파일에 대한 정보가 검색된다는 점에 주의
- 첫 번째 인자로 심볼릭 링크가 온다는 것을 제외하면 `stat()` 함수와 동일한 방식으로 사용한다.

<br>

---

### readlink()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
ssize_t readlink(const char *pathname, char *buf, size_t bufsiz);
```

<br>

**Argument**

- `pathname`: 심볼릭 링크의 경로
- `buf`: 읽어온 내용을 저장할 버퍼
- `bufsiz`: 버퍼의 크기

<br>

**Return**

- **성공**: 읽은 바이트 수
- **실패**: -1

<br>

**Operation**

- 심볼릭 링크가 가리키는 경로를 받아 해당 파일의 내용을 읽어 버퍼에 저장한다.

<br>

**Feature**

- 

<br>

---

### realpath()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
char *realpath(const char *path, char *resolved_path);
```

<br>

**Argument**

- `path`: 심볼릭 링크의 경로명
- `resolved_path`: 절대 경로를 저장할 버퍼
  - 인자 값이 NULL인 경우 메모리를 동적 할당

<br>

**Return**

- **성공**: 절대 경로가 저장된 곳의 주소
- **실패**: NULL
  - 잘못된 경로가 포함된 경우 실패한다.

<br>

**Operation**

- 지정된 파일 경로를 절대 경로로 변환한다.

<br>

**Feature**

- 

<br>

---

### unlink()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int unlink(const char *pathname);
```

<br>

**Argument**

- `pathname`: 삭제할 파일 또는 심볼릭 링크의 경로

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 지정된 파일을 삭제하거나 심볼릭 링크를 제거한다.

<br>

**Feature**

- `unlink()` 함수에서 연결을 끊은 경로명이 그 파일을 참조하는 마지막 링크라면 파일은 삭제된다.
- 인자로 지정한 경로명이 심볼릭 링크이면 링크가 가리키는 원본 파일이 아니라 심볼릭 링크 파일이 삭제된다.

<br>

---

# File I/O

## Low Level 파일 입출력

### open()

**헤더 파일**

```c
#include <fcntl.h>
```

<br>

**함수 원형**

```c
int open(const char *pathname, int flags);
int open(const char *pathname, int flags, mode_t mode);
```

<br>

**Argument**

- `pathname`: 열고자 하는 파일의 경로
- `flags`: 파일 열기 플래그
  - <파일 열기 플래그>
    - O_RDONLY: 파일을 읽기 전용으로 연다.
    - O_WRONLY: 파일을 쓰기 전용으로 연다.
    - O_RDWR: 파일을 읽기/쓰기용으로 연다.
    - O_CREAT: 파일이 없으면 생성한다. (파일을 생성할 권한은 지니고 있어야 한다. 파일이 이미 존재하면 아무 의미 없는 옵션이다.)
    - O_EXCL: O_CREAT 옵션과 함께 사용할 경우 기존에 없는 파일이면 파일을 생성하고, 이미 있으면 파일을 생성하지 않고 오류메시지를 출력한다.
    - O_APPEND: 이 옵션을 지정하면 파일의 맨 끝에 내용을 추가한다.
    - O_TRUNC: 파일을 생성할 때 이미 존재하는 파일이고 쓰기 옵션으로 열면 내용을 모두 지우고 파일 길이를 0으로 변경한다.
    - O_SYNC / O_DSYNC: 파일에 쓰기 동작을 할 때는 대체로 버퍼에만 쓰고 나중에 디스크와 같은 저장 장치로 옮겨 쓰는데, **이 옵션이 설정되어 있으면 저장 장치에 쓰기를 마쳐야 쓰기 동작을 완료한다.** O_SYNC 플래그는 파일의 수정 시각 속성도 수정할 때까지 기다린다. **이 옵션을 설정하면 프로그램 실행 속도는 느려질 수 있지만 디스크에 확실하게 저장됨을 보장한다.**
- `mode`(선택 사항): 파일 생성 시 접근 권한 설정
  - 0000~0777

<br>

**Return**

- **성공**: `pathname`에 해당하는 파일 디스크립터(fd)
- **실패**: -1

<br>

**Operation**

- `pathname`에 지정된 파일을 열거나, 필요 시 생성한다.

<br>

**Feature**

- 동작 방식은 `flags`에 따라 달라진다.
- 성공 시 반환된 파일 디스크립터를 통해 파일 조작 가능

<br>

---

### close()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int close(int fd);
```

<br>

**Argument**

- `fd`: 닫을 파일 디스크립터

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 파일 디스크립터를 닫고 시스템 리소스를 해제한다.

<br>

**Feature**

- 한 프로세스가 열 수 있는 파일 개수에 제한이 있으므로 파일의 사용이 끝나면 닫아야 한다.
- 열려 있는 모든 파일 디스크립터는 프로그램 종료 시 자동으로 닫힌다.

<br>

---

### read()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
ssize_t read(int fd, void *buf, size_t count);
```

<br>

**Argument**

- `fd`: 읽을 파일 디스크립터
- `buf`: 파일에서 읽은 데이터를 저장할 버퍼
- `count`: `buf`의 크기(읽을 바이트 수)

<br>

**Return**

- **성공**: 읽은 바이트 수
  - **파일의 끝**: 0
- **실패**: -1

<br>

**Operation**

- 파일 디스크립터를 통해 파일에서 데이터를 읽어 버퍼에 저장한다.

<br>

**Feature**

- 읽기 작업은 현재 파일 오프셋에서 시작하며, 작업 후 오프셋이 이동한다.
- 파일의 종류에 상관없이 무조건 바이트 단위로 읽는다.

<br>

---

### write()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
ssize_t write(int fd, const void *buf, size_t count);
```

<br>

**Argument**

- `fd`: 내용을 쓸 파일 디스크립터
- `buf`: 작성할 데이터가 있는 버퍼
- `count`: `buf`의 크기(작성할 바이트 수)

<br>

**Return**

- **성공**: 작성한 바이트 수
- **실패**: -1

<br>

**Operation**

- 버퍼의 데이터를 파일 디스크립터를 통해 파일에 기록한다.

<br>

**Feature**

- 쓰기 작업은 현재 파일 오프셋에서 시작하며, 작업 후 오프셋이 이동한다.
- `read()` 함수와 인자의 구조는 같지만 의미가 다르다.

<br>

---

### lseek()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
off_t lseek(int fd, off_t offset, int whence);
```

<br>

**Argument**

- `fd`: 파일 디스크립터
- `offset`: 이동할 오프셋
- `whence`: 오프셋의 기준 위치
  - SEEK_SET: 파일의 시작 기준
  - SEEK_CUR: 현재 위치 기준
  - SEEK_END: 파일의 끝 기준

<br>

**Return**

- **성공**: 파일의 새로운 오프셋
- **실패**: -1

<br>

**Operation**

- `whence`의 값을 기준으로 오프셋의 기준 위치를 해석하고 `offset`으로 지정한 크기만큼 오프셋을 이동시킨다.

<br>

**Feature**

- 파일 내 특정 위치를 지정해 읽기/쓰기 작업 가능

<br>

---

### dup()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int dup(int oldfd);
```

<br>

**Argument**

- `oldfd`: 복사할 기존 파일 디스크립터

<br>

**Return**

- **성공**: 새로운 파일 디스크립터
- **실패**: -1

<br>

**Operation**

- 기존 파일 디스크립터를 복사한다.

<br>

**Feature**

- 새로운 파일 디스크립터는 현재 할당 가능한 파일 디스크립터 중에 가장 작은 값으로 자동 할당된다.

<br>

---

### dup2()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int dup2(int oldfd, int newfd);
```

<br>

**Argument**

- `oldfd`: 복사할 기존 파일 디스크립터
- `newfd`: 덮어쓸 파일 디스크립터

<br>

**Return**

- **성공**: `newfd` 값
- **실패**: -1

<br>

**Operation**

- `newfd`를 `oldfd`로 복사한다.

<br>

**Feature**

- `newfd`가 열려 있으면 닫고 복사한다.

<br>

---

### 스트림(Stream)

#### 개념

- **스트림(Stream)**은 **데이터의 흐름을 추상화한 개념**으로, **프로그램과 데이터 소스(파일, 키보드 입력, 네트워크 등) 간의 데이터 전송 통로**를 의미한다.
- 데이터를 순차적으로 읽거나 쓰는 연속적인 흐름으로 생각할 수 있다.
- 스트림은 입력(Input)과 출력(Output)의 관점에서 동작한다.
  - **입력 스트림**: 외부 소스에서 데이터를 읽어오는 통로
  - **출력 스트림**: 데이터를 외부로 내보내는 통로

<br>

#### 특징

- 스트림은 하드웨어와 소프트웨어 간의 차이를 숨기고 일관된 방식으로 데이터를 처리할 수 있도록 도와준다.
- 스트림은 버퍼를 통해 데이터를 처리하며, 데이터는 한 번에 일정량씩 전송된다.

<br>

#### 종류

**표준 스트림**

- `stdin`: 표준 입력(일반적으로 **키보드**)
- `stdout`: 표준 출력(일반적으로 **화면**)
- `stderr`: 표준 에러 출력(일반적으로 **화면**)

<br>

**파일 스트림**

파일에서 데이터를 읽거나 쓰는 스트림(`fopen()`, `fread()`, `fwrite()` 등으로 사용)

<br>

**네트워크 스트림**

네트워크 소켓을 통해 데이터 송수신에 사용

<br>

---

### 버퍼(Buffer)

#### 개념

데이터를 **일시적으로** 저장하는 **메모리 공간**

<br>

#### 용도

스트림에서 **데이터가 전송되거나 처리되기 전에** 버퍼에 데이터를 임시로 저장해 **효율성을 높이고 I/O 연산을 최적화**한다.

<br>

#### 역할

- **속도 차이 보완**
  - CPU는 매우 빠르게 처리할 수 있지만, I/O 장치는 상대적으로 느리다.
  - 버퍼는 데이터를 모아 한 번에 처리함으로써 속도 차이를 줄인다.
- **연속적인 데이터 흐름 지원**
  - 데이터가 작은 조각으로 돌아오거나 나가더라도, 버퍼를 사용하면 데이터 흐름을 유지할 수 있다.

<br>

#### 버퍼의 동작 방식

- 버퍼링은 데이터를 일정량 모아둔 후, **한꺼번에 처리**하는 방식으로 동작한다.
- **입력 스트림**의 경우
  - 데이터를 장치에서 읽어 올 때, 버퍼에 일정량을 저장한 후 프로그램이 요청할 때 전달한다.
- **출력 스트림**의 경우
  - 데이터를 프로그램이 제공할 때 버퍼에 일정량을 저장한 후, 버퍼가 차면 장치에 출력한다.

<br>

#### 버퍼링 모드

- **Line Buffering(줄 버퍼링)**
  - 데이터를 한 줄씩 처리한다.(`\n`이 있을 때 출력)
  - 주로 터미널 출력에서 사용
- **Fully Buffered(완전 버퍼링)**
  - 데이터를 일정 크기의 버퍼가 가득 찰 때 처리한다.
  - 주로 파일 입출력에서 사용
- **Unbuffered(비버퍼링)**
  - 데이터를 버퍼 없이 바로 처리한다.
  - 주로 `stderr`와 같이 즉각적인 출력이 필요한 경우 사용

<br>

---

### 스트림과 버퍼의 관계

- 스트림은 데이터의 흐름을 추상화한 개념이며, 버퍼는 이 흐름을 효율적으로 관리하기 위한 도구이다.
- 버퍼가 스트림에 포함되어 데이터를 한 번에 읽거나 쓰는 작업을 최적화한다.
- 즉,
  - **스트림**은 데이터를 읽거나 쓰는 과정 자체를 처리
  - **버퍼**는 이 과정을 빠르고 효율적으로 수행하도록 도움



<br>

---

### 표준 입출력 스트림: stdin, stdout, stderr

#### stdin(Standard Input)

**설명**

- 프로그램의 입력을 받는 기본 스트림이다.
- 일반적으로 키보드 입력과 연결되어 있다.

<br>

**파일 디스크립터(fd)**

0

<br>

**용도**

사용자 입력 처리(e.g. `scanf()`, `gets()`)

<br>

**특징**

- 입력이 줄 단위로 버퍼링될 수 있다.
- 리다이렉션을 통해 파일, 파이프 등에서 입력을 받을 수 있다.

<br>

#### stdout(Standard Output)

**설명**

- 프로그램의 출력을 내보내는 기본 스트림이다.
- 일반적으로 화면 출력과 연결되어 있다.

<br>

**파일 디스크립터(fd)**

1

<br>

**용도**

결과 출력(e.g. `printf()`, `puts()`)

<br>

**특징**

- 출력이 줄 단위로 버퍼링될 수 있다.
- 리다이렉션을 통해 파일이나 다른 출력 장치로 보낼 수 있다.

<br>

#### stderr(Standard Error)

**설명**

- 에러 메시지를 내보내는 스트림이다.
- 일반적으로 화면 출력과 연결되어 있지만, `stdout`과는 별도로 동작한다.

<br>

**파일 디스크립터(fd)**

2

<br>

**용도**

에러 메시지 출력(e.g. `fprintf(stderr, ...)`)

<br>

**특징**

- 대체로 출력이 버퍼링되지 않고 즉시 출력된다.
- 리다이렉션을 통해 별도의 파일이나 장치로 에러 로그를 분리 가능

<br>

---

### fcntl()

**헤더 파일**

```c
#include <fcntl.h>
```

<br>

**함수 원형**

```c
int fcntl(int fd, int cmd, ...);
```

<br>

**Argument**

- `fd`: 파일 디스크립터
- `cmd`: 명령
  - F_GETFL: 상태 플래그 정보를 읽음
  - F_SETFL: 상태 플래그 정보를 설정, 설정할 수 있는 것은 대부분 `open()` 함수에서 지정하는 플래그

<br>

**Return**

- **성공**: 명령에 따라 다양한 값
- **실패**: -1

<br>

**Operation**

- 파일 디스크립터가 가리키는 파일에 `cmd`로 지정한 명령을 수행한다.

<br>

**Feature**

- 다목적 함수로, 잠금(F_SETLK), 플래그 설정 등 다양한 작업을 지원한다.

<br>

---

### remove()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int remove(const char *pathname);
```

<br>

**Argument**

- `pathname`: 삭제할 파일 또는 디렉터리 경로

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 지정된 파일 또는 빈 디렉터리를 삭제한다.

<br>

**Feature**

- 파일인지 디렉터리인지 자동으로 판단한다.

<br>

---

### fsync()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int fsync(int fd);
```

<br>

**Argument**

- `fd`: 디스크로 저장할 파일의 파일 디스크립터

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 메모리에 위치하고 있는 파일의 내용을 디스크로 보내 메모리와 디스크의 내용을 동기화한다.
- 메모리의 내용이 디스크로 모두 기록되기 전에는 반환하지 않는다.

<br>

**Feature**

- 데이터 손실 방지에 유용하다.

<br>

## High Level 파일 입출력

### fopen()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
FILE *fopen(const char *filename, const char *mode);
```

<br>

**Argument**

- `filename`: 열고자 하는 파일의 이름(파일 경로)
- `mode`: 파일 열기 모드
  - "r": 읽기 전용으로 텍스트 파일을 연다.
  - "w": 새로 쓰기용으로 텍스트 파일을 연다. 기존 내용은 삭제된다.
  - "a": 추가용으로 텍스트 파일을 연다.
  - "rb": 읽기 전용으로 바이너리 파일을 연다.
  - "wb": 새로 쓰기용으로 바이너리 파일을 연다. 기존 내용은 삭제된다.
  - "ab": 추가용으로 바이너리 파일을 연다.

<br>

**Return**

- **성공**: `filename`에 해당하는 파일 포인터
- **실패**: NULL

<br>

**Operation**

- 지정한 모드로 파일을 연다. 파일이 존재하지 않으면 새로운 파일을 생성하거나 오류를 반환한다.

<br>

**Feature**

- 바이너리 모드(`b`)와 텍스트 모드 구분
- 파일 포인터는 이후 파일 작업에 사용된다.

<br>

---

### fclose()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int fclose(FILE *stream);
```

<br>

**Argument**

- `stream`: 닫을 파일의 파일 포인터

<br>

**Return**

- **성공**: 0
- **실패**: EOF

<br>

**Operation**

- 열린 파일을 닫고, 파일과 연결된 리소스를 해제한다.

<br>

**Feature**

- 닫지 않은 파일은 메모리 누수 및 데이터 손실 위험이 있다.

<br>

---

### fgetc(), getc(), getchar(), getw()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int fgetc(FILE *stream);
int getc(FILE *stream);
int getchar(void);
int getw(FILE *stream);
```

<br>

**Argument**

- `stream`: 읽을 파일의 파일 포인터

<br>

**Return**

- **성공**: 읽은 문자(`int` 타입)
- **실패**: EOF

<br>

**Operation**

- **`fgetc()`**: 파일에서 문자 한 개를 `unsigned char` 형태로 읽어서 반환한다.
- **`getc()`**: `fgetc()`와 동일
- **`getchar()`**: 표준 입력(`stdin`)에서 문자 한 개를 읽어서 반환한다.
- **`getw()`**: 파일에서 워드 단위로 읽는다. 워드의 크기는 `int` 타입의 크기로 시스템에 따라 달라진다.

<br>

**Feature**

- **`fgetc()`**: EOF에 도달하면 EOF를 반환한다.
- **`getc()`**: `fgetc()`와 기능은 동일하지만 매크로로 구현되어 속도가 약간 더 빠르지만 메모리를 조금 더 차지한다.
- **`getchar()`**: `getc(stdin)`과 동일
- **`getw()`**: 비표준 함수이다. 호환성 문제로 사용을 권장하지 않음.

<br>

---

### fputc(), putc(), putchar(), putw()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int fputc(int character, FILE *stream);
int putc(int character, FILE *stream);
int putchar(int character);
int putw(int word, FILE *stream);
```

<br>

**Argument**

- `character`
  - `fputc()`, `putc()`: 파일에 쓸 문자
  - `putchar()`: 출력할 문자
- `stream`: 쓸 파일의 파일 포인터
- `word`: 기록할 워드

<br>

**Return**

- **성공** 
  - `fputc()`, `putc()`, `putchar()`: 기록한 문자
  - `putw()`: `word`
- **실패**: EOF

<br>

**Operation**

- **`fputc()`**: 파일에 하나의 문자를 기록한다.
- **`putc()`**: `fputc()`와 동일
- **`putchar()`**: 표준 출력(`stdout`)에 문자 하나를 출력한다.
- **`putw()`**: 파일에 워드를 기록한다.

<br>

**Feature**

- **`fputc()`** 
  - 인자로 받은 `int` 타입 데이터를 `unsigned char`로 변환해 파일에 쓴다.
  - 문자 기록 후 스트림의 파일 위치 지시자가 증가한다.
- **`putc()`**: `fputc()`와 기능은 동일하지만 매크로로 구현되어있다.
- **`putchar()`**: `putc(character, stdout)`와 동일
- **`putw()`**: 비표준 함수이며 사용이 권장되지 않는다.

<br>

---

### gets(), fgets()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
char *gets(const char *str);
char *fgets(char *str, int size, FILE *stream);
```

<br>

**Argument**

- `str`: 입력된 문자열을 저장할 버퍼
- `size`: 읽을 최대 문자 수(`\0` 포함)
- `stream`: 입력 스트림(`stdin`, 파일 등)

<br>

**Return**

- **성공**: `str`
- **실패**: NULL(EOF 또는 에러 발생 시)

<br>

**Operation**

- **`gets()`**
  - 표준 입력(`stdin`)에서 문자열을 읽어 `str`에 저장한다.
  - 개행 문자(`\n`)를 제외한 문자열을 저장하며, 문자열 끝에 NULL 종료 문자(`\0`)를 추가한다.
- **`fgets()`**
  - 지정된 스트림에서 최대 `size - 1` 문자를 읽어 `str`에 저장한다.
  - 개행 문자(`\n`)를 포함하며 문자열 끝에 NULL 종료 문자(`\0`)를 추가한다.

<br>

**Feature**

- **`gets()`**
  - 버퍼 크기를 확인하지 않아서 **버퍼 오버플로우**가 발생할 위험이 있다.
  - **사용이 권장되지 않음**. 대신 `fgets()`사용을 권장한다.
- **`fgets()`**
  - 버퍼 오버플로우를 방지하며, **안전한 입력 함수**이다.
  - `\n`도 저장되므로 필요 시 제거해야 한다.

<br>

---

### puts(), fputs()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int puts(const char *str);
int fputs(const char *str, FILE *stream);
```

<br>

**Argument**

- `str`: 출력할 문자열(`\0` 필요)
- `stream`: 출력 스트림(`stdout`, 파일 등)

<br>

**Return**

- **성공**: 0
- **실패**: EOF

<br>

**Operation**

- **`puts()`**: 문자열을 표준 출력(`stdout`)에 출력한 뒤 `\n`을 추가한다.
- **`fputs()`**: 지정된 스트림에 문자열을 출력하고 `\n`을 자동으로 추가하지 않는다.

<br>

**Feature**

- **`puts()`**: 출력후 버퍼가 flush 된다.
- **`fputs()`**: `puts()`와 달리 `\n`을 자동으로 추가하지 않는다.

<br>

---

### fread()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
size_t fread(void *ptr, size_t size, size_t count, FILE *stream);
```

<br>

**Argument**

- `ptr`: 읽어들인 데이터를 저장할 버퍼
- `size`: 각 요소의 크기(바이트)
- `count`: 읽을 요소 개수
- `stream`: 읽을 파일의 파일 포인터

<br>

**Return**

- **성공**: 읽은 요소의 개수(읽은 항목이 없으면 0)
- **실패**
  - 읽은 항목이 없을 경우: 0
  - 파일의 끝: EOF

<br>

**Operation**

- 지정된 스트림에서 데이터를 읽어 `ptr`에 저장한다.

<br>

**Feature**

- 바이너리 데이터 처리에 유용하다.
- 읽은 데이터가 예상보다 적을 경우 EOF 또는 에러 가능성 확인 필요

<br>

---

### fwrite()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
size_t fwrite(const void *ptr, size_t size, size_t count, FILE *stream);
```

<br>

**Argument**

- `ptr`: 기록할 데이터를 담은 버퍼
- `size`: 각 요소의 크기(바이트)
- `count`: 기록할 요소의 개수
- `stream`: 기록할 파일의 파일 포인터

<br>

**Return**

- **성공**: 기록된 요소의 개수
- **실패**: EOF

<br>

**Operation**

- `ptr`에 저장된 데이터를 지정된 스트림에 기록한다.

<br>

**Feature**

- 바이너리 데이터 처리에 유용하다.

<br>

---

### scanf(), fscanf()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int scanf(const char *format, ...);
int fscanf(FILE *stream, const char *format, ...);
```

<br>

**Argument**

- `stream`: 입력을 받을 파일의 파일 포인터
- `format`: 입력 형식을 지정하는 문자열(`"%d", "%s"` 등)
- `...`: 저장할 변수의 주소

<br>

**Return**

- **성공**: 성공적으로 읽은 항목 개수
- **실패**: EOF

<br>

**Operation**

- **`scanf()`**: 표준 입력(`stdin`)에서 데이터를 읽어 변수에 저장한다.
- **`fscanf()`**: 지정된 파일 스트림에서 데이터를 읽어 변수에 저장한다.

<br>

**Feature**

- **`scanf()`**
  - 형식 지정자가 맞지 않을 경우 동작 예측이 어려움
  - 버퍼 오버플로우 발생 가능
  - `fscanf(stdin, ...)`와 동일
- **`fscanf()`**
  - 기능은 `scanf()`와 동일하다.

<br>

---

### printf(), fprintf()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int printf(const char *format, ...);
int fprintf(FILE *stream, const char *format, ...);
```

<br>

**Argument**

- `stream`: 출력할 파일의 파일 포인터(`stdout`, `stderr` 또는 파일 포인터)
- `format`: 출력할 형식을 지정하는 문자열
- `...`: 형식에 맞는 가변 인자(출력할 데이터)

<br>

**Return**

- **성공**: 출력한 문자의 개수
- **실패**: EOF

<br>

**Operation**

- **`printf()`**: 표준 출력(`stdout`)에 지정된 형식에 따라 데이터를 출력한다.
- **`fprintf()`**: 지정된 파일 스트림(`stream`)에 데이터를 형식에 맞게 출력한다.

<br>

**Feature**

- **`printf()`**
  - 형식 지정자는 입력 데이터를 정확히 정의해야 하며, 형식 불일치 시 프로그램이 잘못된 출력 또는 충돌을 일으킬 수 있음.
- **`fprintf()`**
  - 일반적으로 에러 메시지 출력시 `stderr`를 사용하며, 로그 파일에 출력할 때도 유용하다.
  - 형식 지정자는 입력 데이터를 정확히 정의해야 하며, 형식 불일치 시 프로그램이 잘못된 출력 또는 충돌을 일으킬 수 있음.

<br>

---

### fseek()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int fseek(FILE *stream, long offset, int whence);
```

<br>

**Argument**

- `stream`: 파일 포인터
- `offset`: 이동할 오프셋
- `whence`: 오프셋의 기준 위치
  - SEEK_SET: 파일의 시작 기준
  - SEEK_CUR: 현재 위치 기준
  - SEEK_END: 파일의 끝 기준

<br>

**Return**

- **성공**: 0
- **실패**: EOF

<br>

**Operation**

- 파일 위치 지시자를 기준점에서 `offset`만큼 이동시킨다.

<br>

**Feature**

- 

<br>

---

### ftell()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
long ftell(FILE *stream);
```

<br>

**Argument**

- `stream`: 파일 포인터

<br>

**Return**

- **성공**: 현재 파일 위치
- **실패**: -1

<br>

**Operation**

- 파일 위치 지시자의 현재 위치를 반환한다.

<br>

**Feature**

- 파일 위치를 추적하거나 저장하는 데 유용하다.

<br>

---

### rewind()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
void rewind(FILE *stream);
```

<br>

**Argument**

- `stream`: 파일 포인터

<br>

**Return**

- N/A

<br>

**Operation**

- 파일 위치 지시자를 파일 시작으로 이동시킨다.

<br>

**Feature**

- `fseek(stream, 0, SEEK_SET)`과 동일

<br>

---

### fflush()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int fflush(FILE *stream);
```

<br>

**Argument**

- `stream`: 플러시할 파일 포인터
  - NULL일 경우 모든 출력 스트림을 플러시

<br>

**Return**

- **성공**: 0
- **실패**: EOF

<br>

**Operation**

- 출력 스트림의 버퍼 내용을 실제 파일로 기록한다.
- 파일을 읽기 전용으로 연 경우 버퍼에 있는 내용을 모두 비운다.

<br>

**Feature**

- 출력 스트림의 데이터 유실 방지

<br>

## 파일 디스크립터와 파일 포인터간 변환

### fdopen() (Low Level → High Level)

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
FILE *fdopen(int fd, const char *mode);
```

<br>

**Argument**

- `fd`: 파일 디스크립터
- `mode`: 열기 모드(`"r"`, `"w"`, `"a"` 등등)

<br>

**Return**

- **성공**: 파일 포인터
- **실패**: NULL

<br>

**Operation**

- 기존 파일 디스크립터를 사용하여 새로운 `FILE *` 타입 스트림을 생성한다.

<br>

**Feature**

- 파일 디스크립터의 접근 모드와 `mode`가 일치해야 함

<br>

---

### fileno() (High Level → Low Level)

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int fileno(FILE *stream);
```

<br>

**Argument**

- `stream`: 파일 포인터

<br>

**Return**

- **성공**: 해당 파일 포인터에 연결된 파일 디스크립터
- **실패**: -1

<br>

**Operation**

- 파일 포인터를 인자로 받아 파일 디스크립터를 반환한다.

<br>

#### Feature

- 

<br>

## 임시 파일 사용

### tmpnam()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
char *tmpnam(char *str);
```

<br>

**Argument**

- `str`: 결과를 저장할 버퍼의 시작 주소

<br>

**Return**

- **성공**: 임시 파일 이름을 나타내는 문자열
- **실패**: NULL

<br>

**Operation**

- 고유한 임시 파일 이름을 생성한다.

<br>

**Feature**

- 실제로 파일을 생성하지 않으며, 이름만 반환한다.
- 대체로 `mkstemp()` 사용을 권장한다.

<br>

---

### mktemp()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
char *mktemp(char *template);
```

<br>

**Argument**

- `template`: 고유한 파일 이름을 생성할 템플릿 문자열

<br>

**Return**

- **성공**: 고유한 임시 파일 이름(템플릿 수정)
- **실패**: NULL

<br>

**Operation**

- 템플릿 문자열을 기반으로 고유한 임시 파일 이름을 생성한다.

<br>

**Feature**

- 파일 이름만 반환하며 실제 파일은 생성하지 않는다.
- 대체로 `mkstemp()` 사용을 권장한다.

<br>

---

### tmpfile()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
FILE *tmpfile(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- **성공**: 임시 파일에 대한 파일 포인터
- **실패**: NULL

<br>

**Operation**

- 임시 파일을 생성하고 해당 파일에 대한 파일 포인터를 반환한다.
- 파일이 닫히거나 프로그램 종료시 파일은 자동으로 삭제됨

<br>

**Feature**

- 디스크에 파일을 생성하지만 경로는 일반적으로 비공개
- 파일이 자동 삭제되므로 클린업 코드가 필요 없음

<br>

---

### mkstemp()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int mkstemp(char *template);
```

<br>

**Argument**

- `template`: 고유한 파일 이름을 생성할 템플릿 문자열(마지막 6문자는 반드시 `XXXXXX`)

  - ```c
    char template[] = "/tmp/fileXXXXXX";
    int fd = mkstemp(template);
    ```

<br>

**Return**

- **성공**: 생성된 파일의 파일 디스크립터
- **실패**: -1

<br>

**Operation**

- 템플릿 문자열을 기반으로 고유한 파일 이름을 생성하고 해당 파일을 열어 파일 디스크립터를 반환한다.
- 파일이 **즉시 생성**되므로 경쟁 조건(race condition)이 없음.

<br>

**Feature**

- `tmpnam()`과 `mktemp()`의 보안 문제를 해결

<br>

<br>

# 프로세스

## 메모리와 스왑 상태 검색

### struct sysinfo

**헤더 파일**

```c
#include <sys/sysinfo.h>
```

<br>

**구조체 정의**

`sysinfo` 구조체는 시스템의 상태를 나타내는 정보를 저장하는 데 사용된다.

```c
struct sysinfo
{
    long uptime;                             // 시스템이 부팅된 후 경과된 시간(초)
    unsigned long loads[3];                  // 시스템의 평균 부하(1, 5, 15분 동안 실행 대기 중인 Task의 평균 개수)
    unsigned long totalram;                  // 총 물리적 RAM 크기(바이트)
    unsigned long freeram;                   // 사용 가능한 RAM 크기(바이트)
    unsigned long sharedram;                 // 공유된 RAM 크기(바이트)
    unsigned long bufferram;                 // 파일 시스템 버퍼로 사용 중인 RAM 크기(바이트)
    unsigned long totalswap;                 // 총 스왑 공간 크기(바이트)
    unsigned long freeswap;                  // 사용 가능한 스왑 공간 크기(바이트)
    unsigned short procs;                    // 현재 실행 중인 프로세스의 수
    unsigned long totalhigh;                 // 고속 메모리 영역(high memory)의 총 크기(바이트)
    unsigned long freehigh;                  // 고속 메모리 영역(high memory)의 사용 가능한 크기(바이트)
    unsigned int mem_unit;                   // 메모리 단위 크기(바이트)
    char _f[20-2*sizeof(long)-sizeof(int)];  // 구조체의 크기를 고정하기 위한 패딩(padding)
};
```

- `uptime`: 시스템이 부팅된 후 경과된 시간(초)
- `loads`: 시스템의 평균 부하
  - `loads[0]`: 1분 동안 실행 대기 중인 Task의 평균 개수
  - `loads[1]`: 5분 동안 실행 대기 중인 Task의 평균 개수
  - `loads[2]`: 15분 동안 실행 대기 중인 Task의 평균 개수
  - 반환값은 1000으로 나눈 값이 실제 평균이다.(정확도를 위해 `int` 타입으로 저장)
- `totalram`: 총 물리적 RAM 크기(바이트)
- `freeram`: 사용 가능한 RAM 크기(바이트)
- `sharedram`: 공유된 RAM 크기(바이트)
- `bufferram`: 파일 시스템 버퍼로 사용 중인 RAM 크기(바이트)
- `totalswap`: 총 스왑 공간 크기(바이트)
- `freeswap`: 사용 가능한 스왑 공간 크기(바이트)
- `procs`: 현재 실행 중인 프로세스의 수
- `totalhigh`: 고속 메모리 영역(high memory)의 총 크기(바이트)
- `freehigh`: 고속 메모리 영역(high memory)의 사용 가능한 크기(바이트)
- `mem_unit`: 메모리 단위 크기(바이트)
- `_f`: 구조체의 크기를 고정하기 위한 패딩(padding)



<br>

### sysinfo()

**헤더 파일**

```c
#include <sys/sysinfo.h>
```

<br>

**함수 원형**

```c
int sysinfo(struct sysinfo *info);
```

<br>

**Argument**

- `info`: 시스템 정보를 저장할 `sysinfo` 구조체의 주소

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 시스템 정보를 `sysinfo` 구조체에 채워 반환한다.

<br>

**Feature**

- 커널에서 직접 정보를 가져오므로 효울적이다.

<br>

## 프로세스 식별

### getpid(), getppid()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
pid_t getpid(void);
pid_t getppid(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- **`getpid()`**: 이 함수를 호출한 프로세스의 프로세스 ID(PID)
- **`getppid()`**: 부모 프로세스의 프로세스 ID(PPID)

<br>

**Operation**

- **`getpid()`**: 호출한 프로세스의 고유한 ID(PID)를 반환한다.
- **`getppid()`**: 현재 프로세스의 부모 프로세스 ID(PPID)를 반환한다.

<br>

**Feature**

- 

<br>

## 프로세스 그룹

### getpgrp(), getpgid()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
pid_t getpgrp(void);
pid_t getpgid(pid_t pid);
```

<br>

**Argument**

- **`getpgrp()`**: N/A
- **`getpgid()`**:
  - `pid`: 프로세스 ID
    - 인자 값이 0이면 이 함수를 호출하는 현재 프로세스의 PID를 사용한다.


<br>

**Return**

- **`getpgrp()`** 

  - 호출한 프로세스의 프로세스 그룹 ID(PGID)

- **`getpgid()`**

  - **성공**: 해당 프로세스의 PGID

  - **실패**: -1

<br>

**Operation**

- **`getpgrp()`** : 호출한 프로세스가 속한 프로세스 그룹의 ID(PGID)를 반환한다.
- **`getpgid()`**: 특정 프로세스의 프로세스 그룹 ID를 반환한다.

<br>

**Feature**

- 

<br>

---

### setpgid()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int setpgid(pid_t pid, pid_t pgid);
```

<br>

**Argument**

- `pid`: 프로세스 ID
  - 인자 값이 0이면 이 함수를 호출하는 현재 프로세스의 PID를 사용한다.

- `pgid`: 설정할 프로세스 그룹 ID
  - 인자 값이 0이면 `pid`로 지정한 프로세스가 PGID


<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 지정된 프로세스를 특정 프로세스 그룹으로 이동

<br>

**Feature**

- 

<br>

## 세션

### getsid()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
pid_t getsid(pid_t pid);
```

<br>

**Argument**

- `pid`: 자신이 속한 세션의 ID를 구하려는 프로세스 ID
  - 인자 값이 0이면 이 함수를 호출한 현재 프로세스


<br>

**Return**

- **성공**: 해당 프로세스의 세션 ID(SID)
- **실패**: -1

<br>

**Operation**

- 특정 프로세스가 속한 세션의 ID를 반환한다.

<br>

**Feature**

- 세션 ID는 세션 리더의 PID이다.

<br>

---

### setsid()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
pid_t setsid(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- **성공**: 새로운 세션 ID
- **실패**: -1

<br>

**Operation**

- 새로운 세션을 생성하고 호출한 프로세스를 세션 리더로 설정한다.

<br>

**Feature**

- **새로운 세션 리더 조건**
  - 호출 프로세스는 이미 다른 세션에 속하지 않아야 함
  - 프로세스 그룹 리더가 아니어야 함

- daemon 프로세스 생성 시 자주 사용

<br>

## 프로세스 실행 시간 측정

### struct tms

**헤더 파일**

```c
#include <sys/times.h>
```

<br>

**구조체 정의**

`tms` 구조체는 프로세스와 자식 프로세스의 CPU 사용 시간을 측정하는 데 사용된다.

```c
struct tms
{
    clock_t tms_utime;    // 사용자 모드에서 소모된 CPU 시간
    clock_t tms_stime;    // 커널 모드에서 소모된 CPU 시간
    clock_t tms_cutime;   // 종료된 자식 프로세스의 사용자 모드 시간
    clock_t tms_cstime;   // 종료된 자식 프로세스의 커널 모드 시간
};
```

- `tms_utime`(User Time)
  - 현재 프로세스가 **사용자 모드**에서 소모한 CPU 시간
  - **사용자 모드**: 일반적인 애플리케이션 코드 실행 시간
- `tms_stime`(System Time)
  - 현재 프로세스가 **커널 모드**에서 소모한 CPU 시간
  - **커널 모드**: 시스템 호출 처리나 I/O 작업과 같은 OS 레벨의 작업
- `tms_cutime`(Children User Time)
  - 자식 프로세스들이 **사용자 모드**에서 소모한 CPU 시간의 합
- `tms_cstime`(Children System Time)
  - 자식 프로세스들이 **커널 모드**에서 소모한 CPU 시간의 합

<br>

---

### times()

**헤더 파일**

```c
#include <sys/times.h>
```

<br>

**함수 원형**

```c
clock_t times(struct tms *buf);
```

<br>

**Argument**

- `buf`: 프로세스 및 자식 프로세스의 CPU 사용 시간을 저장할 `tms` 구조체의 주소

<br>

**Return**

- **성공**: 시스템 부팅 이후의 경과 시간(`closk_t` 타입, 단위는 `sysconf(_SC_CLK_TCK)`로 나눠야 초 단위로 변환 가능)
- **실패**: -1

<br>

**Operation**

- 호출 프로세스 및 종료된 자식 프로세스의 사용자/커널 모드에서의 CPU 사용 시간을 `tms` 구조체에 저장한다.

<br>

**Feature**

- 시간 단위는 시계의 클록 틱이다.
- 반환값과 `sysconf(_SC_CLK_TCK)`를 활용해 초 단위로 시스템 부팅 경과 시간을 계산할 수 있다.

<br>

---

### gettimeofday()

**헤더 파일**

```c
#include <sys/time.h>
#include <unistd.h>
```

<br>

**함수 원형**

```c
int gettimeofday(struct timeval *tv, struct timezone *tz);
```

<br>

**Argument**

- `tv`: 현재 시간(초 및 마이크로초(㎲))을 저장할 `timeval` 구조체의 주소
- `tz`: 현재 시간대 정보를 저장할 `timezone` 구조체의 주소
  - 인자 값은 대부분 NULL로 설정하고, 사용되지 않음


<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- UTC 기준으로 현재 시간을 `tv` 구조체에 저장한다.

<br>

**Feature**

- `timeval` 구조체는 초(`tv_sec`)와 마이크로초(`tv_usec`)로 시간 정보를 제공한다.
- `tz`는 과거에 사용되었지만 현재는 무시된다.

<br>

---

### struct timeval

**헤더 파일**

```c
#include <sys/times.h>
```

<br>

**구조체 정의**

`timeval` 구조체는 시간을 초 단위와 마이크로초 단위로 표현하는 데 사용된다. 이 구조체는 주로 고해상도 시간 측정 및 시간 간격 계산에 유용하다.

```c
struct timeval
{
    time_t tv_sec;        // 초 단위 시간
    suseconds_t tv_usec;  // 마이크로초(㎲)단위 시간
};
```

- `tv_sec`
  - 시간을 초 단위로 저장한다.
  - `time_t` 타입이며, 일반적으로 1970년 1월 1일 UTC를 기준으로 한 경과 시간을 나타낸다.(UNIX 타임스탬프)
- `tv_usec`
  - 시간을 마이크로초(1/1,000,000초) 단위로 저장하는 멤버이다.
  - `suseconds_t` 타입이며, 항상 0 이상 999,999 이하의 값을 가진다.
  - 초와 마이크로초를 합쳐서 고해상도 시간 표현이 가능하다.

<br>

## 환경 변수

### environ

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**정의**

```c
extern char **environ;
```

<br>

**기능**

- `environ`은 환경 변수 전체에 대한 포인터이다.
- `environ` 배열의 각 요소는 `key=value` 형식의 문자열 포인터이다.

<br>

**특징**

- `getenv()`를 대체하여 직접 환경 변수 접근이 가능하다.
- `setenv()`, `unsetenv()`, `putenv()`로 환경 변수를 수정하면 `environ`에 반영된다.



<br>

---

### main() 함수 인자

**정의**

```c
int main(int argc, char *argv[], char *envp[]);
```

- `argc`
  - 커맨드라인 인수의 개수
  - 최소 값은 1(`argv[0]`)
- `argv`
  - 커맨드라인 인수 배열
  - `argv[0]`: 실행된 프로그램의 경로
  - `argv[argc]`: NULL
- `envp`
  - 환경 변수 리스트
  - `envp`의 각 요소는 `key=value` 형식의 문자열
  - `envp`는 `environ` 전역 변수와 같은 데이터를 가리킨다.

<br>

---

### getenv()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
char *getenv(const char *name);
```

<br>

**Argument**

- `name`: 가져올 환경 변수의 이름

<br>

**Return**

- **성공**: 해당 환경 변수의 값이 담겨있는 주소(`char *` )
- **실패**: NULL

<br>

**Operation**

- 환경 변수의 값을 가져온다.

<br>

**Feature**

- 반환된 값은 환경 변수 값을 직접 가리키므로 수정 시 주의가 필요하다.

<br>

---

### putenv()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
int putenv(char *string);
```

<br>

**Argument**

- `string`: `key=value` 형식의 문자열

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 기존의 환경 변수 값은 변경하고, 새로운 환경 변수는 `malloc()`으로 메모리를 할당해 추가한다.

<br>

**Feature**

- 입력 문자열은 환경 변수 리스트에 직접 추가되므로 문자열은 프로그램 종료까지 유효해야 한다.

<br>

---

### setenv()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
int setenv(const char *name, const char *value, int overwrite);
```

<br>

**Argument**

- `name`: 설정할 환경 변수의 이름
- `value`: 설정할 값
- `overwrite`
  - 0: 덮어쓰기를 하지 않음(기존 환경 변수의 값이 `value` 값으로 변경되지 않음)
  - 0이 아닌 값: 덮어쓰기(기존 환경 변수의 값이 `value` 값으로 변경됨)


<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 환경 변수 값을 설정하거나 변경한다.

<br>

**Feature**

- 기존 값의 덮어쓰기 여부를 `overwrite`로 제어한다.

<br>

---

### unsetenv()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
int unsetenv(const char *name);
```

<br>

**Argument**

- `name`: 제거할 환경 변수의 이름

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 환경 변수를 제거한다.

<br>

**Feature**

- 존재하지 않는 변수의 제거를 요청하면 실패하지 않고 0을 반환한다.

<br>

## 프로세스 실행

### system()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
int system(const char *command);
```

<br>

**Argument**

- `command`: 실행할 Shell 명령 문자열
  - 인자 값이 NULL일 경우 Shell이 사용 가능한지 확인한다.


<br>

**Return**

- **성공**: 명령 실행 후 종료 상태 코드(`int`)
- **실패**
  - `command`가 NULL이 아닌 경우: -1
  - `command`가 NULL인 경우
    - 0: Shell이 사용 불가
    - 0이 아닌 값: Shell 사용 가능


<br>

**Operation**

- 주어진 명령 문자열을 Shell에서 실행한다.
- 내부적으로  `/bin/sh`를 호출하고 새 프로세스를 생성해 인자로 받은 명령어를 실행한다.

<br>

**Feature**

- 시스템 명령 실행에 간편하지만 보안상 취약점이 있을 수 있음(e.g. 명령어 주입 공격 가능)
- 명령어 실행 중 부모 프로세스는 대기 상태

<br>

## 프로세스 생성

### fork()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
pid_t fork(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- **성공**
  - **부모 프로세스**에는 자식 프로세스의 PID 반환
  - **자식 프로세스**에는 0 반환

- **실패**: -1

<br>

**Operation**

- 현재 프로세스를 복제하여 자식 프로세스를 생성한다.

<br>

**Feature**

- 부모와 자식은 별도 메모리 공간을 가짐(Copy-On-Write 방식)
- 자식 프로세스는 부모 프로세스의 복사본으로 시작

<br>

---

### vfork()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
pid_t vfork(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- **성공**
  - **부모 프로세스**에는 자식 프로세스의 PID 반환
  - **자식 프로세스**에는 0 반환

- **실패**: -1

<br>

**Operation**

- `fork()`처럼 새로운 프로세스를 생성하지만 자식 프로세스가 부모 프로세스의 주소 공간을 공유한다.(새로운 주소 공간 생성 안 함)
- 자식이 `exec()` 또는 `_exit()` 호출 전까지 부모 프로세스는 대기

<br>

**Feature**

- 메모리 사용을 최소화하나 동기화 문제가 있을 수 있다.
- 버그 발생의 우려가 있어 POSIX에서 권장하지 않는다.

<br>

## 프로세스 종료

### exit()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
void exit(int status);
```

<br>

**Argument**

- `status`: 프로세스 종료 상태 코드
  - 0: 성공
  - 0이 아닌 값: 실패


<br>

**Return**

- N/A(프로세스 종료)

<br>

**Operation**

- 프로세스를 종료하며, 열린 파일 및 스트림을 닫고, 등록된 정리 함수(e.g. `atexit()`)를 호출한다.

<br>

**Feature**

- 일반적인 종료 루틴이며 `main()`에서 `return status;`와 동일한 동작이다.

<br>

---

### atexit()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
int atexit(void (*func)(void))
```

<br>

**Argument**

- `func`: 프로세스 종료 시 호출될 함수의 포인터

<br>

**Return**

- **성공**: 0
- **실패**: 0이 아닌 값

<br>

**Operation**

- 프로세스 종료 시 호출될 정리 함수를 등록한다.

<br>

**Feature**

- 최대 호출 횟수는 구현에 따라 다르며, 등록된 순서의 반대로 실행된다.(스택 구조)

<br>

---

### on_exit()

**헤더 파일**

```c
#include <stdlib.h>
```

<br>

**함수 원형**

```c
int on_exit(void (*func)(int, void *), void *arg);
```

<br>

**Argument**

- `func`: 종료 시 호출될 함수 포인터(상태 코드와 사용자 정의 데이터 인자로 받음)
- `arg`: `func`에 전달될 사용자 정의 데이터

<br>

**Return**

- **성공**: 0
- **실패**: 0이 아닌 값

<br>

**Operation**

- 프로세스 종료 시 호출될 함수와 사용자 데이터를 등록한다.

<br>

**Feature**

- 종료 상태와 추가 데이터를 전달할 수 있어 `atexit()`보다 유연하다.

<br>

---

### _exit()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
void _exit(int status);
```

<br>

**Argument**

- `status`: 프로세스 종료 상태 코드

<br>

**Return**

- N/A(프로세스 즉시 종료)

<br>

**Operation**

- 커널로 직접 종료 신호를 보내고, 열린 파일 스트림은 닫지 않는다.
- `exit()`와 달리 `atexit()`으로 등록된 함수가 호출되지 않는다.

<br>

**Feature**

- 비정상 종료나 `fork()`로 생성된 자식 프로세스에서 사용된다.
- 정리 작업이 필요 없는 빠른 종료를 위해 사용한다.

<br>

## exec 함수군

- 새로운 프로그램을 실행하기 위해 호출된다.

- `exec` 함수군을 실행하면 호출 프로세스의 Code, Data, Stack 등의 영역이 새로운 프로그램으로 교체되며 기존 프로세스는 종료된다.

- 호출 성공 시 반환하지 않고 실패하면 -1을 반환하며, `errno`가 설정된다.

- 헤더 파일

  ```c
  #include <unistd.h>
  ```

<br>

### execl()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int execl(const char *path, const char *arg0, ..., NULL);
```

<br>

**Argument**

- `path`: 실행할 프로그램의 경로
- `arg0, ...`: 프로그램에 전달할 인자들. 마지막 인자는 반드시 NULL

<br>

**Return**

- **성공**: 반환하지 않음(새 프로그램으로 교체)
- **실패**: -1

<br>

**Operation**

- 기존 프로세스의 실행이 중단되고 `path`에 지정된 프로그램으로 교체되어 실행된다.

<br>

**Feature**

- 인자를 가변 인자 리스트로 전달한다.
- 환경 변수는 기존 환경을 사용한다.

<br>

---

### execlp()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int execlp(const char *file, const char *arg0, ..., NULL);
```

<br>

**Argument**

- `file`: 실행할 프로그램의 이름
  - `PATH` 환경 변수를 이용해 실행 파일을 검색한다.

- `arg0, ...`: 프로그램에 전달할 인자들. 마지막 인자는 반드시 NULL

<br>

**Return**

- **성공**: 반환하지 않음(새 프로그램으로 교체)
- **실패**: -1

<br>

**Operation**

- 기존 프로세스의 실행이 중단되고 `path`에 지정된 프로그램으로 교체되어 실행된다.

<br>

**Feature**

- `PATH` 환경 변수를 이용해 실행 파일을 검색한다.

<br>

---

### execle()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int execle(const char *path, const char *arg0, ..., NULL, char *const envp[]);
```

<br>

**Argument**

- `path`: 실행할 프로그램의 경로
- `arg0, ...`: 프로그램에 전달할 인자들. 마지막 인자는 반드시 NULL
- `envp`: 새로운 프로그램에 전달할 환경 변수 배열

<br>

**Return**

- **성공**: 반환하지 않음(새 프로그램으로 교체)
- **실패**: -1

<br>

**Operation**

- 기존 프로세스의 실행이 중단되고 `path`에 지정된 프로그램으로 교체되어 실행된다.

<br>

**Feature**

- 환경 변수를 호출 시 직접 전달 가능

<br>

---

### execv()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int execv(const char *path, char *const argv[]);
```

<br>

**Argument**

- `path`: 실행할 프로그램의 경로
- `argv`: 인자의 배열
  - `argv[0]`: 프로그램 이름
  - 마지막 요소는 NULL


<br>

**Return**

- **성공**: 반환하지 않음(새 프로그램으로 교체)
- **실패**: -1

<br>

**Operation**

- 기존 프로세스의 실행이 중단되고 `path`에 지정된 프로그램으로 교체되어 실행된다.

<br>

**Feature**

- 인자를 배열로 전달한다.

<br>

---

### execvp()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int execvp(const char *file, char *const argv[]);
```

<br>

**Argument**

- `file`: 실행할 프로그램의 이름
  - `PATH` 환경 변수를 이용해 실행 파일을 검색한다.


<br>

**Return**

- **성공**: 반환하지 않음(새 프로그램으로 교체)
- **실패**: -1

<br>

**Operation**

- 기존 프로세스의 실행이 중단되고 `path`에 지정된 프로그램으로 교체되어 실행된다.

<br>

**Feature**

- `PATH` 환경 변수를 이용해 실행 파일을 검색한다.
- 인자를 배열로 전달한다.

<br>

---

### execvpe()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int execvpe(const char *file, char *const argv[], char *const envp[]);
```

<br>

**Argument**

- `file`: 실행할 프로그램의 이름
  - `PATH` 환경 변수를 이용해 실행 파일을 검색한다.

- `argv`: 인자의 배열
- `envp`: 새로운 환경 변수 배열

<br>

**Return**

- **성공**: 반환하지 않음(새 프로그램으로 교체)
- **실패**: -1

<br>

**Operation**

- 기존 프로세스의 실행이 중단되고 `path`에 지정된 프로그램으로 교체되어 실행된다.

<br>

**Feature**

- `PATH` 환경 변수를 이용해 실행 파일을 검색한다.
- 인자와 환경 변수 배열을 모두 전달한다.

<br>

## wait 함수군

`wait()`, `waitpid()`, `waitid()` 함수는 자식 프로세스의 상태 변화를 대기하거나 확인하기 위해 사용된다.

<br>

### wait()

**헤더 파일**

```c
#include <sys/types.h>
#include <sys/wait.h>
```

<br>

**함수 원형**

```c
pid_t wait(int *wstatus);
```

<br>

**Argument**

- `wstatus`: 자식 프로세스의 종료 상태를 저장할 주소

<br>

**Return**

- **성공**: 종료된 자식 프로세스의 PID
- **실패**: -1
  - 살아있는 자식 프로세스가 하나도 없다는 의미


<br>

**Operation**

- 자식 프로세스가 종료될 때까지 대기한다.

<br>

**Feature**

- 종료 상태는 매크로(`WIFEXITED`, `WEXITSTATUS`)로 확인 능

<br>

---

### waitpid()

**헤더 파일**

```c
#include <sys/types.h>
#include <sys/wait.h>
```

<br>

**함수 원형**

```c
pid_t waitpid(pid_t pid, int *wstatus, int options);
```

<br>

**Argument**

- `pid`: 대기할 자식 프로세스의 PID
  - -1: 모든 자식 프로세스
  - 1 이상: 특정 자식 프로세스
  - 0: 같은 프로세스 그룹의 모든 자식
  - -2 이하: 특정 프로세스 그룹의 자식

- `wstatus`: 종료 상태를 저장할 주소
- `options`: 비차단 대기 옵션(`WNOHANG`) 등
  - 대기할 자식 프로세스가 없으면 즉시 0을 반환


<br>

**Return**

- **성공**: 종료 상태를 확인한 **자식 프로세스의 PID**
- **실패**: -1

<br>

**Operation**

- 특정 PID의 자식 프로세스가 종료하기를 기다린다.
- 자식 프로세스의 종료 상태값을 `wstatus`에 저장하고 `options`의 조건에 따라 반환한다.

<br>

**Feature**

- 

<br>

---

### waitid()

**헤더 파일**

```c
#include <sys/types.h>
#include <sys/wait.h>
```

<br>

**함수 원형**

```c
int waitid(idtype_t idtype, id_t id, siginfo_t *infop, int options);
```

<br>

**Argument**

- `idtype`: 프로세스 식별 유형(`P_PID`, `P_PGID`, `P_ALL` 등)
- `id`: 대기할 프로세스 ID 또는 그룹 ID
- `infop`: 프로세스 상태 정보를 저장할 구조체 주소
- `options`: `waitid()` 함수의 리턴 조건

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 특정 자식 프로세스가 종료하기를 기다린다.

<br>

**Feature**

- POSIX 표준으로 리눅스에서 제공, UNIX 시스템에서는 제공하지 않을 수도 있음

<br><br>

# Pipe

## 익명 파이프

### popen()

**헤더 파일**

````c
#include <stdio.h>
````

<br>

**함수 원형**

```c
FILE *popen(const char *command, const char *mode);
```

<br>

**Argument**

- `command`: 실행할 Shell 명령어 문자열
- `mode`: "r" 또는 "w"
  - 부모 프로세스가 파이프를 통해 데이터를 **읽을지**("r"), **쓸지**("w")를 결정
  - `"r"`
    - **부모 프로세스가 자식 프로세스의 출력을 읽기** 위해 사용한다.
    - 자식 프로세스의 **표준 출력(stdout)**이 부모 프로세스의 파이프 입력으로 연결된다.
    - 즉, 부모는 자식 프로세스가 출력한 데이터를 읽는다.
  - `"w"`
    - **부모 프로세스가 자식 프로세스의 입력으로 데이터를 쓰기** 위해 사용한다.
    - 부모 프로세스의 파이프 출력이 자식 프로세스의 **표준 입력(stdin)**으로 연결된다.
    - 즉, 부모는 데이터를 자식 프로세스의 입력으로 보낸다.

<br>

**Return**

- **성공**: 프로세스와의 통신에 사용할 파일 스트림 포인터(`FILE *`)
  - 파일 입출력 함수에서 해당 파일 포인터(`FILE *`)를 사용하면 파이프를 읽거나 쓸 수 있음
- **실패**: NULL

<br>

**Operation**

- 명령어를 실행하고, 해당 프로세스와의 **파이프(stream)**를 생성하고 설정한다.
- 내부적으로 `fork()` 함수를 실행해 자식 프로세스를 생성하고 `command`에서 지정한 명령을 `exec()` 함수로 실행해 자식 프로세스가 수행하도록 함

<br>

**Feature**

- 자식 프로세스의 출력 또는 입력과 상호작용 가능
- 자식 프로세스를 종료하려면 반드시 `pclose()`를 호출해야 한다.

<br>

---

### pclose()

**헤더 파일**

```c
#include <stdio.h>
```

<br>

**함수 원형**

```c
int pclose(FILE *stream);
```

<br>

**Argument**

- `stream`: `popen()`으로 생성된 파일 포인터

<br>

**Return**

- **성공**: 자식 프로세스의 종료 상태값
- **실패**: -1

<br>

**Operation**

- 파일 입출력 함수처럼 Argument로 지정한 파이프를 닫음
- 관련된 `waitpid()` 함수를 수행하며 자식 프로세스들이 종료하기를 기다렸다가 리턴

<br>

**Feature**

- `popen()`으로 생성된 파일 스트림에 반드시 사용해야 리소스 누수를 방지

<br>

---

### pipe()

**헤더 파일**

```c
#include <unistd.h>
```

<br>

**함수 원형**

```c
int pipe(int pipefd[2]);
```

<br>

**Argument**

- `pipefd[2]`: 파이프로 사용할 파일 기술자(fd) 2개
  - 인자로 크기가 2인 `int` 타입 배열을 받음

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 하나의 파이프를 생성함
- 인자로 받은 `int`타입 배열에 File Descriptor 2개를 저장
- 인자로 받은 `int`타입 배열의 **0번 인덱스(`pipefd[0]`)는 읽기 전용**으로 열고 **1번 인덱스(`pipefd[1]`)는 쓰기 전용**으로 실행
- `fork()` 함수를 수행해 자식 프로세스를 생성하면 `pipe()` 함수에서 생성한 fd도 자식 프로세스로 복사

<br>

**Feature**

- 양방향 통신이 필요하면 두 개의 파이프 생성 필요

<br>

## 이름 있는 파이프

### mknod()

**헤더 파일**

```c
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
```

<br>

**함수 원형**

```c
int mknod(const char *pathname, mode_t mode, dev_t dev);
```

<br>

**Argument**

- `pathname`: 특수 파일을 생성할 경로
- `mode`: 특수 파일의 종류와 접근 권한
  - **<특수 파일의 종류>**
    - **S_IFREG**: 일반 파일
    - **S_IFIFO**: FIFO 특수 파일(네임드 파이프)
    - **S_IFCHR**: 문자 장치 특수 파일
    - **S_IFBLK**: 블록 장치 특수 파일
    - **S_IFSOCK**: UNIX 도메인 소켓 파일
  - **<접근 권한>**
    - 0000~0777
- `dev`: 블록/문자 장치 설정값
  - 일반 파일과 FIFO에서는 0


<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 일반 파일, FIFO, 또는 장치 파일을 생성한다.

<br>

**Feature**

- FIFO 생성 시 권장되는 `mkfifo()`에 비해 더 Low Level의 함수이다.
- 장치 파일을 생성할 때 사용된다.

<br>

**Example**

```c
mknod("HAN-FIFO", S_IFIFO | 0644, 0);
```

<br>

---

### mkfifo()

**헤더 파일**

```c
#include <sys/types.h>
#include <sys/stat.h>
```

<br>

**함수 원형**

```c
int mkfifo(const char *pathname, mode_t mode);
```

<br>

**Argument**

- `pathname`: 생성할 FIFO 파일의 경로
- `mode`: FIFO의 접근 권한
  - **<접근 권한>**
    - 0000~0777

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- `pathname`으로 지정한 경로에 접근 권한을 지정해 FIFO(네임드 파이프) 파일 생성

<br>

**Feature**

- FIFO는 두 프로세스 간의 통신에 사용된다.
- 파이프와 달리 이름을 가지며, 파일 시스템에 나타난다.

<br>

<br>

# Thread

## Thread 생성

### pthread_create()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_create(pthread_t *thread, pthread_attr *attr, void *(*start_routine)(void *), void *arg);
```

<br>

**Argument**

- `thread`: 쓰레드의 식별자를 저장하는 변수의 포인터
- `attr`: 쓰레드 속성
  - NULL: 기본 속성
  - 일반적으로 NULL을 사용

- `start_routine`: 쓰레드가 수행할 함수의 포인터
- `arg`: 함수에 전달할 인자

<br>

**Return**

- **성공**: 0
- **실패**: 오류번호(EINVAL, EAGAIN 등)

<br>

**Operation**

- 쓰레드를 생성하고 `start_routine`에 지정된 함수를 수행한다.
- 함수 실행 성공 시 쓰레드의 식별자를 `thread`에 담고 오류 발생 시 `thread`를 정의하지 않음

<br>

**Feature**

- 쓰레드는 동일한 메모리 공간에서 실행된다.(전역 변수를 공유)

<br>

---

### pthread_join()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_join(pthread_t thread, void **value_ptr);
```

<br>

**Argument**

- `thread`: 쓰레드의 식별자를 저장하는 `pthread_t` 타입 변수
- `value_ptr`: 쓰레드에 할당된 함수 실행 후 쓰레드의 반환 값을 저장할 포인터

<br>

**Return**

- **성공**: 0
- **실패**: 오류번호

<br>

**Operation**

- 지정된 쓰레드가 종료될 때까지 기다리며 이미 종료된 경우에는 즉시 반환한다.

<br>

**Feature**

- 쓰레드가 완료될 때까지 호출한 쓰레드는 블록(block)됨

<br>

## Mutex

### pthread_mutex_init()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_mutex_init(pthread_mutex_t *mutex, const pthread_mutexattr_t *attr);
```

<br>

**Argument**

- `mutex`: 초기화 할 mutex 객체의 포인터

- `attr`: mutex의 속성을 지정하는 구조체에 대한 포인터

  - <속성>

    - **NULL**: 기본 속성으로 초기화

    - `PTHREAD_MUTEX_NORMAL`: 기본 뮤텍스. 같은 쓰레드가 두 번 이상 잠그면 데드락이 발생
    - `PTHREAD_MUTEX_RECURSIVE`: 동일 쓰레드가 여러 번 잠글 수 있음
    - `PTHREAD_MUTEX_ERRORCHECK`: 잠금 중복 시 오류를 반환
    - `PTHREAD_MUTEX_DEFAULT`: 구현 의존 기본 동작

<br>

**Return**

- **성공**: 0
- **실패**: 오류번호
  - `EINVAL`: `attr`이 잘못되었거나 뮤텍스 유형이 올바르지 않음
  - `ENOMEM`: 뮤텍스를 초기화하는 데 필요한 리소스 부족
  - `EPERM`: 호출 쓰레드에 초기화 권한이 없음

<br>

**Operation**

- 주어진 mutex 객체(`mutex`)를 초기화하여 사용할 준비를 한다.
- mutex를 초기화한 후, 이를 동기화에 사용한다.

<br>

**Feature**

- **동기화 객체의 초기화**
  - 멀티쓰레드 환경에서 공유 데이터의 동시 접근을 제어하기 위해 사용된다.
- **기본 속성**
  - `attr`이 NULL이면 기본 속성으로 초기화된다.
  - 기본적으로 mutex는 `PTHREAD_MUTEX_NORMAL`로 설정된다.
- **동적 할당과 정적 초기화**
  - 동적 초기화: `pthread_mutex_init()`으로 mutex 초기화
  - 정적 초기화: `PTHREAD_MUTEX_INITIALIZER`를 사용해 초기화
- **쓰레드 안정성**
  - 여러 쓰레드가 동일한 mutex를 초기화하려고 하면 동작이 정의되지 않는다. 반드시 하나의 쓰레드에서만 초기화해야 한다.

<br>

---

### pthread_mutex_destroy()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_mutex_destroy(pthread_mutex_t *mutex);
```

<br>

**Argument**

- `mutex`: 해제하려는 mutex 객체의 포인터

<br>

**Return**

- **성공**: 0
- **실패**: 오류번호

<br>

**Operation**

- `mutex`로 지정된 mutex를 파괴하고 관련 리소스를 해제한다.

<br>

#### Feature

- mutex가 Lock 상태이면 호출 시 동작이 정의되지 않는다.

<br>

---

### pthread_mutex_lock()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_mutex_lock(pthread_mutex_t *mutex);
```

<br>

**Argument**

- `mutex`: Lock 상태로 만들 mutex 객체의 포인터

<br>

**Return**

- **성공**: 0
- **실패**: 오류 번호

<br>

**Operation**

- `mutex`로 지정된 mutex를 Lock 상태로 만든다.

<br>

#### Feature

- mutex가 이미 Lock 상태라면 호출한 쓰레드는 대기한다.

<br>

---

### pthread_mutex_unlock()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_mutex_unlock(pthread_mutex_t *mutex);
```

<br>

**Argument**

- `mutex`: 잠금을 해제할 mutex 객체의 포인터

<br>

**Return**

- **성공**: 0
- **실패**: 오류 번호

<br>

**Operation**

- `mutex`로 지정된 mutex를 Unlock 상태로 만든다.

<br>

**Feature**

- Unlock 상태가 아닌 mutex를 해제하면 정의되지 않는다.

<br>

## Thread 동기화

### pthread_cond_init()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_cond_init(pthread_cond_t *cond, const pthread_condattr_t *attr);
```

<br>

**Argument**

- `cond`: 초기화할 컨디셔널 변수의 포인터
- `attr`: 컨디셔널 변수 속성을 설정할 포인터
  - NULL: 기본 속성 사용


<br>

**Return**

- **성공**: 0
- **실패**: 오류 번호

<br>

**Operation**

- 컨디셔널 변수를 초기화한다.

<br>

**Feature**

- 컨디셔널 변수는 반드시 초기화 후 사용한다.

<br>

---

### pthread_cond_destroy()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_cond_destroy(pthread_cond_t *cond);
```

<br>

**Argument**

- `cond`: 해제할 컨디셔널 변수의 포인터

<br>

**Return**

- **성공**: 0
- **실패**: 오류 번호

<br>

**Operation**

- 컨디셔널 변수를 파괴하고 관련 리소스를 해제한다.

<br>

**Feature**

- 컨디셔널 변수를 사용 중이면 동작이 정의되지 않는다.

<br>

---

### pthread_cond_wait()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_cond_wait(pthread_cond_t *cond, pthread_mutex_t *mutex);
```

<br>

**Argument**

- `cond`: 대기할 컨디셔널 변수의 포인터
- `mutex`: 컨디셔널 변수를 보호하는데 사용할 mutex 객체의 포인터

<br>

**Return**

- **성공**: 0
- **실패**: 오류 번호

<br>

**Operation**

- 컨디셔널 변수 `cond`가 참(true)이 될 때까지 대기한다.

<br>

**Feature**

- mutex를 잠금 해제한 후 대기하며, 신호를 받으면 다시 잠근다.

<br>

---

### pthread_cond_signal()

**헤더 파일**

```c
#include <pthread.h>
```

<br>

**함수 원형**

```c
int pthread_cond_signal(pthread_cond_t *cond);
```

<br>

**Argument**

- `cond`: 신호를 보낼 컨디셔널 변수의 포인터

<br>

**Return**

- **성공**: 0
- **실패**: 오류 번호

<br>

**Operation**

- 컨디셔널 변수의 대기 중인 쓰레드 하나를 깨운다.

<br>

**Feature**

- 대기 중인 쓰레드가 없으면 무시한다.

<br>

<br>

# Socket Interface

## IP 주소와 포트(Port) 번호

### struct hostent

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**구조체 정의**

네트워크 호스트 정보를 나타내는데 사용된다.

```c
struct hostent
{
    char *h_name;        // 호스트명
    char **h_aliases;    // 호스트를 가리키는 다른 이름들 리스트(별칭 리스트)
    int h_addrtype;      // 호스트 주소의 유형
    int h_length;        // 주소 길이
    char **h_add_list;   // 해당 호스트의 주소 목록(IP 주소 배열)
};
```

- `h_name`: 호스트명(e.g. `www.example.com`)
- `h_aliases`: 호스트를 가리키는 다른 이름들 리스트(별칭 리스트)
  - NULL로 종료된 배열(배열의 마지막 요소 값이 NULL)이다.

- `h_addrtype`: 호스트 주소의 유형
  - 일반적으로 AF_INET(IPv4) 또는 AF_INET6(IPv6)

- `h_length`: 주소 길이(바이트 단위)
  - IPv4의 주소 길이: 4
  - IPv6의 주소 길이: 16

- `h_addr_list`: 해당 호스트의 주소 목록(IP 주소 배열)
  - 배열 요소는 NBO로 저장된다.
  - NULL로 종료된 배열(배열의 마지막 요소 값이 NULL)이다.


<br>

#### 'NULL로 종료된 배열'의 의미

- 배열의 마지막 요소가 NULL 값을 가진다는 의미
- 배열의 끝을 나타내기 위해 흔히 사용되는 관례

<br>

---

### gethostent()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
struct hostent *gethostent(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- **성공**: `struct hostent *` 타입의 호스트 정보를 담은 포인터
- **실패**: NULL(데이터베이스의 끝을 만날 경우)

<br>

**Operation**

- 호스트명과 IP 주소를 읽어서 `hostent` 구조체에 저장하고 `hostent` 구조체의 주소를 반환한다.
- `/etc/hosts` 파일 또는 네트워크 호스트 데이터베이스에서 다음 차례의 항목을 읽는다.
- 반복 호출 시 데이터베이스의 다음 엔트리를 반환한다.

<br>

**Feature**

- 호스트 데이터베이스를 순차적으로 읽을 때 사용된다.
- 호출 전에 `sethostent()`로 데이터베이스를 열어야 하며, 사용 후 `endhostent()`로 닫아야 한다.

<br>

---

### sethostent()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
void sethostent(int stayopen);
```

<br>

**Argument**

- `stayopen`: IP 주소 데이터베이스를 열어둘 것인지 여부를 나타내는 값
  - 0: 호출 후 데이터베이스를 닫음
  - 0이 아닌 값: 데이터베이스가 열린 채로 유지

<br>

**Return**

- N/A

<br>

**Operation**

- 호스트 데이터베이스의 읽기 위치를 초기화하거나 다시 연다.

<br>

**Feature**

- `gethostent()` 함수를 처음 사용하기 전에 반드시 `sethostent()` 함수를 호출 해야 한다.
- 데이터를 읽기 위한 준비 작업을 수행한다.

<br>

---

### endhostent()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
void endhostent(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- N/A

<br>

**Operation**

- 호스트 데이터베이스 연결을 닫고 리소스를 해제한다.

<br>

**Feature**

- `gethostent()`를 사용한 후 반드시 호출해야 한다.

<br>

---

### gethostbyname()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
struct hostent *gethostbyname(const char *name);
```

<br>

**Argument**

- `name`: 검색하려는 호스트명
  - e.g. `www.google.com`

<br>

**Return**

- **성공**: `struct hostent *`타입의 호스트 정보를 담은 포인터
- **실패**: NULL

<br>

**Operation**

- 호스트명을 DB에서 검색해 `hostent` 구조체에 저장하고 그 주소를 반환한다.
  - 지정된 호스트 이름에 대한 IP 주소 정보를 반환한다.

<br>

**Feature**

- IPv4에서만 작동한다.

<br>

---

### gethostbyaddr()

**헤더 파일**

```c
#include <netdb.h>
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
struct hostent *gethostbyaddr(const void *addr, socklen_t len, int type);
```

<br>

**Argument**

- `addr`: IP 주소를 담은 포인터(NBO)
- `len`: `addr` 길이(바이트 단위)
  - IPv4: 4
  - IPv6: 16

- `type`: IP 주소 형식(AF_INET 또는 AF_INET6)

<br>

**Return**

- **성공**: `struct hostent *`타입의 호스트 정보를 담은 포인터
- **실패**: NULL

<br>

**Operation**

- IP 주소로 호스트 데이터베이스를 조회하고, `hostent` 구조체에 정보를 반환함으로써 호스트 이름 및 기타 정보를 가져온다.

<br>

#### Feature

- `gethostbyname()`과 유사하며, IPv4만 지원한다.

<br>

---

### struct servent

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**구조체 정의**

`servent` 구조체와 관련 함수들은 서비스 데이터베이스(주로 `/etc/services`)에서 정보를 조회하는 데 사용된다. 이 데이터베이스는 서비스 이름, 포트 번호, 프로토콜 정보를 제공한다.

```c
struct servent
{
    char *s_name;        // 포트명(서비스의 공식 이름)
    char **s_aliases;    // 서비스의 별칭 이름 목록(NULL로 종료)
    int s_port;          // 포트 번호(NBO)
    char *s_proto;       // 서비스가 사용하는 프로토콜(일반적으로 "tcp" 또는 "udp")
}
```

- `s_name`: 포트명(서비스의 공식 이름)
- `s_aliases`: 해당 서비스를 가리키는 다른 이름들(별칭 리스트)
  - NULL로 종료

- `s_port`: 포트 번호(NBO)
- `s_proto`: 서비스가 사용하는 프로토콜의 종류(e.g. "tcp", "udp")

<br>

### getservent()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
struct servent *getservent(void);
```

<br>

**Argument**

- N/A

<br>

**Return**

- **성공**: `struct servent *`타입의 서비스 정보를 담은 포인터
- **실패**: NULL(더 이상 읽을 데이터가 없을 경우)

<br>

**Operation**

- 서비스 데이터베이스의 다음 항목을 읽어와 `servent` 구조체에 저장하고 그 주소를 반환한다.
- `/etc/services` 또는 다른 서비스 데이터베이스에서 순차적으로 읽는다.

<br>

#### Feature

- 호출 전 `setservent()`를 사용하여 데이터베이스를 열어야 하며, 사용 후 `endservent()`를 호출하여 닫아야 한다.

<br>

---

### setservent()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
void setservent(int stayopen);
```

<br>

**Argument**

- `stayopen`: 포트 정보 데이터베이스를 열어둘 것인지 여부를 나타내는 값
  - 0: 호출 후 데이터베이스를 닫음
  - 0이 아닌 값: 데이터베이스를 계속 열어둔다.

<br>

**Return**

- N/A

<br>

**Operation**

- 서비스 데이터베이스의 읽기 위치를 초기화하거나 다시 연다.

<br>

**Feature**

- `setservent()` 함수는 `getservent()` 함수를 처음 사용하기 전에 호출해야 한다.

<br>

---

### endservent()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
void endservent(void);
```

<br>

#### Argument

- N/A

<br>

#### Return

- N/A

<br>

#### Operation

- 열려 있는 서비스 데이터베이스를 닫고 리소스를 해제한다.

<br>

#### Feature

- 데이터베이스를 더 이상 사용하지 않을 때 리소스를 해제하기 위해 호출한다.

<br>

---

### getservbyname()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
struct servent *getservbyname(const char *name, const char *proto);
```

<br>

**Argument**

- `name`: 검색할 포트명(서비스 이름)
  - e.g. "http"

- `proto`: 프로토콜 이름("tcp" 또는 "udp")
  - 인자 값이 NULL이면 모든 프로토콜에서 검색


<br>

**Return**

- **성공**: `struct servent *`타입의 서비스 정보를 담은 포인터
- **실패**: NULL

<br>

**Operation**

- 포트명(서비스 이름)과 프로토콜 이름으로 서비스 데이터베이스를 검색하고 해당 항목을 `servent` 구조체에 저장하고 그 주소를 반환한다.
  - 지정된 이름과 프로토콜에 해당하는 서비스 정보를 반환한다.

<br>

#### Feature

- 

<br>

---

### getservbyport()

**헤더 파일**

```c
#include <netdb.h>
```

<br>

**함수 원형**

```c
struct servent *getservbyport(int port, char *proto);
```

<br>

**Argument**

- `port`: 검색할 포트 번호(NBO)
- `proto`: 프로토콜 이름("tcp" 또는 "udp")
  - NULL이면 모든 프로토콜에서 검색


<br>

**Return**

- **성공**: `struct servent *`타입의 서비스 정보를 담은 포인터
- **실패**: NULL

<br>

**Operation**

- 포트 번호와 프로토콜 이름으로 서비스 데이터베이스를 검색하고 해당 항목을 `servent` 구조체에 저장하고 그 주소를 반환한다.
  - 주어진 포트 번호와 프로토콜에 해당하는 서비스 정보를 반환한다.

<br>

#### Feature

- 

<br>

## 소켓 주소 구조체

### struct sockaddr_un

**헤더 파일**

```c
#include <sys/un.h>
```



<br>

**구조체 정의**

```c
struct sockaddr_un
{
    sa_family_t sun_family;    // 주소 체계(AF_UNIX)
    char sun_path[108];        // 경로 이름
};
```

- `sun_family`: 주소 체계를 나타내는 값.
  - 항상 AF_UNIX로 설정된다.
  - `sa_family_t`는 `unsigned short`로 정의된 경우가 많다.
- `sun_path`
  - UNIX 도메인 소켓 경로를 저장하는 문자열
  - 이 경로는 파일 시스템 내에서 소켓 파일을 식별하는 데 사용된다.
  - 최대 크기는 108바이트이며, 경로는 NULL로 종료되어야 한다.

<br>

**특징**

- UNIX 도메인 소켓은 네트워크를 통해 통신하지 않고, 동일 시스템 내에서 프로세스 간 통신(IPC)를 지원한다.
- `sun_path`는 실제 파일 시스템에 생성되는 소켓 파일 경로이다.

<br>

---

### struct sockaddr_in

**헤더 파일**

```c
#include <netinet/in.h>
#include <arpa/inet.h>
```

<br>

**구조체 정의**

```c
struct sockaddr_in
{
    sa_family_t sin_family;        // 주소 체계(AF_INET)
    in_port_t sin_port;            // 16비트 포트 번호(NBO)
    struct in_addr sin_addr;       // 32비트 IP 주소
    unsigned char sin_zero[8];     // 패딩(사용되지 않음, 0으로 채움)
};
```

- `sin_family`: 주소 체계

  - 항상 AF_INET으로 설정된다.

- `sin_port`: 포트 번호

  - `htons()` 함수로 호스트 바이트 순서(HBO)를 네트워크 바이트 순서(NBO)로 변환하여 설정해야 한다.

- `sin_addr`: IPv4 주소

  - ```c
    struct in_addr
    {
        uint32_t s_addr; // 네트워크 바이트 순서(NBO)의 IPv4 주소
    };
    ```

- `sin_zero`: 구조체 크기를 고정하기 위한 패딩(padding)

  - 항상 0으로 설정해야 하며 사용되지 않는다.

<br>

**특징**

- IPv4 기반 소켓 통신을 설정하기 위한 구조체이다.
- 네트워크 주소(`sin_addr`)와 포트 번호(`sin_port`)를 포함한다.
- 바이트 순서 변환 함수(`htons()`, `htonl()`, `ntohs()`, `ntohl()`)를 사용하여 올바른 네트워크 바이트 순서(NBO)를 유지해야 한다.

<br>

## Byte 순서 함수

- **Big Endian(빅엔디안)**: 메모리의 낮은 주소에 정수의 첫 바이트를 위치
- **Little Endian(리틀엔디안)**: 메모리의 높은 주소에 정수의 첫 바이트를 위치

- **HBO**(호스트 바이트 순서): **시스템**에서 사용하는 바이트 순서

- **NBO**(네트워크 바이트 순서): **네트워크**에서 사용하는 바이트 순서

<br>

### htonl()

**헤더 파일**

```c
#include <arpa/inet.h>
```

<br>

**함수 원형**

```c
uint32_t htonl(uint32_t hostlong);
```

<br>

**Argument**

- `hostlong`: 변환할 HBO의 32비트 정수

<br>

**Return**

- 변환된 NBO의 32비트 정수

<br>

**Operation**

- HBO의 32비트 정수를 NBO로 변환한다.

<br>

**Feature**

- 주로 IPv4 주소 또는 32비트 데이터를 전송할 때 사용된다.

<br>

---

### htons()

**헤더 파일**

```c
#include <arpa/inet.h>
```

<br>

**함수 원형**

```c
uint16_t htons(uint16_t hostshort);
```

<br>

**Argument**

- `hostshort`: 변환할 HBO의 16비트 정수

<br>

**Return**

- 변환된 NBO의 16비트 정수

<br>

**Operation**

- HBO의 16비트 정수를 NBO로 변환한다.

<br>

**Feature**

- 대부분 TCP/UDP 포트 번호 변환에 사용된다.

<br>

---

### ntohl()

**헤더 파일**

```c
#include <arpa/inet.h>
```

<br>

**함수 원형**

```c
uint32_t ntohl(uint32_t netlong);
```

<br>

**Argument**

- `netlong`: 변환할 NBO의 32비트 정수

<br>

**Return**

- 변환된 HBO의 32비트 정수

<br>

**Operation**

- NBO의 32비트 정수를 HBO로 변환한다.

<br>

**Feature**

- 

<br>

---

## ntohs()

**헤더 파일**

```c
#include <arpa/inet.h>
```

<br>

**함수 원형**

```c
uint16_t ntohs(uint16_t netshort);
```

<br>

**Argument**

- `netshort`: 변환할 NBO의 16비트 정수

<br>

**Return**

- 변환된 HBO의 16비트 정수

<br>

**Operation**

- NBO의 16비트 정수를 HBO로 변환한다.

<br>

**Feature**

- 

<br>

## IP주소 변환

### inet_addr()

**헤더 파일**

```c
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netinet/in.h>
```

<br>

**함수 원형**

```c
in_addr_t inet_addr(const char *cp);
```

<br>

**Argument**

- `cp`: 변환할 문자열 형태의 IPv4 주소
  - (e.g. `"192.168.1.1"`)

<br>

**Return**

- **성공**: NBO로 변환된 IPv4 주소(32비트 정수, `in_addr_t` 타입)
- **실패**: INADDR_NONE(일반적으로 -1)

<br>

**Operation**

- IP 주소 문자열을 NBO의 32비트 정수(`in_addr_t` 타입)로 변환한다.

<br>

**Feature**

- 

<br>

---

### inet_ntoa()

**헤더 파일**

```c
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netinet/in.h>
```

<br>

**함수 원형**

```c
char *inet_ntoa(const struct in_addr in);
```

<br>

**Argument**

- `in`: 변환할 NBO의 `struct in_addr` 타입 구조체(IPv4 주소)

<br>

**Return**

- **성공**: 변환된 IP 주소 문자열
- **실패**: N/A

<br>

**Operation**

- NBO의 IPv4 주소를 점으로 구분된 문자열로 변환한다.

<br>

**Feature**

- 

<br>

## 소켓 인터페이스 함수

### socket()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
int socket(int domain, int type, int protocol);
```

<br>

**Argument**

- `domain`: 소켓 종류(UNIX 도메인 또는 인터넷 소켓)
  - `AF_UNIX`: UNIX 도메인 소켓
  - `AF_INET`: IPv4
  - `AF_INET6`: IPv6
- `type`: 통신 방식(TCP 또는 UDP)
  - `SOCK_STREAM`: TCP
  - `SOCK_DGRAM`: UDP
- `protocol`: 소켓에 이용할 프로토콜(일반적으로 0 사용)

<br>

**Return**

- **성공**: 소켓 파일 디스크립터(sockfd)
- **실패**: -1

<br>

**Operation**

- 소켓을 생성한다.

<br>

**Feature**

- 파일 디스크립터를 반환하며, 이후 소켓 관련 작업에서 사용된다.

<br>

---

### bind()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
int bind(int sockfd, const struct sockaddr *addr, socklen_t addrlen);
```

<br>

**Argument**

- `sockfd`: `socket()`함수가 생성한 서버 소켓 파일 디스크립터
- `addr`: 소켓에 연결할 주소 구조체
- `addrlen`: `addr`의 크기

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- `socket()` 함수가 생성한 소켓 기술자 `sockfd`에 `sockaddr` 구조체인 `addr`에 지정한 정보를 연결한다.(소켓에 IP 주소와 포트 번호를 할당한다.)
  - `sockaddr` 구조체에 지정하는 정보는 소켓의 종류, IP 주소, 포트 번호

<br>

#### Feature

- 바인딩을 통해 특정 포트에서 들어오는 요청을 받을 수 있다.

<br>

---

### listen()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
int listen(int sockfd, int backlog);
```

<br>

**Argument**

- `sockfd`: `socket()` 함수가 생성한 서버 소켓 파일 디스크립터
- `backlog`: 최대 허용 클라이언트 수

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 소켓 `sockfd`에서 클라이언트의 연결을 받을 준비를 마쳤음을 알린다.(서버 소켓을 수신 대기 상태로 설정한다.)

<br>

**Feature**

- `bind()` 함수 이후 호출되며, 클라이언트 연결 요청을 수신할 준비를 한다.
- `listen()` 함수는 소켓이 `SOCK_STREAM` 방식으로 통신할 때만 필요

<br>

---

### accept()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
int accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen);
```

<br>

**Argument**

- `sockfd`: `socket()` 함수가 생성한 서버 소켓 파일 디스크립터
- `addr`: 연결된 클라이언트의 주소 정보를 담을 구조체
- `addrlen`: `addr` 크기

<br>

**Return**

- **성공**: 새 클라이언트 소켓 기술자
- **실패**: -1

<br>

**Operation**

- 클라이언트의 연결 요청을 수락한다.
- `sockfd`가 가리키는 소켓 기술자는 추가 연결 요청을 기다리는 데 사용한다.

<br>

**Feature**

- 서버는 반환된 새로운 소켓 기술자를 사용해 클라이언트와 데이터를 주고 받을 수 있다.

<br>

---

### connect()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
int connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen);
```

<br>

**Argument**

- `sockfd`: `socket()` 함수가 생성한 클라이언트 소켓 파일 디스크립터
- `addr`: 접속하려는 서버의 IP 정보
- `addrlen`: `addr`의 크기

<br>

**Return**

- **성공**: 0
- **실패**: -1

<br>

**Operation**

- 클라이언트가 서버에 연결 요청을 보낸다.
- 소켓 `sockfd`를 통해 `addr`에 지정한 서버에 연결을 요청한다.

<br>

**Feature**

- `SOCK_STREAM` 방식으로 통신할 때만 필요

<br>

---

### send()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
ssize_t send(int sockfd, const void *buf, size_t len, int flags);
```

<br>

**Argument**

- `sockfd`: 데이터를 수신 받을 파일 디스크립터(상대 디스크립터)
  - 이 소켓은 반드시 **연결된 상태(TCP)**이어야 한다.
- `buf`: 전송할 메시지를 저장한 메모리 주소
- `len`: 메시지의 크기
- `flags`: 데이터를 주고받는 방법을 지정한 플래그(전송 옵션)
  - 0: 기본 동작(차단 모드)
  - MSG_DONTWAIT: 비차단 모드로 전송
  - MSG_NOSIGNAL: 소켓 연결이 닫혀 있을 때 `SIGPIPE` 신호를 발생시키지 않음
  - MSG_OOB: 긴급(out-of-band) 데이터를 전송(일반적으로 사용되지 않음)

<br>

**Return**

- **성공**: 전송한 바이트 수
  - 반환 값이 지정한 크기보다 작으면 데이터를 모두 보내지 못했음을 의미한다.
- **실패**: -1

<br>

**Operation**

- 연결된 소켓(`sockfd`)으로 데이터를 보낸다.
- 데이터를 보낼 때 내부적으로 소켓의 **송신 버퍼**에 데이터를 저장한 뒤 네트워크를 통해 상대방에게 전송한다.
- **TCP 연결**에서 주로 사용되며, **연결형 통신(connected socket)**에 적합하다.
- **비차단 소켓(non-blocking socket)**일 경우, 송신 버퍼가 가득 차 있으면 바로 반환하며, 전송된 바이트 수를 알려준다.

<br>

**Feature**

- **연결 기반 통신에서 사용**
  - **TCP 소켓**과 같이, 송신 전에 연결을 설정하는 소켓에서 사용된다.
  - UDP와 같은 비연결형 소켓에서는 `sendto()`를 사용한다.
- **부분 전송 가능**
  - 네트워크 상태나 송신 버퍼의 크기에 따라 한 번에 지정한 크기(`len`)만큼 전송되지 않을 수도 있다.
  - 반환 값으로 실제 전송된 바이트 수를 확인해야 한다.

<br>

---

### recv()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
ssize_t recv(int sockfd, void *buf, size_t len, int flags);
```

<br>

**Argument**

- `sockfd`: 데이터를 수신 받을 출처(상대 소켓 파일 디스크립터)
- `buf`: 전송받은 메시지를 저장할 메모리 주소
- `len`: `buf`의 크기
- `flags`: 데이터를 주고받는 방법을 지정한 플래그(수신 옵션)
  - 0: 기본 동작(차단 모드)
  - MSG_DONTWAIT: 비차단(non-blocking) 모드
  - MSG_PEEK: 데이터를 버퍼에 복사하지만 실제로 제거하지 않음
  - MSG_WAITALL: 요청한 데이터 길이(`len`)만큼 읽을 때까지 차단

<br>

**Return**

- **성공**: 수신한 바이트 수
  - **연결이 닫힌 경우**: 0
- **실패**: -1

<br>

**Operation**

- 소켓(`sockfd`)으로부터 데이터를 수신하여 지정된 버퍼(`buf`)에 저장한다.

<br>

**Feature**

- **TCP 소켓**에서 주로 사용되며, 연결 지향 통신에 적합하다.
- **차단 모드(blocking)**: 기본적으로 데이터가 도착할 때까지 호출이 차단된다.
- **비차단 모드(non-blocking)**: MSG_DONTWAIT 플래그를 사용하면 대기하지 않고 바로 반환한다.
- 데이터 크기가 `len`보다 작으면 가능한 데이터만 읽는다.

<br>

---

### sendto()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
ssize_t sendto(int sockfd, const void *msg, size_t len, int flags, const struct sockaddr *dest_addr, socklen_t addrlen);
```

<br>

**Argument**

- `sockfd`: 데이터를 전송할 소켓의 파일 디스크립터
- `msg`: 전송할 데이터가 저장된 버퍼의 주소
- `len`: 전송할 데이터의 크기(바이트 단위)
- `flags`: 전송 동작을 제어하는 플래그(선택적으로 설정 가능)
- `dest_addr`: 데이터를 보낼 대상(수신 받을 대상)의 주소 구조체 포인터(`sockaddr` 형식)
- `addrlen`: `dest_addr` 구조체의 크기(바이트 단위)

<br>

**Return**

- **성공**: 전송한 데이터의 바이트 수
- **실패**: -1

<br>

**Operation**

- 소켓(`sockfd`)을 통해 데이터(`msg`)를 지정된 대상(`dest_addr`)으로 전송한다.
- **UDP 소켓**에서 주로 사용되며, 비연결형 통신에 적합하다.

<br>

**Feature**

- **연결 없이 전송**: 연결 설정 없이도 데이터를 전송할 수 있다.
- 전송 대상 주소(`dest_addr`)를 매번 명시해야 한다.
- `sendto()`는 **UDP** 기반 소켓에서 흔히 사용되며, TCP 소켓에서는 일반적으로 사용하지 않는다.

<br>

---

### recvfrom()

**헤더 파일**

```c
#include <sys/socket.h>
```

<br>

**함수 원형**

```c
ssize_t recvfrom(int sockfd, void *buf, size_t len, int flags, struct sockaddr *src_addr, socklen_t *addrlen);
```

<br>

**Argument**

- `sockfd`: 데이터를 수신할 소켓의 파일 디스크립터
- `buf`: 수신한 데이터를 저장할 버퍼의 주소
- `len`: 버퍼의 크기(최대 수신할 데이터의 바이트 수)
- `flags`: 수신 동작을 제어하는 플래그(선택적으로 설정 가능)
- `src_addr`: 데이터를 보낸 발신자의 주소를 저장할 구조체 포인터(`sockaddr` 타입)
- `addrlen`: 발신자 주소 구조체의 크기
  - 함수 호출 전에 크기를 설정하고, 호출 후에는 발신자의 실제 주소 길이가 저장된다.

<br>

**Return**

- **성공**: 수신한 데이터의 바이트 수
  - **연결이 닫힌 경우**: 0
- **실패**: -1

<br>

**Operation**

- 소켓(`sockfd`)을 통해 데이터를 수신하여 지정된 버퍼(`buf`)에 저장한다.
- 데이터를 보낸 발신자의 주소 정보를 `src_addr`에 저장한다.

<br>

**Feature**

- **UDP 소켓**에서 주로 사용된다.
- **발신자 정보 확인 가능**: 데이터를 보낸 발신자의 주소를 확인할 수 있다.
- **비연결형 통신**: UDP 기반 소켓에서 수신 작업을 수행할 때 유용하다
- TCP 소켓에서도 호출할 수 있지만, 일반적으로 **UDP 소켓**과 함께 사용된다.
