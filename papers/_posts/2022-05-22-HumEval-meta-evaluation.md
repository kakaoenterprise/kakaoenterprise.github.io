---
layout: post
research-area: NLP
title: "Vacillating Human Correlation of SacreBLEU in Unprotected Languages"
slug: HumEval-meta-evaluation
description:
published-date: 2022-05-22
publisher: Human Evaluation of NLP Systems Workshop at ACL
authors:
  - ria:카카오엔터프라이즈
  - rob:카카오엔터프라이즈
paper: 
code: 
tag:

---

# Abstract

SacreBLEU, by incorporating a text normalizing step in the pipeline, has become a rising automatic evaluation metric in recent MT studies. With agglutinative languages such as Korean, however, the lexical-level metric cannot provide a conceivable result without a customized pre-tokenization. In this regard, this paper endeavors to examine the influence of diversified tokenization schemes –-word, morpheme, subword, character, and consonants & vowels (CV)–- on the metric, after its protective layer is peeled off.  
By performing meta-evaluation with manually-constructed into-Korean resources, our empirical study demonstrates that the human correlation of the surface-based metric and other homogeneous ones (as an extension) vacillates greatly by the token type. Moreover, the human correlation of the metric often deteriorates due to some tokenization, with CV one of its culprits. Guiding through the proper usage of tokenizers for the given metric, we discover i) the feasibility of the character tokens, and ii) the deficit of CV in the Korean MT evaluation.
