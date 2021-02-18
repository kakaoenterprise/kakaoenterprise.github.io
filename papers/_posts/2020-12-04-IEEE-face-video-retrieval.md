---
layout: post
research-area: COMPUTER VISION
title: "Face Video Retrieval Based on the Deep CNN With RBF Loss"
slug: ieee2020-face-video-retrieval
description:
published-date: 2020-12-04
publisher: IEEE Transactions on Image Processing
authors:
  - stephen:성균관대학교/카카오엔터프라이즈
  - 길이만:성균관대학교
paper: https://ieeexplore.ieee.org/document/9282191
code:
tag:
  - Face Video Retrieval
  - Metric Learning
---

# Abstract

This paper presents a novel framework to extract highly compact and discriminative features for face video retrieval tasks using the deep convolutional neural network (CNN). The face video retrieval task is to find the videos containing the face of a specific person from a database with a face image or a face video of the same person as a query. A key challenge is to extract discriminative features with small storage space from face videos with large intra-class variations caused by different angle, illumination, and facial expression. In recent years, the CNN-based binary hashing and metric learning methods showed notable progress in image/video retrieval tasks. However, the existing CNN-based binary hashing and metric learning have limitations in terms of inevitable information loss and storage inefficiency, respectively. To cope with these problems, the proposed framework consists of two parts: first, a novel loss function using a radial basis function kernel (RBF Loss) is introduced to train a neural network to generate compact and discriminative high-level features, and secondly, an optimized quantization using a logistic function (Logistic Quantization) is suggested to convert a real-valued feature to a 1-byte integer with the minimum information loss. Through the face video retrieval experiments on a challenging TV series data set (ICT-TV), it is demonstrated that the proposed framework outperforms the existing state-of-the-art feature extraction methods. Furthermore, the effectiveness of RBF loss was also demonstrated through the image classification and retrieval experiments on the CIFAR-10 and Fashion-MNIST data sets with LeNet-5.
