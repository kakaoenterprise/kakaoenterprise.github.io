---
layout: post
research-area: NLP
title: "LittleBird: Efficient Faster & Longer Transformer for Question Answering"
slug: emnlp-littlebird
description:
published-date: 2022-12-07
publisher: EMNLP Long Paper
publisher-fullname : Empirical Methods in Natural Language Processing (EMNLP) Long Paper
authors:
  - phil:카카오엔터프라이즈
  - mat:카카오엔터프라이즈
  - index:카카오엔터프라이즈
paper: https://arxiv.org/pdf/2210.11870.pdf
code: 
tag:
---

# Abstract

BERT has shown a lot of sucess in a wide variety of NLP tasks. But it has a limitation dealing with long inputs due to its attention mechanism. Longformer, ETC and BigBird addressed this issue and effectively solved the quadratic dependency problem. However we find that these models are not sufficient, and propose LittleBird, a novel model based on BigBird with improved speed and memory footprint while maintaining accuracy. In particular, we devise a more flexible and efficient position representation method based on Attention with Linear Biases (ALiBi). We also show that replacing the method of global information represented in the BigBird with pack and unpack attention is more effective. The proposed model can work on long inputs even after being pre-trained on short inputs, and can be trained efficiently reusing existing pretrained language model for short inputs. This is a significant benefit for low-resource languages where large amounts of long text data are difficult to obtain. As a result, our experiments show that LittleBird works very well in a variety of languages, achieving high performance in question answering tasks, particularly in KorQuAD2.0, Korean Question Answering Dataset for long paragraphs.
