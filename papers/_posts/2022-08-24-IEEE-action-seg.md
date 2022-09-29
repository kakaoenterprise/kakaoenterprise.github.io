---
layout: post
research-area: COMPUTER VISION
title: "Efficient Two-Stream Network for Online Video Action Segmentation"
slug: IEEE-action-seg
description:
published-date: 2022-08-24
publisher: IEEE Access
publisher-fullname: IEEE Access
authors:
  - marcus:카카오엔터프라이즈
  - 박래홍:서강대
  - 박형민:서강대
paper: https://ieeexplore.ieee.org/abstract/document/9866031
code: 
tag:
---

# Abstract

Temporal action segmentation is a task of predicting frame-level classes of untrimmed long-termed videos. It can be widely used in various applications including customer analysis, data collection, video indexing, and surveillance. Learning good representations from videos such as motion and spatial representation is a critical factor for model performance. Furthermore, the used model should make reliable decisions with low latency for practical use in a resource-constrained environment. However, many works in action segmentation consider just an accuracy using the pre-calculated representations from heavy 3-dimensional(3D) networks. In this paper, we propose a two-stream action segmentation pipeline that can learn motion and spatial information efficiently and operate online. While the temporal stream combines frame-grouping and TSM for capturing short-term dynamics and long-term temporal information at the same time, the spatial stream captures information on color and appearance complementary to representations from the temporal stream. In addition, the results of both the streams are combined by a cross-attention module to provide a desired classification result for the task. Since it can be operated without heavy 3D convolutional neural networks (CNNs), it takes much less memory and computation than conventional 3D-CNN-based methods. Our proposed network using a non-overlapping sliding window achieved segmentation performance on two action segmentation datasets comparable to many recent works that require full temporal resolution and pre-calculated features of 3D CNNs.
