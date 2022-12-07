---
layout: post
research-area: COMPUTER VISION
title: "Revisiting the Importance of Amplifying Bias for Debiasing"
slug: AAAI-debiasing
description:
published-date: 2023-02-07
publisher: AAAI
publisher-fullname: Association for the Advancement of Artificial Intelligence (AAAI)
authors:
  - 이정수:카이스트, 카카오엔터프라이즈
  - 박정훈:카이스트, 카카오엔터프라이즈
  - 김대영:카이스트
  - michael:카카오엔터프라이즈
  - 최윤재:카이스트
  - 주재걸:카이스트
paper: https://arxiv.org/pdf/2205.14594.pdf
code: 
tag:
---

# Abstract

In image classification, debiasing aims to train a classifier to be less susceptible to dataset bias, the strong correlation between peripheral attributes of data samples and a target class. For example, even if the frog class in the dataset mainly consists of frog images with a swamp background (i.e., biasaligned samples), a debiased classifier should be able to correctly classify a frog at a beach (i.e., bias-conflicting samples). Recent debiasing approaches commonly use two components for debiasing, a biased model f<sub>B</sub> and a debiased model f<sub>D</sub>. f<sub>B</sub> is trained to focus on bias-aligned samples (i.e., overfitted to the bias) while f<sub>D</sub> is mainly trained with bias-conflicting samples by concentrating on samples which f<sub>B</sub> fails to learn, leading f<sub>D</sub> to be less susceptible to the dataset bias. While the state-of-the-art debiasing techniques have aimed to better train f<sub>D</sub>, we focus on training f<sub>B</sub>, an overlooked component until now. Our empirical analysis reveals that removing the bias-conflicting samples from the training set for f<sub>B</sub> is important for improving the debiasing performance of f<sub>D</sub>. This is due to the fact that the biasconflicting samples work as noisy samples for amplifying the bias for f<sub>B</sub> since those samples do not include the bias attribute. To this end, we propose a simple yet effective data sample selection method which removes the bias-conflicting samples to construct a bias-amplified dataset for training f<sub>B</sub>. Our data sample selection method can be directly applied to existing reweighting-based debiasing approaches, obtaining consistent performance boost and achieving the state-of-theart performance on both synthetic and real-world datasets.
