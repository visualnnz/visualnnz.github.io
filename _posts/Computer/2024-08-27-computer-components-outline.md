---
layout: single
title: 컴퓨터 주요 부품 개요
categories: Computer
tags: [H/W, Memo]
author: visualnnz
header:
  teaser: /images/2024-08-27-computer-components/desktop.png
---

# 데스크탑 컴퓨터 부품 요약

|          부품          |                             역할                             |
| :--------------------: | :----------------------------------------------------------: |
|        **CPU**         |              사람의 **두뇌** - 연산, 처리 담당               |
| **메인보드(마더보드)** |        사람의 **척추** - 모든 부품들과 연결되는 뼈대         |
|     **메모리(램)**     | 사람의 **두뇌 + 기억** - CPU와 보조기억장치 사이에서 데이터 주고 받음 + 데이터 임시저장 |
|    **보조기억장치**    |              사람의 **기억** - 데이터 영구 저장              |
|     **그래픽카드**     |              사람의 **눈** - 이미지와 영상 출력              |
|    **파워서플라이**    |            사람의 **에너지** - 컴퓨터에 전기 공급            |
|       **케이스**       |               사람의 **피부** - 컴퓨터의 외관                |

위 부품들 중에 <span style="background-color: #fff551">컴퓨터 성능에 가장 중요한 것은 **CPU**</span>이다.

실사용 시 **CPU**에 따라 컴퓨터의 전체적인 속도가 크게 좌우된다.

<br>

***

# CPU

![amd_ryzen9_7900](../../images/2024-08-27-computer-components-outline/amd_ryzen9_7900.png)

<span style="background-color: #fff551">**CPU**는 곧 컴퓨터의 속도</span>

**CPU**는 메모리, 보조기억장치와 늘 함께 유기적으로 동작한다.

![image-20240827161856259](../../images/2024-08-27-computer-components-outline/image-20240827161856259.png)

컴퓨터 내부 부품들은 서로 속도의 차이가 있다.

- 두뇌인 **CPU**가 가장 빠르고 자료를 저장하는 보조기억장치(SSD, HDD)가 가장 느리다.
- <span style="background-color: #fff551">**메모리**는 중간에서 **CPU**와 **보조기억장치** 사이에 속도를 보완해주며 명령과 데이터를 저장해 두었다가 **CPU**에 전달</span>한다.

- **CPU**가 너무 빠르고 **보조기억장치**는 너무 느리기 때문에 이런 식으로 작동해야 한다.

램은 용량이 꽉 차면 더 이상 새로운 프로그램 실행이 안 된다.

- 마우스 커서가 제대로 움직이지도 않을 만큼 속도가 저하되기도 한다.
- 그래서 램은 속도 자체가 빠른 것이 좋고 용량이 큰 것이 항상 좋다.

<br>

## 용도

|                            용도                            |          적정 CPU          |
| :--------------------------------------------------------: | :------------------------: |
|  **웹서핑, 문서작업, 영상 감상, 인강 시청, 저사양 게임**   | 인텔 - i3 / AMD - 라이젠 3 |
|                 **게임, 영상편집, 디자인**                 | 인텔 - i5 / AMD - 라이젠 5 |
|          **고사양 게임, 고사양 영상편집, 디자인**          | 인텔 - i7 / AMD - 라이젠 7 |
| **전문 작업, 고사양 게임, 고사양 영상편집, 고사양 디자인** | 인텔 - i9 / AMD - 라이젠 9 |

<br>

## 세대

같은 시리즈(e.g. i5, 라이젠 7 등)라도 <span style="background-color: #fff551">세대에 따라 성능이 달라지기 때문에 몇 세대 **CPU**인지 확인</span>해야 한다.

<br>

## 코어

1개의 CPU 안에는 **코어**라는 것이 여러 개 있다. 그래서 <span style="background-color: #fff551">여러 개의 코어를 활용하는 것은 여러가지 작업을 동시에 할 때 속도를 높여준다.</span>

<br>

## 클럭

<span style="background-color: #7cffa4">CPU의 속도를 알아볼 수 있는 **지표**</span>

단위: **GHz**(기가헤르츠)

<br>

클럭은 높을 수록 그만큼 빠르다는 뜻이기 때문에 좋다.

