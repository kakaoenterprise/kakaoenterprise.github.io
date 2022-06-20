---
layout: post
research-area: SPEECH/AUDIO
title: "JETS: Jointly Training FastSpeech2 and HiFi-GAN for End to End Text to Speech"
slug: interspeech-JETS
description:
published-date: 2022-09-18
publisher: INTERSPEECH
publisher-fullname: Conference of the International Speech Communication Association (INTERSPEECH)
authors:
  - satoshi:카카오엔터프라이즈
  - ronda:카카오엔터프라이즈
  - chris:카카오엔터프라이즈
paper: https://arxiv.org/pdf/2203.16852.pdf
code: 
tag:
---

# Abstract

In neural text-to-speech (TTS), two-stage system or a cascade of separately learned models have shown synthesis quality close to human speech. For example, FastSpeech2 transforms an input text to a mel-spectrogram and then HiFi-GAN generates a raw waveform from a mel-spectogram where they are called an acoustic feature generator and a neural vocoder respectively. However, their training pipeline is somewhat cumbersome in that it requires a fine-tuning and an accurate speech-text alignment for optimal performance. In this work, we present end-to-end text-to-speech (E2E-TTS) model which has a simplified training pipeline and outperforms a cascade of separately learned models. Specifically, our proposed model is jointly trained FastSpeech2 and HiFi-GAN with an alignment module. Since there is no acoustic feature mismatch between training and inference, it does not requires fine-tuning. Furthermore, we remove dependency on an external speech-text alignment tool by adopting an alignment learning objective in our joint training framework. Experiments on LJSpeech corpus shows that the proposed model outperforms publicly available, state-of-the-art implementations of ESPNet2-TTS on subjective evaluation (MOS) and some objective evaluations.
