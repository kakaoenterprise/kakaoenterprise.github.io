---
layout: post
research-area: SPEECH/AUDIO
title: "Automatic Pronunciation Assessment using Self-Supervised Speech Representation Learning"
slug: interspeech-pronunciation
description:
published-date: 2022-09-18
publisher: INTERSPEECH
publisher-fullname: Conference of the International Speech Communication Association (INTERSPEECH)
authors:
  - chris:카카오엔터프라이즈
  - jeffrey:카카오엔터프라이즈
  - heize:카카오엔터프라이즈
  - eldon:카카오엔터프라이즈
paper: https://arxiv.org/pdf/2204.03863.pdf
code: 
tag:
---

# Abstract

Self-supervised learning (SSL) approaches such as wav2vec 2.0 and HuBERT models have shown promising results in various downstream tasks in the speech community. In particular, speech representations learned by SSL models have been shown to be effective for encoding various speech-related characteristics. In this context, we propose a novel automatic pronunciation assessment method based on SSL models. First, the proposed method fine-tunes the pre-trained SSL models with connectionist temporal classification to adapt the English pronunciation of English-as-a-second-language (ESL) learners in a data environment. Then, the layer-wise contextual representations are extracted from all across the transformer layers of the SSL models. Finally, the automatic pronunciation score is estimated using bidirectional long short-term memory with the layer-wise contextual representations and the corresponding text. We show that the proposed SSL model-based methods outperform the baselines, in terms of the Pearson correlation coefficient, on datasets of Korean ESL learner children and Speechocean762. Furthermore, we analyze how different representations of transformer layers in the SSL model affect the performance of the pronunciation assessment task.
