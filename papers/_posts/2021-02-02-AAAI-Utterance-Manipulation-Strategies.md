---
layout: post
research-area: NLP
title: "Do Response Selection Models Really Know What's Next? Utterance Manipulation Strategies for Multi-turn Response Selection"
slug: aaai2021-multi-turn-response-selection
description: 응답 선택에서 대화 맥락에 호응하면서도 의미적 유사도가 높은 문장을 선택하는 기법 'UMS' 제안
published-date: 2021-02-02
publisher: AAAI
publisher-fullname : Association for Advancement of AI (AAAI)
authors:
  - 황태선:고려대학교
  - jude:카카오
  - 오동석:고려대학교
  - 이찬희:고려대학교
  - mat:카카오엔터프라이즈
  - hubert:카카오엔터프라이즈
  - 이새벽:Wisenut Inc/고려대학교
paper: https://arxiv.org/pdf/2009.04703.pdf
code:
tag:
- response selection
- multi-turn dialog
---

응답 선택<sup>response selection</sup>은 다자 간의 대화<sup>multi-turn dialog</sup>를 보고 후보 문장 중 맥락에 가장 어울리는 문장을 선택하는 태스크를 가리킵니다. 최근에는 BERT, RoBERTa, ELECTRA와 같은 대규모 말뭉치를 사전학습한 언어 모델<sup>language model</sup>을 이용해 관련 벤치마크 테스트에서 눈에 띄는 성능 향상이 이뤄졌습니다.

최신 언어 모델 기반한 응답 선택 모델은 대화와 응답 후보군을 입력받으면, 후보 문장의 적정성 여부를 이진 분류<sup>binary classification</sup>[^1]한 결과를 내놓습니다. 공동 연구팀은 의미적 유사도를 기반으로 점수를 내는 언어 모델의 특성상, 응답으로 적절하지 않은 문장에 정답보다 더 높은 점수를 부여하는 경향성을 보이는 기존 방식의 한계를 지적했습니다. 이는 기존의 손실 함수<sup>loss function</sup>가 발화<sup>utterance</sup>[^2] 간 연관성<sup>coherence</sup>을 충분히 표현하지 못해서 생기는 거로 분석됩니다.

[^1]: 이진 분류 과정은 다음과 같다. (1) 비선형 활성 함수<sup>activation function</sup>인 시그모이드<sup>sigmoid</sup>를 이용해 점수를 산출한다(eg., 0번(올바른 응답) 클래스: 0.87, 1번(올바르지 않은 응답) 클래스: 0.6). (2) 각 클래스 점수값 중 큰 쪽을 선택하는 이진분류를 수행한다.

[^2]: 대화 속에서 주고 받는 말의 단위

{% include image.html name="001.png" align="center" %}
<em>[ 그림 1 ] LM에 기반한 최신의 응답 선택 모델은 대화의 맥락에 호응하지 않음에도 불구, 의미적 유사도가 높은 문장 b에 더 높은 점수를 부여하고 있다.</em>

공동 연구팀은 기존의 한계를 극복하고자 UMS<sup>Utterance Manipulation Strategies</sup>를 제안했습니다. 이 기법은 대화에서 특정 발화가 어느 위치에 삽입돼야 하는지(insertion), 현재 대화 흐름에서 어떤 발화가 올바르지 않은지(deletion), 특정 발화의 바로 이전 발화의 위치가 어딘지(search)를 배우는 3가지 태스크로 구성됩니다. 자가지도학습<sup>self-supervised learning</sup>[^3]이라 사람이 따로 라벨링 작업을 할 필요가 없고, 기존의 응답 선택 모델을 따로 조정할 필요 없이 미세조정<sup>fine-tuning</sup>단계에서 합동 훈련<sup>joint-training</sup>을 진행하면 됩니다[^4].

[^3]: 비라벨링 데이터만 주어진 상태에서 입력 데이터 일부를 라벨로 사용하거나, 사전 지식에 따라 라벨을 스스로 만들어 모델을 훈련하는 방식

[^4]: 공동 연구팀이 제안한 방법은 4개의 손실값(response selection loss + insertion loss + deletion loss + search loss Loss)을 최소화하는 가중치<sup>weight</sup> 탐색을 목표로 학습을 진행한다.

실험 결과, UMS를 적용한 응답 선택 모델은 대화 일관성을 효과적으로 학습하며, 여러 언어의 벤치마크<sup>benchmark</sup>에서 기존 성능을 크게 넘어섰습니다.

카카오엔터프라이즈는 대화의 맥락에 호응하는 응답을 선택하는 모델의 강건성을 향상하는 연구를 계속 진행할 계획입니다.

<br/>

# Overall Architecture

Figure 1 describes the overview of our proposed method, utterance manipulation strategies. We propose a multi-task learning framework, which consists of three highly effective auxiliary tasks for multi-turn response selection, utterance 1) insertion, 2) deletion, and 3) search. These tasks are jointly trained with the response selection model during the fine-tuning period. To train the auxiliary tasks, we add new special tokens, [INS], [DEL], and [SRCH] for the utterance insertion, deletion, and search tasks, respectively.


{% include image.html name="002.png" align="center" %}
<em>[ Figure 1 ] An overview of Utterance Manipulation Strategies. Input sequence for each manipulation strategy is dynamically constructed by extracting k consecutive utterances from the original dialog context during the training period. Also, target utterance is randomly chosen from either the dialog context (Insertion, Search) or the random dialog (Deletion).</em>

<br/>

# Experiments

We obtained new state-of-the-art results on multiple public benchmark datasets (i.e., Ubuntu, Douban, and E-Commerce) and significantly improved results on Korean open-domain dialog corpus.

{% include image.html name="003.png" align="center" %}
<em>[ Table 2 ] Results on Ubuntu, Douban, and E-Commerce datasets. All the evaluation results except ours are cited from published literature (Tao et al. 2019b; Yuan et al. 2019; Gu et al. 2020). The underlined numbers mean the best performance for each block and the bold numbers mean state-of-the-art performance for each metric. † denotes statistical significance (p-value < 0.05).</em>

# footnote
