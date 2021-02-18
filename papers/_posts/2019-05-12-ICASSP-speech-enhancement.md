---
layout: post
research-area: SPEECH/VIDEO
title: Speech Enhancement Using a Two-Stage Network for an Efficient Boosting Strategy
slug: icassp2019-speech-enhancement
description:
published-date: 2019-05-12
publisher: ICASSP
authors:
  - jaytee.k:카카오
  - 한민수:KAIST
paper: https://ieeexplore.ieee.org/document/8668449
code:
tag:
  - speech enhancement
---

# Abstract

A novel neural network architecture, called two-stage network(TSN), with a multi-objective learning(MOL) method for an efficient boosting strategy(BS) is proposed for speech enhancement. BS is an ensemble method using multiple base predictions(MBPs) for better final prediction. Because of the necessity for MBPs, the computational cost and model size of BS-based methods are greater than those of a single model. In overcoming this, TSN first obtains MBPs from a single deep neural network. Then, to obtain better final prediction, the convolution layers of TSN aggregate not only MBPs but also some auxiliary information such as contextual information, while adaptively filtering out some unnecessary information, e.g., poor base predictions. At the training phase, the MOL enables all stages of TSN to learn jointly, whereas allowing the TSN framework to embed a BS. Our experimental results confirm that the embedded BS leads TSN to outperform other baseline methods with a reasonably low computational cost and model size.
