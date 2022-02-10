---
layout: post
research-area: NLP
title: "Multimodal Interactions Using Pretrained Unimodal Models for SIMMC 2.0"
slug: aaai-simmc
description:
published-date: 2022-02-28
publisher: AAAI Workshop
publisher-fullname: Association for Advancement of AI (AAAI) Workshop
authors:
  - rung:카카오엔터프라이즈
  - mat:카카오엔터프라이즈
paper: https://arxiv.org/pdf/2112.05328.pdf
code: https://github.com/rungjoo/simmc2.0 
tag:
---

# Abstract

This paper presents our work on the Situated Interactive MultiModal Conversations 2.0 challenge held at Dialog State Tracking Challenge 10. SIMMC 2.0 includes 4 subtasks, and we introduce our multimodal approaches for the subtask #1, #2 and the generation of subtask #4. SIMMC 2.0 dataset is a multimodal dataset containing image and text information, which is more challenging than the problem of only text-based conversations because it must be solved by understanding the relationship between image and text. Therefore, since there is a limit to solving only text models such as BERT or GPT2, we propose a multimodal model combining image and text. We first pretrain the multimodal model to understand the relationship between image and text, then finetune our model for each task. We achieve the 3rd best performance in subtask #1, #2 and a runner-up in the generation of subtask #4. The source code is available at https://github.com/rungjoo/simmc2.0.
