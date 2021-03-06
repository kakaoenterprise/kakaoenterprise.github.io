---
layout: post
research-area: NLP
title: "AttnIO: Knowledge Graph Exploration with In-and-Out Attention Flow for Knowledge-Grounded Dialogue"
slug: emnlp2020-attnio
description: 대화 맥락에 따른 지식 그래프 경로 탐색 모델 'AttnIO' 제안
published-date: 2020-11-16
publisher: EMNLP
publisher-fullname : Empirical Methods in Natural Language Processing (EMNLP)
authors:
  - hoony:카카오엔터프라이즈
  - meta:카카오엔터프라이즈
  - james:카카오엔터프라이즈
paper: https://www.aclweb.org/anthology/2020.emnlp-main.280.pdf
code:
deepdive: 201214
tag:
- knowledge graph
---
산업 현장에서 많이 쓰이는 Seq2Seq 기반 대화 모델은 지식<sup>knowledge</sup>을 갖춘 문장 생성에 취약합니다. 이에 따라 지난 2019년부터는 외부에 구축해 둔 지식 그래프<sup>knowledge graph</sup>를 적극 활용해 지식을 갖춘 문장을 생성하는 연구가 활발히 이뤄져 왔습니다.

카카오엔터프라이즈가 제안한 AttnIO는 바로 이 지식 그래프 상에서 대화 맥락에 따라 경로를 탐색하는 모델<sup>path retrieval model</sup>입니다. 그래프 신경망<sup>graph neural networks</sup>에서 각 노드가 맥락 정보를 반영할 수 있게 하는 인코더(in-flow)와 대화 맥락에 따라 경로 탐색 범위를 조절하는 디코더(out-flow)로 구성돼 있습니다. AttnIO는 벤치마크 데이터셋인 OpenDialKG에서 현재 최고 수준의(SOTA) 추론 성능을 보였습니다.

카카오엔터프라이즈는 텍스트로부터 그래프와 같은 형태의 구조화된 지식을 추출하는 방향의 연구를 통해 자사 자연어처리 기술 개선에 기여할 계획입니다.

<br/>

# Abstract

Retrieving the proper knowledge relevant to conversational context is an important challenge in dialogue systems, to engage users with more informative responses. Several recent works propose to formulate this knowledge selection problem as a path traversal over an external knowledge graph(KG), but show only a limited utilization of KG structure, leaving rooms of improvement in performance. To this effect, we present AttnIO, a new dialog-conditioned path traversal model that makes a full use of rich structural information in KG based on two directions of attention flows. Through the attention flows, AttnIO is not only capable of exploring a broad range of multi-hop knowledge paths, but also learns to flexibly adjust the varying range of plausible nodes and edges to attend depending on the dialog context. Empirical evaluations present a marked performance improvement of AttnIO compared to all baselines in OpenDialKG dataset. Also, we find that our model can be trained to generate an adequate knowledge path even when the paths are not available and only the destination nodes are given as labels, making it more applicable to real-world dialogue systems.

<br/>

# Overall Architecture

AttnIO models the KG traversal mechanism into two sub-processes: incoming attention flow, and outgoing attention flow . At each decoding step, Incoming Attention Flow updates the representation of each node by aggregating messages coming from incoming edges. Outgoing Attention Flow then models path traversal on the knowledge graph by propagating attention from each node through outgoing edges, using the node representation from Incoming Attention Flow.

{% include image.html name="001.png" width="65%" align="center" %}
<em>[ Figure 1 ] AttnIO Model Overview</em>

<br/>

# Experiments

The empirical evaluations on OpenDialKG dataset show the strength of At- tnIO in knowledge retrieval compared to baselines. AttnIO can also be trained to generate proper paths even in a more affordable setting of target super- vision. Lastly, we show through case study that our model enjoys from transparent interpretation of path reasoning process, and is capable of intuitively modeling knowledge exploration depending on the dialog characteristics.

{% include image.html name="002.png" witdh="" align="center" %}
<em>[ Table 1 ] Performance of AttnIO in OpenDialKG, in comparison with baselines and ablation models. Results of the above 4 baselines (from Seq2Seq to DialKG Walker) are directly taken from Moon et al. (2019), as their code or implementation details are not available. Our model trained with all path supervision (AttnIO-AS) significantly outperforms all baselines.</em>
