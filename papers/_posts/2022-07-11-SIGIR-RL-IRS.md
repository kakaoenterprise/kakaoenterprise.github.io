---
layout: post
research-area: REINFORCEMENT LEARNING
title: "Revisiting Interactive Recommender System with Reinforcement Learning"
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
paper: 
code: 
tag:
---

# Abstract

Interactive Recommender Systems (IRS) have drawn a lot of attention, due to their ability in modeling the interactive process between the user and the recommender system. Recently, numerous works have adopted Reinforcement Learning (RL) algorithms, which directly maximize the user’s cumulative rewards, in IRS.
In IRS, researchers commonly utilize the publicly available review datasets to compare and evaluate the algorithms. However, the user feedbacks provided in the public datasets only include an instant response (e.g., rating), without any inclusion of delayed response (e.g., dwell-time, lifetime value). Thus, the question remains whether the review datasets are an appropriate choice to evaluate the long-term effects in IRS.  
In this work, we revisit the experiments on the IRS with the review datasets and compare the RL-based models with a simple reward model that greedily recommends the item with the highest one-step reward. Through extensive experiments, we found the followings: First, a simple greedy reward model outperforms the RL-based models in maximizing the cumulative rewards. Second, applying more weights on long-term rewards degrades the recommendation performance. Third, recommended items have mere long-term effects in the benchmark datasets. From these findings, we conclude that a dataset must be carefully verified and a simple greedy baseline should be included for a proper evaluation in the RL-based IRS.
