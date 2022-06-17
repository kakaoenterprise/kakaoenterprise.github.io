---
layout: post
research-area: SPEECH/AUDIO
title: "Generalizing RNN-Transducer to Out-Domain Audio via Sparse Self-Attention Layers"
slug: interspeech-rnn-t
description:
published-date: 2022-09-18
publisher: INTERSPEECH
publisher-fullname: Conference of the International Speech Communication Association (INTERSPEECH)
authors:
  - 김준태:SK텔레콤
  - jessie:카카오엔터프라이즈
paper: 
code: 
tag:
---

# Abstract

Recurrent neural network transducer (RNN-T) is an end-to-end speech recognition framework converting input acoustic frames into a character sequence. The state-of-the-art encoder network for RNN-T is the Conformer, which can effectively model the local-global context information via its convolution and self-attention layers. Although Conformer RNN-T has shown outstanding performance, most studies have been verified in the setting where the train and test data are drawn from the same domain. The domain mismatch problem for Conformer RNN-T has not been intensively investigated yet, which is an important issue for the product-level speech recognition system. In this study, we identified that fully connected self-attention layers in the Conformer caused high deletion errors, specifically in the long-form out-domain utterances. To address this problem, we introduce sparse self-attention layers for Conformer-based encoder networks, which can exploit local and generalized global information by pruning most of the in-domain fitted global connections. Also, we propose a state reset method for the generalization of the prediction network to cope with long-form utterances. Applying proposed methods to an out-domain test, we obtained 27.6% relative character error rate (CER) reduction compared to the fully connected self-attention layer-based Conformers.