최근 CPU들은 평소에는 기본 클럭으로 동작하다가 <span style="background-color: #fff551">성능이 더 필요해지면 최대 클럭으로 성능을 끌어올리는</span> 기술을 가지고 있다.

&nbsp; &nbsp; &nbsp; &nbsp; └ 기본 클럭보다는 최대 클럭이 어느 정도까지 높은 지를 기준으로 판단하는 것이 좋다.

또한 CPU내의 모든 **코어**가 각각 어느 정도의 클럭까지 올라가는 지가 중요하다.

<br>

***

# 메인보드(마더보드)

![ASRock_B650M_PG_Riptide](../../images/2024-08-27-computer-components-outline/ASRock_B650M_PG_Riptide.jpg)

<span style="background-color: #7cffa4">컴퓨터 본체 내의 다양한 부품들을 연결하는 부품</span>

메인보드는 <span style="background-color: #fff551">다른 모든 부품들을 연결해주기 때문에 아주 중요한 부품이다.</span>

그래픽카드는 메인보드 상의 **PCIe**(PCI Express) 슬롯에 장착되기 때문에 <span style="background-color: #fff551">그래픽카드를 구매할 때 메인보드와 호환이 되는지 확인</span>해야 한다.

<span style="background-color: #fff551">최소한 메인보드가 그래픽카드의 인터페이스(PCIe) 이상의 사양을 지원해야 그래픽카드의 성능을 충분히 이용할 수 있다.</span>

<br>

## PCI Express 슬롯

![image-20240827205341186](../../images/2024-08-27-computer-components-outline/image-20240827205341186.png)

x1, x4, x8, x16은 **배속**과 **슬롯의 모양**을 의미한다.

예를 들어 x16은 16배속의 속도이며 길이가 가장 길다.(슬롯의 형태가 길어질수록 속도가 빨라진다)

그래픽카드는 x16 형태의 슬롯에만 장착된다고 보면 된다.

x16에 그래픽카드를 장착한다고 항상 16배속으로 동작하는 것은 아니고 평소에는 더 낮은 속도로 동작하다가 성능이 필요해지면 16배속으로 동작한다.

<br>

## 보조기억장치 인터페이스(연결 부분)

- **M.2**: 얇은 칩셋 형태의 폼팩터로 <span style="background-color: #fff551">메인보드의 슬롯에 바로 장착</span>하는 방식
- **SATA**: <span style="background-color: #fff551">SATA 케이블을 이용해 메인보드에 연결</span>하는 방식

<br>

***

# 시스템 메모리(RAM)

![hynix_ddr5_memory](../../images/2024-08-27-computer-components-outline/hynix_ddr5_memory.png)

<span style="background-color: #7cffa4">사용자가 자유롭게 내용을 읽고 쓰고 지울 수 있는 **기억장치**</span>

일반적으로 '**메모리**'라고 하면 **시스템 메모리**를 의미한다.

&nbsp;&nbsp;&nbsp;&nbsp; └ (통상적으로) 메모리 = 시스템 메모리 = 메인 메모리 = 주기억장치 = RAM

컴퓨터가 켜지는 순간부터 CPU는 연산을 하고 동작에 필요한 모든 내용이 전원이 유지되는 내내 시스템 메모리에 저장된다. 전원이 차단되면 메인 메모리 상의 내용이 지워지는 **휘발성** 기억 장치이다.

<br>

- 휘발성과 비휘발성

- 디스크 페이징(스왑, 스와핑) 관련

- RAM의 성능

  - 메모리 레이턴시(Memory Latency)
  - 메모리 쓰루풋 or 대역폭(Memory Throughput)

- 다다익램과 용량에 따른 체감 성능

- 논리적 용도별 종류

  - 메인 메모리
  - 버퍼 메모리
  - 캐시 메모리
  - 램 디스크

- 물리적 특성별 종류

  - SRAM

  - DRAM

    - SDRAM
      - DDR SDRAM

    - GDRAM
      - VDRAM(VRAM)

- 가격 변동

- 기타



<br>

***

# 보조기억장치(SSD)

![samsung_NVMe_SSD_960_EVO](../../images/2024-08-27-computer-components-outline/samsung_NVMe_SSD_960_EVO.jpg)

**SSD**(**S**olid-**S**tate **D**rive)

<span style="background-color: #7cffa4">기계적 구동부위가 없는 **반도체**를 사용하는 드라이브</span>

