---
layout: post
research-area: NLP
title: "Normalizing Mutual Information for Robust Adaptive Training for Translation"
slug: emnlp-translation
description:
published-date: 2022-12-07
publisher: EMNLP Short Paper
publisher-fullname : Empirical Methods in Natural Language Processing (EMNLP) Short Paper
authors:
  - 이영원:서울대
  - louis:카카오엔터프라이즈
  - lambda:카카오엔터프라이즈
  - 황승원:서울대
paper: https://aclanthology.org/2022.emnlp-main.547.pdf
code: 
tag:
---

# Abstract

Despite the success of neural machine translation models, tensions between fluency of optimizing target language modeling and sourcefaithfulness remain as challenges. Previously, Conditional Bilingual Mutual Information (CBMI), a scoring metric for the importance of target sentences and tokens, was proposed to encourage fluent and faithful translations. The score is obtained by combining the probability from the translation model and the target language model, which is then used to assign different weights to losses from sentences and tokens. Meanwhile, we argue this metric is not properly normalized, for which we propose Normalized Pointwise Mutual Information (NPMI). NPMI utilizes an additional language model on source language to approximate the joint likelihood of source-target pair and the likelihood of the source, which is then used for normalizing the score. We showed that NPMI better captures the dependence between source-target and that NPMI-based token-level adaptive training brings improvements over baselines with empirical results from En-De, De-En, and En-Ro translation tasks.
