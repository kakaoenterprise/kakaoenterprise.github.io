---
layout: post
research-area: COMPUTER VISION
title: "SmoothMix: Training Confidence-calibrated Smoothed Classifiers for Certified Robustness"
slug: neurips-smoothmix
description:
published-date: 2021-12-06
publisher: NeurIPS
publisher-fullname: Neural Information Processing Systems (NeurIPS)
authors:
  - 정종현:카이스트
  - 박세준:카이스트
  - 김민규:카이스트
  - andrew:카카오엔터프라이즈
  - 김도국:카카오엔터프라이즈
  - 신진우:카이스트
paper: 
code:
deepdive:
tag:
---

# Abstract

Randomized smoothing is currently a state-of-the-art method to construct a certifiably robust classifier from neural networks against l2-adversarial perturbations. Under the paradigm, the robustness of a classifier is aligned with the prediction confidence, i.e., the higher confidence from a smoothed classifier implies the better robustness. This motivates us to rethink the fundamental trade-off between accuracy and robustness in terms of calibrating confidences of smoothed classifier. In this paper, we propose a simple training scheme, coined SmoothMix, to control the robustness of smoothed classifiers via self-mixup: it trains convex combinations of samples along the direction of adversarial perturbation for each input. The proposed procedure effectively identifies over-confident, near off-class samples as a cause of limited robustness in case of smoothed classifiers, and offers an intuitive way to adaptively set a new decision boundary between these samples for better robustness. Our experimental results demonstrate that the proposed method can significantly improve the certified l2-robustness of smoothed classifiers compared to existing state-of-the-art robust training methods.
