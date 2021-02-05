---
layout: post
research-area: SPEECH
title: "Many-to-Many Voice Conversion using Conditional Cycle-Consistent Adversarial Networks"
slug: icassp2020-many-to-many-voice-conversion
description: CycleGAN을 활용해 다자 간 음성 스타일을 변환하는 기법 제안
published-date: 2020-02-15
publisher: ICASSP
authors:
  - 이신동:고려대학교/카카오엔터프라이즈
  - 고봉구:고려대학교
  - 이건녕:고려대학교
  - 유인철:고려대학교
  - 육동석:고려대학교
paper: https://arxiv.org/abs/2002.06328
code:
tag:
  - Voice Conversion
---

# Abstract

Voice conversion (VC) refers to transforming the speaker characteristics of an utterance without altering its linguistic contents. Many works on voice conversion require to have parallel training data that is highly expensive to acquire. Recently, the cycle-consistent adversarial network(CycleGAN), which does not require parallel training data, has been applied to voice conversion, showing the state-of-the-art performance. The CycleGAN based voice conversion, however, can be used only for a pair of speakers, i.e., one-to-one voice conversion between two speakers. In this paper, we extend the CycleGAN by conditioning the network on speakers. As a result, the proposed method can perform many-to-many voice conversion among multiple speakers using a single generative adversarial network (GAN). Compared to building multiple CycleGANs for each pair of speakers, the proposed method reduces the computational and spatial cost significantly without compromising the sound quality of the converted voice. Experimental results using the VCC2018 corpus confirm the efficiency of the proposed method.
