---
layout: post
research-area: KNOWLEDGE GRAPH
title: "ComDensE : Combined Dense Embedding of Relation-aware and Common Features for Knowledge Graph Completion"
slug: ICPR-ComDensE
description:
published-date: 2022-08-21
publisher: ICPR
publisher-fullname: International Conference on Pattern Recognition (ICPR)
authors:
  - lucas:카카오엔터프라이즈
  - 백승준:고려대
paper: 
code: 
tag:
---

# Abstract

Real-world knowledge graphs (KG) are mostly incomplete. The problem of recovering missing relations, called KG completion, has recently become an active research area. Knowledge graph (KG) embedding, a low-dimensional representation of entities and relations, is the crucial technique for KG completion. Convolutional neural networks in models such as ConvE, SACN, InteractE, and RGCN achieve recent successes. This paper takes a different architectural view and proposes ComDensE which combines relation-aware and common features using dense neural networks. In the relation-aware feature extraction, we attempt to create relational inductive bias by applying an encoding function specific to each relation. In the common feature extraction, we apply the common encoding function to all input embeddings. These encoding functions are implemented using dense layers in ComDensE. ComDensE achieves the state-of-the-art performance in the link prediction in terms of MRR, HIT@1 on FB15k-237 and HIT@1 on WN18RR compared to the previous baseline approaches. We conduct an extensive ablation study to examine the effects of the relation-aware layer and the common layer of the ComDensE. Experimental results illustrate that the combined dense architecture as implemented in ComDensE achieves the best performance.
