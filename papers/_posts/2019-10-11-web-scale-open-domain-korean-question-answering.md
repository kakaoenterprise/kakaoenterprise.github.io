---
layout: post
research-area: NLP
title: 기계 독해를 이용한 웹 기반 오픈 도메인 한국어 질의응답
slug: hclt2019-web-scale-open-domain-korean-question-answering
description:
published-date: 2019-10-11
publisher: 한글 및 한국어정보처리 학술대회
authors:
  - heuristic:카카오
  - jason:카카오
  - 신동렬:성균관대학교
paper: http://hclt.kr/symp/?lnb=conference
code:
tag:
---

카카오엔터프라이즈는 기계 독해를 이용한 웹 기반 오픈 도메인 한국어 질의응답 시스템을 제안했습니다. 이 시스템은 사용자 질의가 입력되면 키워드 기반 한국어 웹 검색 엔진으로 받아온 최대 1,500개의 문서를 기계 독해 방식으로 실시간으로 분석합니다. 그런 뒤, 각 문서에서 찾은 답을 종합해 최종 답변을 도출합니다. 실험 결과, 제안된 시스템의 평균 실행 시간은 2초 이내였으며, 인간이 기록한 점수 대비 86%에 달하는 준수한 성능을 냈습니다.

<p class="tech-ground">☛ Tech Ground 데모 페이지 바로 가기 : <b><a href="https://labs.kakaoi.ai/mrc">지문분석</a></b> 데모 | <b><a href="https://labs.kakaoi.ai/openqa">통합분석</a></b> 데모</p>

# 전체 구조

기계학습 기반 한국어 오픈 도메인 질의응답 시스템은 5개의 부분 시스템–질의 분석기, 검색 질의 생성기, 검색 결과 정제기, 기계 독해기, 최종 정답 추출기–로 나뉘어 질 수 있다. 제안된 시스템은 일반적인 키워드 기반 검색 엔진에 의해 색인된 수십억 개의 한국어 웹 페이지를 이용한다. 신뢰도 이슈를 해결하기 위하여, 기계 독해 시스템을 이용하여 실시간으로 최대 1,500개의 웹 페이지로부터 후보 정답을 추출하며, 최종 정답은 얻어진 후보 정답들을 재차 분석하여 얻어진다.

{% include image.html name="001.png" width="" align="center" %}
<em class="center">[ 그림 1 ] 제안된 전체 시스템 구조</em>

# 실험

전체 시스템의 성능을 평가하기 위하여, 육하원칙 카테고리 WHAT, WHEN, WHERE, WHO에 대하여 각 200개씩의 질문이 수집되었다. 각 질문에 대하여 두 명의 어노테이터가 답변을 구축한 후, 결과물이 수집되었다. 문제의 특성상, 하나의 질문이 여러 개의 답변을 가지는 것이 허용되었다. 표 1는 말뭉치에 포함된 질문-답변 예시를 보여 준다.

{% include image.html name="002.png" width="50%" align="center" %}
<em class="center">[ 표 1 ] 질문-답변 말뭉치 데이터 예시</em>

표 2에서 관찰 가능하듯이, 제안된 시스템은 F1 70.6%의 성능을 보여 주었고, 이는 사람이 기록한 F1 점수 대비 86%에 도달하는 것이다. WHAT 카테고리의 경우, 서술형 답변을 많이 포함하고 있어 다른 육하원칙 카테고리에 속하는 질의에 비해 낮은 성능을 보여 주었다. 또한, 시스템의 질의당 평균 실행 시간은 1.6초, 최대 실행 시간은 4.7초를 기록하여, 실시간으로 사용될 수 있는 실행 시간이 확인되었다.

{% include image.html name="003.png" width="70%" align="center" %}
<em class="center">[ 표 2 ] 시스템 성능 평가</em>
