---
layout: post
research-area: COMPUTER VISION
title: "Efficient Skeleton-Based Action Recognition via Joint-Mapping strategies"
slug: wacv-action-recognition
description:
published-date: 2023-01-03
publisher: WACV
publisher-fullname: IEEE/CVF Winter Conference on Applications of Computer Vision (WACV)
authors:
  - marcus:카카오엔터프라이즈
  - benjamin:카카오엔터프라이즈
  - sam:카카오엔터프라이즈
paper:
code: 
tag:
---

# Abstract

Graph convolutional networks (GCNs) have brought remarkable progress in skeleton-based action recognition. However, high computational cost and large model size make models difficult to be applied in real-world embedded system. Specifically, GCN that is applied in automated surveillance system pre-require models such as pedestrian detection and human pose estimation. Therefore, each model should be computationally lightweight and whole process should be operated in real-time. In this paper, we propose two different joint-mapping modules to reduce the number of joint representations, alleviating a total computational cost and model size. Our models achieve better accuracy-latency trade-off compared to previous state-of-the-arts on two datasets, namely NTU RGB+D and NTU RGB+D 120, demonstrating the suitability for practical applications. Furthermore, we measure the latency of the models by using TensorRT framework to compare the models from a practical perspective.
