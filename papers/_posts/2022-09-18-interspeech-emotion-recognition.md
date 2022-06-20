---
layout: post
research-area: NLP
title: "The Emotion is Not One-hot Encoding: Learning with Grayscale Label for Emotion Recognition in Conversation"
slug: interspeech-emotion-recognition
description:
published-date: 2022-09-18
publisher: INTERSPEECH
publisher-fullname: Conference of the International Speech Communication Association (INTERSPEECH)
authors:
  - rung:카카오엔터프라이즈
paper: https://arxiv.org/pdf/2206.07359.pdf
code: 
tag:
---

# Abstract

In emotion recognition in conversation (ERC), the emotion of the current utterance is predicted by considering the previous context, which can be utilized in many natural language processing tasks. Although multiple emotions can coexist in a given sentence, most previous approaches take the perspective of a classification task to predict only a given label. However, it is expensive and difficult to label the emotion of a sentence with confidence or multi-label. In this paper, we automatically construct a grayscale label considering the correlation between emotions and use it for learning. That is, instead of using a given label as a one-hot encoding, we construct a grayscale label by measuring scores for different emotions. We introduce several methods for constructing grayscale labels and confirm that each method improves the emotion recognition performance. Our method is simple, effective, and universally applicable to previous systems. The experiments show a significant improvement in the performance of baselines.
