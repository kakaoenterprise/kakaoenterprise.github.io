---
layout: post
research-area: NLP
title: "CoMPM: Context Modeling with Speaker's Pre-trained Memory Tracking for Emotion Recognition in Conversation"
slug: NAACL-CoMPM
description:
published-date: 2022-07-10
publisher: NAACL
publisher-fullname: North American Chapter of the Association for Computational Linguistics (NAACL)
authors:
  - rung:카카오엔터프라이즈
  - dan:카카오엔터프라이즈
paper: https://arxiv.org/pdf/2108.11626.pdf
code: 
tag:
---

# Abstract

As the use of interactive machines grow, the task of Emotion Recognition in Conversation (ERC) became more important. If the machine-generated sentences reflect emotion, more human-like sympathetic conversations are possible. Since emotion recognition in conversation is inaccurate if the previous utterances are not taken into account, many studies reflect the dialogue context to improve the performances. Many recent approaches show performance improvement by combining knowledge into modules learned from external structured data. However, structured data is difficult to access in non-English languages, making it difficult to extend to other languages. Therefore, we extract the pre-trained memory using the pre-trained language model as an extractor of external knowledge. We introduce CoMPM, which combines the speaker's pre-trained memory with the context model, and find that the pre-trained memory significantly improves the performance of the context model. CoMPM achieves the first or second performance on all data and is state-of-the-art among systems that do not leverage structured data. In addition, our method shows that it can be extended to other languages because structured knowledge is not required, unlike previous methods.
