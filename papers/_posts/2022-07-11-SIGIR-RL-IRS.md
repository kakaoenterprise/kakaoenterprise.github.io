---
layout: post
research-area: REINFORCEMENT LEARNING
title: "Towards Validating Long-Term User Feedbacks in Interactive Recommendation Systems"
slug: SIGIR-RL-IRS
description:
published-date: 2022-07-11
publisher: SIGIR
publisher-fullname: Special Interest Group on Information Retrieval (SIGIR)
authors:
  - 이호준:카이스트
  - 황동윤:카이스트
  - leonard:카카오엔터프라이즈
  - 주재걸:카이스트
paper: https://dl.acm.org/doi/abs/10.1145/3477495.3531869
code: 
tag:
---

# Abstract

Interactive Recommender Systems (IRSs) have attracted a lot of attention, due to their ability to model interactive processes between users and recommender systems. Numerous approaches have adopted Reinforcement Learning (RL) algorithms, as these can directly maximize users’ cumulative rewards. In IRS, researchers commonly utilize publicly available review datasets to compare and evaluate algorithms. However, user feedback provided in public datasets merely includes instant responses (e.g., a rating), with no inclusion of delayed responses (e.g., the dwell time and the lifetime value). Thus, the question remains whether these review datasets are an appropriate choice to evaluate the long-term effects in IRS. In this work, we revisited experiments on IRS with review datasets and compared RL-based models with a simple reward model that greedily recommends the item with the highest one-step reward. Following extensive analysis, we can reveal three main findings: First, a simple greedy reward model consistently outperforms RLbased models in maximizing cumulative rewards. Second, applying higher weighting to long-term rewards leads to degradation of recommendation performance. Third, user feedbacks have mere long-term effects in the benchmark datasets. Based on our findings, we conclude that a dataset has to be carefully verified and that a simple greedy baseline should be included for a proper evaluation of RL-based IRS approaches. Our code and dataset are available at https://github.com/dojeon-ai/irs_validation.
