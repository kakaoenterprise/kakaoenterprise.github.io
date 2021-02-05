---
layout: post
research-area: SPEECH/AUDIO
title: "Accelerating Neural Transducer Inference via Adaptive Expansion Search"
slug: ieee2020-accelerating-neural-transducer-inference
description: E2E 음성인식의 가속화를 위한 적응적 검색 기법 ‘AES’ 제안
published-date: 2020-12-06
publisher: IEEE Signal Processing Letters
authors:
  - jaytee.k:카카오엔터프라이즈
  - tony.l:카카오
  - chris.ekim:카카오엔터프라이즈
paper: https://ieeexplore.ieee.org/document/9250505
code:
tag:
  - voice recognition
---

# Abstract

Recurrent neural network transducers (RNN-T) are a promising end-to-end speech recognition framework that transduce input acoustic frames to a character sequence. Best- and breadth-first searches have been used as decoding strategies for RNN-T. However, best-first search follows a sequential process for its expansion search, which slows down the decoding process. Although breadth-first search replaces the sequential process of best-first search with a parallel one, it unnecessarily conducts an expansion search for all decoding steps. As most of the decoding frames correspond to a blank symbol because the length of the character sequence is much shorter than that of the decoding frames, this induces computational overhead. To address these limitations, we introduce an adaptive expansion search (AES) to accelerate RNN-T inference. AES overcomes the aforementioned limitations by batching the hypotheses and adopting a decision-making process that decides whether to continue the expansion search; thus, AES can avoid unnecessary expansion search. Furthermore, pruning is applied to AES for further acceleration. We achieved significant speedup and a lower word error rate compared with other baselines.
