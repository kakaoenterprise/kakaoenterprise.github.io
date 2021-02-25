---
layout: post
research-area: COMPTER VISION
title: "Diversified Mutual Learning for Deep Metric Learning"
slug: eccv2020-deep-metric-learning
description: 여러 모델간 상호학습 방식으로 이미지 검색 성능을 높이는 기법 제안
published-date: 2020-09-09
publisher: ECCV workshop on TASK-CV
publisher-fullname: ECCV workshop on TASK-CV(Transferring and Adapting Source Knowledge in Computer Vision)
authors:
  - tony:카카오
  - 김원재:카카오
  - 유기현:카카오엔터프라이즈/POSTECH
  - 조민수:POSTECH
paper: https://arxiv.org/pdf/2009.04170.pdf
code:
tag:
  - image retrieval
---

# Abstract

Mutual learning is an ensemble training strategy to improve generalization by transferring individual knowledge to each other while simultaneously training multiple models. In this work, we propose an effective mutual learning method for deep metric learning, called Diversified Mutual Metric Learning, which enhances embedding models with diversified mutual learning. We transfer relational knowledge for deep metric learning by leveraging three kinds of diversities in mutual learning: (1) model diversity from different initializations of models, (2) temporal diversity from different frequencies of parameter update, and (3) view diversity from different augmentations of inputs. Our method is particularly adequate for inductive transfer learning at the lack of large-scale data, where the embedding model is initialized with a pretrained model and then fine-tuned on a target dataset. Extensive experiments show that our method significantly improves individual models as well as their ensemble. Finally, the proposed method with a conventional triplet loss achieves the state-of-the-art performance of Recall@1 on standard datasets: 69.9 on CUB-200-2011 and 89.1 on CARS-196.
