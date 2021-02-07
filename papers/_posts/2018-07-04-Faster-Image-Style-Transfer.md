---
layout: post
research-area:
title: Uncorrelated Feature Encoding for Faster Image Style Transfer
slug: uncorrelated-feature-encoding-for-faster-image-style-transfer
description:
published-date: 2018-07-04
publisher: arXiv
authors:
  - 김민성:영남대학교
  - isaac.giant:카카오
  - joshua.ai:카카오
  - 최현철:영남대학교
paper: https://arxiv.org/pdf/1807.01493.pdf
code:
tag:
  - image style transfer
---

# Abstract

Recent fast style transfer methods use a pre-trained convolutional neural network as a feature encoder and a perceptual loss network. Although the pre-trained network is used to generate responses of receptive fields effective for representing style and content of image, it is not optimized for image style transfer but rather for image classification. Furthermore, it also requires a time-consuming and correlation-considering
feature alignment process for image style transfer because of its interchannel correlation. In this paper, we propose an end-to-end learning method which optimizes an encoder/decoder network for the purpose of
style transfer as well as relieves the feature alignment complexity from considering inter-channel correlation. We used uncorrelation loss, i.e., the total correlation coefficient between the responses of different encoder channels, with style and content losses for training style transfer network. This makes the encoder network to be trained to generate interchannel uncorrelated features and to be optimized for the task of image style transfer which maintained the quality of image style only with a light-weighted and correlation-unaware feature alignment process. Moreover, our method drastically reduced redundant channels of the encoded feature and this resulted in the efficient size of structure of network and faster forward processing speed. Our method can also be applied to cascade network scheme for multiple scaled style transferring and allows user-control of style strength by using a content-style trade-off parameter.
