---
layout: post
research-area: NLP
title: "Do Response Selection Models Really Know What's Next? Utterance Manipulation Strategies for Multi-turn Response Selection"
slug: aaai2021-multi-turn-response-selection
description:
published-date: 2021-02-02
publisher: AAAI
publisher-fullname : Association for Advancement of AI (AAAI)
authors:
  - 황태선:고려대학교
  - jude:카카오
  - 오동석:고려대학교
  - 이찬희:고려대학교
  - mat:카카오엔터프라이즈
  - hubert:카카오엔터프라이즈
  - 이새벽:Wisenut Inc/고려대학교
paper: https://arxiv.org/pdf/2009.04703.pdf
code:
tag:
---

# Abstract

In this paper, we study the task of selecting the optimal response given a user and system utterance history in retrievalbased multi-turn dialog systems. Recently, pre-trained language models (e.g., BERT, RoBERTa, and ELECTRA) showed significant improvements in various natural language processing tasks. This and similar response selection tasks can also be solved using such language models by formulating the tasks as dialog–response binary classification tasks. Although existing works using this approach successfully obtained stateof-the-art results, we observe that language models trained in this manner tend to make predictions based on the relatedness of history and candidates, ignoring the sequential nature of multi-turn dialog systems. This suggests that the response selection task alone is insufficient for learning temporal dependencies between utterances. To this end, we propose utterance manipulation strategies (UMS) to address this problem. Specifically, UMS consist of several strategies (i.e., insertion, deletion, and search), which aid the response selection model towards maintaining dialog coherence. Further, UMS are selfsupervised methods that do not require additional annotation and thus can be easily incorporated into existing approaches. Extensive evaluation across multiple languages and models shows that UMS are highly effective in teaching dialog consistency, which leads to models pushing the state-of-the-art with significant margins on multiple public benchmark datasets.
