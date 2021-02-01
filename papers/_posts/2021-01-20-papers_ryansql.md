---
layout: post
title:  "RYANSQL: Recursively Applying Sketch-based Slot Fillings for Complex Text-to-SQL in Cross-Domain Databases"
slug: ryansql
description: "중첩된 SELECT문을 좀 더 정확하게 생성하는 SPC 기법을 적용한 NLI2DB 알고리즘 'RYANSQL' 제안"
research-area: NLP
published-date: 2020-04-01
publisher: CVPR
authors:
  - heuristic.c
  - index.sh
  - jason.ng
paper: ""
code: ""
tag:
 - CVPR
 - NLP
---

# Summary
카카오엔터프라이즈 AI Lab(최동현, 신명철, 김응균)과 성균관대학교(신동렬)는 스파이더 챌린지(SPIDER Text-to-SQL Challenge) 성과를 바탕으로 한 공동 연구 논문인 ‘RYANSQL: Recursively Applying Sketch-based Slot Fillings for Complex Text-to-SQL in Cross-Domain Databases’를 아카이브(arXiv)에 공개했습니다. 미국 예일대학교(Yale University)에서 주최한 스파이더 챌린지는 기업이 각종 데이터를 정리 보관할 때 사용하는 데이터베이스가 주어졌을 때 자연어 형태의 사용자 질의 문장을 SQL(Structured Query Language)문으로 변환해주는 NLI2DB(natural language interface to databases) 알고리즘의 정확도를 평가합니다. 

공동 연구팀이 새롭게 고안한 SPC(Statement Position Code) 기법은 NLI2DB 문제에서 슬롯(slot)을 채울 때 중첩된 SELECT문을 더 정확하게 생성합니다. 실제로 대규모 영어 비라벨링 말뭉치를 사전학습한 언어 모델인 BERT에 SPC 기법을 도입한 RYANSQL로 실험을 진행해본 결과, 스파이더 벤치마크 데이터셋에 대해 SOTA(현재 최고 성능의) 모델보다 3.2%p 더 높은 58.2%의 정확도를 달성했습니다. 카카오엔터프라이즈는 현재의 슬롯 채우기 방식에서 더 나아가, 슬롯값을 후보정하는 방식 등으로 자사 NLI2DB 알고리즘의 성능을 높이는 연구를 진행할 계획입니다.

# Abstract
Text-to-SQL is the problem of converting a user question into an SQL query, when the question and database are given. In this paper, we present a neural network approach called RYANSQL (Recursively Yielding Annotation Network for SQL) to solve complex Text-to-SQL tasks for cross-domain databases. Statement Position Code (SPC) is defined to transform a nested SQL query into a set of non-nested SELECT statements; a sketch-based slot filling approach is proposed to synthesize each SELECT statement for its corresponding SPC. Additionally, two input manipulation methods are presented to improve generation performance further. RYANSQL achieved 58.2% accuracy on the challenging Spider benchmark, which is a 3.2%p improvement over previous state-of-the-art approaches. At the time of writing, RYANSQL achieves the first position on the Spider leaderboard.

# Overall Architecture
Figure 1 shows the overall network architecture. The input encoder consists of five layers: Embedding layer, Embedding Encoder layer, Question- Column Alignment layer, Table Encoder layer, and Question-Table Alignment layer. Table 2 shows the proposed sketch for a SELECT statement. The sketch-based slot-filling decoder predicts values for slots of the proposed sketch.

# Experiments

The performance of the proposed system is compared with grammar-based systems GrammarSQL, Global-GNN and IRNet. Also, we compared the system performance with RCSQL, which so far showed the best performance on the Spider dataset using a sketch-based slot-filling approach. As can be observed from the table, the proposed system RYANSQL improves the previous slot filling based system RCSQL by a large margin of 15%p on the development dataset. With the use of BERT, our system outperforms the current state- of-the-art by 3.2%p on the hidden test dataset, in terms of exact matching accuracy.
