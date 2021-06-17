---
layout: post
research-area: NLP
title: "Korean Erroneous Sentence Classification with Integrated Eojeol Embedding"
slug: ieeeaccess2021-iee
description:
published-date: 2021-06-05
publisher: IEEE Access
authors:
  - heuristic:카카오엔터프라이즈
  - pin:카카오엔터프라이즈
  - index:카카오엔터프라이즈
  - jason:카카오엔터프라이즈
  - 신동렬:성균관대학교
paper: https://ieeexplore.ieee.org/document/9446068
code:
tag:
  - sentence classfication
---

# Abstract

This paper attempts to analyze the Korean sentence classification system. Sentence classification is the task of classifying an input sentence based on predefined categories. However, spelling or space error contained in the input sentence causes problems in morphological analysis and tokenization. This paper proposes a novel approach of Integrated Eojeol(Korean syntactic word separated by space) Embedding to reduce the effect of poorly analyzed morphemes on sentence classification. The paper also proposes two noise insertion methods that further improve classification performance. Our evaluation results indicate that by applying the proposed methods on the existing sentence classifiers, the sentence classification accuracy on erroneous sentences is increased by 8% to 15%.

<br/>

{% include image.html name="001.png" width="55%" align="center" %}
<em class="center">[ Figure 1 ] Network architecture to get the proposed integrated eojeol embedding </em>
