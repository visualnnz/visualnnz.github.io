---
layout: single
title: Markdown을 통한 게시글 작성 지침서
categories: Manual
tags: [Frame, Markdown]
author: visualnnz
toc: true
use_math: true
---





# YAML Front matter



```
---
layout: single
title: 
categories: 
tags: [, , ,]
author: visualnnz
toc: true
search: true or false
header:
  teaser: /assets/images/~~~
use_math: true or false
---
```

<br>

---



# 텍스트 강조용 배너

**Text 123**
{: .notice}



**Text 123**
{: .notice--info}



**Text 123**
{: .notice--success}



**Text 123**
{: .notice--warning}



**Text 123**
{: .notice--danger}



<div class="notice--success">
    <h4>공지사항입니다.</h4>
    <ul>
        <li>공지사항 순서 1</li>
        <li>공지사항 순서 a</li>
        <li>공지사항 순서 3</li>
    </ul>
</div>

> Markdown에서 글 작성 시 Shift + Enter로 개행을 하면 2칸이 아닌 1칸만 개행이 가능
>
> 1칸만 개행해야 {: .notice--warning}같은 스타일 적용 가능

<br>

---



# 버튼

## Markdown 버전

[버튼](https://www.google.com){: .btn .btn--primary}

[버튼](https://www.google.com){: .btn .btn--info}

[버튼](https://www.google.com){: .btn .btn--success}

[버튼](https://www.google.com){: .btn .btn--warning}

[버튼](https://www.google.com){: .btn .btn--danger}

<br>

## HTML 버전

<a class="btn btn--primary" href="https://www.google.com" target="_blank">버튼</a>

<a class="btn btn--info" href="https://www.google.com" target="_blank"> 버튼 </a>

<a class="btn btn--success" href="https://www.google.com" target="_blank"> 버튼 </a>

<a class="btn btn--warning" href="https://www.google.com" target="_blank"> 버튼 </a>

<a class="btn btn--danger" href="https://www.google.com" target="_blank"> 버튼 </a>

<br>

***

# Text alignment

<br>

Left aligned text
{: .text-left}

```
Left aligned text
{: .text-left}
```

<br>

Center aligned text
{: .text-center}

```
Center aligned text
{: .text-center}
```

<br>

Right aligned text
{: .text-right}

```
Right aligned text
{: .text-right}
```

<br>

***



# 수학 수식

<br>

$x^2 + y^2 = z^2$

$y = f(x)^2$

<br>

***



# Markdown 문법

[Markdown 문법 총정리](https://www.heropy.dev/p/B74sNE)
