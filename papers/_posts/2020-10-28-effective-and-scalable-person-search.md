---
layout: post
research-area: COMPTER VISION
title: "Learning Discriminative Part Features Through Attentions For Effective And Scalable Person Search"
slug: ICIP2020-effective-and-scalable-person-search
description: 한 번의 딥러닝 추론으로 사람 검출과 검색을 한꺼번에 구현하는 기법 제안
published-date: 2020-10-28
publisher: ICIP
authors:
  - 박지철:POSTECH
  - 정보승:POSTECH
  - issac.giant:카카오엔터프라이즈
  - michael.jy:카카오엔터프라이즈
  - 곽수하:POSTECH
paper: https://ieeexplore.ieee.org/abstract/document/9190688
code:
tag:
  - person detection
---

# Abstract

This paper proposes a new method for person search, the task of detecting a specific person exemplified by a query image from a gallery of scene images. Current state-of-the-art techniques in person search demonstrate impressive performance, but are limited in terms of efficiency and scalability since they require multiple models and/or have to re-process gallery images per query. We argue that a concise framework with a single neural network can achieve both of scalability and performance at once. In our framework, the network detects people and extracts their appearance features so that person search is done by finding the person closest to the query in the feature space. For performance, we focus on the quality of the person appearance features: Our network is designed and trained to produce person features that are discriminative, fine-grained, adaptive to appearance variations, and robust against person localization errors. To this end, we design channel attention and part-wise spatial attention modules as well as a loss for learning discriminative features. Our framework outperforms current state of the art on the PRW benchmark even with the concise pipeline based on a single network.