NAND 플래시 메모리와 고성능 컨트롤러를 탑재하여 C 드라이브 및 HDD의 지위를 대체하고 있는 보조 기억 장치이다.



|        종류        | 상대적 속도 |
| :----------------: | :---------: |
| **SATA(SATA SSD)** |    느림     |
| **PCIe(NVMe SSD)** |    빠름     |

NVMe SSD는 SATA SSD보다 빠르지만 SATA SSD보다 발열이 더 많이 나고 가격이 더 비싸다.

- **2.5"(inch) SATA SSD**: SATA 케이블로 메인보드와 파워서플라이에 연결하는 방식
- **M.2 NVMe SSD**: 메인보드의 M.2 슬롯에 직접 장착하는 방식

M.2 **NVMe** SSD >> M.2 **SATA** SSD = 2.5" **SATA** SSD

<br>

- 구성요소
  - 인터페이스
    - 물리 인터페이스
    - 논리 인터페이스
- 장단점
- 최적화 팁
- NVMe

<br>

***

# 그래픽 카드

![rtx_4060_ti](../../images/2024-08-27-computer-components-outline/rtx_4060_ti.jpg)

**그래픽 카드**

= Graphics Card

= VGA(**V**ideo **G**raphics **A**rray)

<span style="background-color: #7cffa4">**CPU의 명령 하에** 이루어지는 **그래픽 작업을 전문적으로 빠르게 처리**하고 **디지털 신호를 영상 신호로 바꿔** 모니터로 전송하는 장치</span>

<br>

## GPU VS 그래픽 카드

**GPU**: <span style="background-color: #7cffa4">그래픽 카드 내부에서 그래픽 처리를 담당하는 하나의 **부품**</span>

**그래픽 카드**: <span style="background-color: #7cffa4">핵심 부품인 GPU와 함께 팬 등을 포함한 하나의 **완제품**</span>

<br>

## 구성

- **PCB**(Printed Circuit Board)
- **프로세서**(GPU)
- **그래픽 메모리 칩(모듈)**
- **디스플레이 출력 단자**
- **기타**

<br>

***

# 파워서플라이



![SF-700R12ST_Mega_80Plus_230V_EU](../../images/2024-08-27-computer-components-outline/SF-700R12ST_Mega_80Plus_230V_EU.jpg)

**파워 서플라이**

= PSU(**P**ower **S**upply **U**nit)

<span style="background-color: #7cffa4">컴퓨터 부품에 필요한 전압과 전류로 변환해 **전원을 공급하는** 컴퓨터 부품</span>

일반적으로 220V 혹은 110V 가정용 교류 전원을 직류 12V, 5V, 3.3V 등 컴퓨터 부품에 맞는 전압과 전류로 바꿔주는 **변압기**를 말한다.

<br>

- 중요성

  - 파워의 용량(출력) 선택

  - 좋은 파워를 고르는 법

- 유지보수

  - 청소
  - 팬 교체

<br>

***

# 컴퓨터 케이스

![darkFlash_DS900_ARGB_white](../../images/2024-08-27-computer-components-outline/darkFlash_DS900_ARGB_white.jpg)

<span style="background-color: #7cffa4">컴퓨터의 부품들을 고정하고 보호하는 **상자형의 껍데기**</span>

케이스를 사용하는 이유는 전기 합선이나 먼지 등 외부 이물질 혼입으로 인한 고장의 위험을 줄이기 위함이며, 겉으로 드러나는 부분이라 디자인에 공들인 케이스 상품들이 여럿 시판되고 있다.

<br>

- 제품 특징
- 재질
  - 철
  - 알루미늄
  - 아크릴
  - 강화 유리
  - 폴리카보네이트
- 파워 장착 방식
- 케이스의 종류

<br>

***

# 컴퓨터 쿨러

![Thermalright_Peerless_Assassin_120_SE_Seorin](../../images/2024-08-27-computer-components-outline/Thermalright_Peerless_Assassin_120_SE_Seorin.jpg)

<span style="background-color: #7cffa4">컴퓨터에 사용하는 **냉각기**</span>

<br>

- 개요
- 종류
  - CPU 쿨러
  - 시스템 쿨러
  - GPU 쿨러
- 냉각 방식
  - 수동적 냉각(패시브 쿨링)
  - 능동적 냉각(액티브 쿨링)
    - 공랭
    - 수랭
- 기타
