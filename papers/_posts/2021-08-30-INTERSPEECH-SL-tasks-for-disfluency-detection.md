---
layout: post
research-area: NLP
title: "Auxiliary Sequence Labeling Tasks for Disfluency Detection"
slug: interspeech2021-sl-tasks-for-disfluency-detection
description:
published-date: 2021-08-30
publisher: INTERSPEECH
publisher-fullname: Conference of the International Speech Communication Association (INTERSPEECH)
authors:
  - 이동엽:카카오
  - kobi:카카오엔터프라이즈
  - index:카카오엔터프라이즈
  - 황태선:와이즈넛
  - 조재춘:한신대학교
paper: https://arxiv.org/pdf/2011.04512.pdf
code:
tag:
---

# Abstract

Detecting disfluencies in spontaneous speech is an important preprocessing step in natural language processing and speech recognition applications. Existing works for disfluency detection have focused on designing a single objective only for disfluency detection, while auxiliary objectives utilizing linguistic information of a word such as named entity or part-of-speech information can be effective. In this paper, we focus on detecting disfluencies on spoken transcripts and propose a method utilizing named entity recognition(NER) and part-of-speech(POS) as auxiliary sequence labeling(SL) tasks for disfluency detection. First, we investigate cases that utilizing linguistic information of a word can prevent mispredicting important words and can be helpful for the correct detection of disfluencies. Second, we show that training a disfluency detection model with auxiliary SL tasks can improve its F-score in disfluency detection. Then, we analyze which auxiliary SL tasks are influential depending on baseline models. Experimental results on the widely used English Switchboard dataset show that our method outperforms the previous state-of-the-art in disfluency detection.
