---
layout: post
research-area: SPEECH/AUDIO
title: "Multitask Learning and Joint Optimization For Transformer-Rnn-Tranducer Speech Recognition"
slug: icassp2021-transformer-rnn-tranducer-speech-recognition
description:
published-date: 2021-06-13
publisher: ICASSP
publisher-fullname: International Conference on Acoustics, Speech, and Signal Processing (ICASSP)
authors:
  - jeffrey:카카오엔터프라이즈
  - chris:카카오엔터프라이즈
paper: https://arxiv.org/pdf/2011.00771.pdf
code:
tag:
---

# Abstract

Recently, several types of end-to-end speech recognition methods named transformer-transducer were introduced. According to those kinds of methods, transcription networks are generally modeled by transformer-based neural networks, while prediction networks could be modeled by either transformers or recurrent neural networks (RNN). This paper explores multitask learning, joint optimization, and joint decoding methods for transformer-RNN-transducer systems. Our proposed methods have the main advantage in that the model can maintain information on the large text corpus. We prove their effectiveness by performing experiments utilizing the well-known ESPNET toolkit for the widely used Librispeech datasets. We also show that the proposed meth- ods can reduce word error rate (WER) by 16.6 % and 13.3 % for test-clean and test-other datasets, respectively, with- out changing the overall model structure nor exploiting an external LM.
