---
layout: single
title: Git Commit Message Convention
categories: Manual
tags: [Git, Memo]
author: visualnnz
header:
  teaser: /assets/images/2024-08-14-git-commit-message-convention/git-message.png
---

# Git 커밋 메시지 컨벤션의 중요성

***

## 1. Git 커밋 메시지 컨벤션이란?

- <span style="background-color: #7cffa4">프로젝트 참여자들이 <strong>일관된</strong> 형식의 커밋 메시지를 작성하기 위한 규칙</span>
- 현재 여러 개발자들 사이에서 관습적으로 통용되는 가이드라인이 있다.
- 각 프로젝트에 따라서 별도의 규칙을 만들어 적용하기도 한다.

<br>

## 2. Git 커밋 메시지 컨벤션을 지켜야 하는 이유

- 커밋 메시지 형식의 일관성 유지
- 가독성 및 커뮤니케이션 효율성 제고
- 변경 이력 추적 및 문제 해결 속도 향상

<br>

# Git 커밋 메시지 작성법

***

## 1. 기본 구조

```
<type>[scope]: <description> // header
(공백 라인) // header, body, footer 간에는 한 줄씩 공백 라인을 둔다. 
[body] // body
(공백 라인)
[footer(s)] // footer
```

- `<type>`: 변경 사항의 유형

  └ e.g.) feat(새로운 기능), fix(버그 수정), docs(문서 변경), ... 

- `<description>`: 변경 작업의 제목이나 간단한 요약

  └ 50자 이내로 간결하게 작성한다.

  └ 대문자로 시작하고, 마침표(.)는 사용하지 않는다.

- `[body]`: (선택 사항) 작업 내용이 복잡하거나 상세한 내용을 남겨야 하는 경우에만 작성한다. 필요 시 여러 줄로 작성한다.

- `[footer]`: (선택 사항) 코드 작업과 관련된 **이슈 번호** 또는 **참조 링크** 등을 추가한다. 특정 작업이나 이슈를 해결한 경우에는 일반적으로 **Resolves #작업번호 또는 이슈번호"**같은 형태로 기재한다.

<br>

## 2. type 유형(header)

|         유형         |                             설명                             |
| :------------------: | :----------------------------------------------------------: |
|       **Feat**       |                       새로운 기능 추가                       |
|       **Fix**        |                          버그 수정                           |
|      **Update**      |                     *비즈니스 로직 변경                      |
|       **Docs**       |                          문서 수정                           |
|      **Style**       | 코드 포맷 변경, 세미콜론(;) 누락 수정, 코드 수정이 없는 경우 |
|     **Comment**      |                      주석 추가 및 변경                       |
|     **Refactor**     |                        코드 리팩토링                         |
|     **Optimize**     |           성능(시간적 비용 or 공간적 비용) 최적화            |
|      **Rename**      |        파일명 혹은 폴더명 수정 or 파일 혹은 폴더 이동        |
|      **Remove**      |                          파일 삭제                           |
|       **Test**       | 테스트 코드 추가, 수정, 삭제(비즈니스 로직에 변경이 없는 경우) |
|      **Chore**       | 기타 변경사항(빌드 스크립트 수정, 패키지 매니저 수정, production code와 무관한 부분)<br />└ (.gitignore, build.gradle 같은 것들) |
|      **Design**      |                    사용자 UI 디자인 변경                     |
| **!BREAKING CHANGE** |                      대대적인 API 변경                       |
|     **!HOTFIX**      |                 긴급하고 치명적인 버그 수정                  |
|       **Init**       |                      프로젝트 초기 생성                      |

*비즈니스 로직: 실제 어떤 프로그램에서 request의 처리나, 특정한 기능 수행을 위해 **데이터를 처리하는 실질적인 로직**



<br>

## 3. Issue Tracker 유형(footer)

- `Resolves`: 해결한 이슈
- `Fixes`: 수정 중인 이슈(아직 해결되지 않은 경우)
- `Ref`: 참고할 이슈
- `Related to`: 해당 커밋에 관련된 이슈(아직 해결되지 않은 경우)

<br>

## 4. 작성 예시

```
Feat: 사용자 프로필 페이지 추가

- 사용자 프로필 페이지 및 라우팅 구현
- 프로필 정보를 보여주는 프로필 카드 컴포넌트 구현
- 프로필 수정 기능 구현

Resolves: #47
Ref: #32, #38
Related to: #43
```

<br>

***

# GitHub Pages 전용 type 유형(자작)

|     유형      |                  설명                  |
| :-----------: | :------------------------------------: |
|   **Post**    |             새 게시글 등록             |
|  **Update**   |      기존 게시글 제목, 내용 수정       |
|   **Style**   |  텍스트 스타일(글자 색, bold 등) 변경  |
|   **Chore**   | 오타, 카테고리, 태그 등 기타 사항 수정 |
|    **Set**    |            블로그 설정 변경            |
|  **Design**   |             UI 디자인 변경             |
| **Structure** |            블로그 구조 변경            |

