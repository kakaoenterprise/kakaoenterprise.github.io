---
layout: post
research-area: NLP
title: "AligNART: Non-autoregressive Neural Machine Translation by JointlyLearning to Estimate Alignment and Translate"
slug: emnlp-alignart
description:
published-date: 2021-11-07
publisher: EMNLP
publisher-fullname : Empirical Methods in Natural Language Processing (EMNLP)
authors:
  - 송종윤:카카오엔터라이즈, 서울대
  - 김성원:서울대
  - 윤성로:서울대
paper: https://arxiv.org/pdf/2109.06481.pdf
code:
deepdive:
tag:
---

# Abstract

Non-autoregressive neural machine translation (NART) models suffer from the multi-modality problem which causes translation inconsistency such as token repetition. Most recent approaches have attempted to solve this problem by implicitly modeling dependencies between outputs. In this paper, we introduce AligNART, which leverages full alignment information to explicitly reduce the modality of the target distribution. AligNART divides the machine translation task into (i) alignment estimation and (ii) translation with aligned decoder inputs, guiding the decoder to focus on simplified one-to-one translation. To alleviate the alignment estimation problem, we further propose a novel alignment decomposition method. Our experiments show that AligNART outperforms previous non-iterative NART models that focus on explicit modality reduction on WMT14 En↔De and WMT16 Ro→En. Furthermore, AligNART achieves BLEU scores comparable to those of the state-of-the-art connectionist temporal classification based models on WMT14 En↔De. We also observe that AligNART effectively addresses the token repetition problem even without sequence-level knowledge distillation.