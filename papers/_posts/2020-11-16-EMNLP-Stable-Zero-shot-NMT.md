---
layout: post
research-area: NLP
title: "Sparse and Decorrelated Representations for Stable Zero-shot NMT"
slug: emnlp2020-stable-zero-shot-nmt
description: 강건한 제로샷 번역 모델을 위해 정규화 기법 'SLNI' 도입 제안
published-date: 2020-11-16
publisher: EMNLP Findings
authors:
  - meta:카카오엔터프라이즈
  - james:카카오엔터프라이즈
paper: https://www.aclweb.org/anthology/2020.findings-emnlp.205.pdf
code:
tag:
  - NMT
---

카카오엔터프라이즈 AI Lab(손보경, 류성원)이 쓴 논문 ‘Sparse and Decorrelated Representations for Stable Zero-shot NMT’가 EMNLP<sup id="a1">[1](#f1)</sup> 2020의 Findings of ACL에 게재됐습니다. 자연어처리에서 경험적 방법론을 다루는 이 학회는 ACL(Association for Computational Linguistics), NAACL(NORTH American Chapter of the ACL)과 함께 전산언어학 분야에서는 인지도가 높습니다. 올해에는 총 3,677개 중 754개의 논문이 통과됐습니다.

AI Lab은 훈련 조건의 변화에도 강건한 제로샷 모델을 만들고자 SLNI(Sparse coding through Local Neural Inhibition)를 이용해 정규화(regularization)<sup id="a2">[2](#f2)</sup>를 시도했습니다. 그 결과, transformer 인코더를 구성하는 하위층에서 서로 무관하면서도 희소한 특징 벡터(sparse and decorrelated representation)가 생성됩니다. AI Lab은 이 기법을 적용한 모델이 다양한 실험 조건 상에서 훈련된 방향의 번역 성능을 거의 그대로 유지하면서도, 제로샷에서 목표 언어의 문장을 안정적으로 생성해냄을 확인했습니다.

AI Lab은 후속 연구를 통해 제로샷 태스크가 훈련 조건 변화에 취약한 원인과 새로 제안한 기법의 문제 해결 원리를 파악하고, 번역 분야의 지속 학습(continual learning)<sup id="a3">[3](#f3)</sup>에 관한 새로운 탐색을 진행할 계획입니다. 자세한 소개는 블로그로 전해드리겠습니다.

<br/>

# Abstract

Using a single encoder and decoder for all directions and training with English-centric data is a popular scheme for multilingual NMT. However, zero-shot translation under this scheme is vulnerable to changes in training conditions, as the model degenerates by decoding non-English texts into English regardless of the target specifier token. We present that enforcing both sparsity and decorrelation on encoder intermediate representations with the SLNI regularizer efficiently mitigates this problem, without performance loss in supervised directions. Notably, effects of SLNI turns out to be irrelevant to promoting language-invariance in encoder representations.

<br/>

# Methods

SLNI is a regularizer that promotes sparse and decorrelated representations by penalizing correlation between neurons. We apply SLNI on the encoder-side. Outputs of every layer normalization (after both self-attention and position-wise feed-forward sublayers) are subject to regularization.

<br/>

# Experiments

Unlike the naive model, our model trained with SLNI shows stable performance across all training conditions, including the Compound setting where the naive model completely degenerates. Further- more, there is no evident performance decrease in supervised directions.

<img src="{{ site.url }}/assets/img/2020-11-16-stable-zero-shot-nmt/001.png" align="center">
<em>[ Table 1 ] Averaged BLEU scores for zero-shot (ZS) and supervised (SV) tasks, and ratio(%) of zero-shot outputs wrongly decoded into English.</em>

<br/>

-----
### footnote

<b id="f1"><sup>1</sup></b> Empirical Methods in Natural Language Processing의 약자. [본문으로](#a1)

<b id="f2"><sup>2</sup></b> 설명력이 높으면서도 그 구조가 간단한 모델의 상태를 일컫는다. [본문으로](#a2)

<b id="f3"><sup>3</sup></b> 주어진 데이터셋으로 학습을 마친 모델에 새로운 데이터셋을 훈련시켜 추가 지식을 습득하게 하는 학습 방식을 일컫는다. [본문으로](#a3)
