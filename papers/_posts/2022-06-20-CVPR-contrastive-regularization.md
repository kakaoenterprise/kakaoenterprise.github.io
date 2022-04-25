---
layout: post
research-area: COMPUTER VISION
title: "Contrastive Regularization for Semi-Supervised Learning"
slug: cvpr-contrastive-regularization
description:
published-date: 2022-06-20
publisher: L3D-IVU Workshop at CVPR
authors:
  - 이도엽:POSTECH,카카오브레인
  - 김성웅:카카오브레인
  - 김일두:카카오브레인
  - yj:카카오엔터프라이즈
  - 조민수:POSTECH
  - 한욱신:POSTECH
paper: https://arxiv.org/pdf/2201.06247.pdf
code:
tag: Machine_Learning
---

# Abstract

Consistency regularization on label predictions becomes a fundamental technique in semi-supervised learning, but it still requires a large number of training iterations for high performance. In this study, we analyze that the consistency regularization restricts the propagation of labeling information due to the exclusion of samples with unconfident pseudo-labels in the model updates. Then, we propose contrastive regularization to improve both efficiency and accuracy of the consistency regularization by well-clustered features of unlabeled data. In specific, after strongly augmented samples are assigned to clusters by their pseudo-labels, our contrastive regularization updates the model so that the features with confident pseudo-labels aggregate the features in the same cluster, while pushing away features in different clusters. As a result, the information of confident pseudo-labels can be effectively propagated into more unlabeled samples during training by the well-clustered features. On benchmarks of semi-supervised learning tasks, our contrastive regularization improves the previous consistency-based methods and achieves state-of-the-art results, especially with fewer training iterations. Our method also shows robust performance on open-set semi-supervised learning where unlabeled data includes out-of-distribution samples.
