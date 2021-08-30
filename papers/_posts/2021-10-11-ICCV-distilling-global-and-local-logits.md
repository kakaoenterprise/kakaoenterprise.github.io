---
layout: post
research-area: COMPUTER VISION
title: "Distilling Global and Local Logits with Densely Connected Relations"
slug: iccv-distilling-global-and-local-logits
description:
published-date: 2021-10-11
publisher: ICCV
publisher-fullname: International Conference on Computer Vision (ICCV)
authors:
  - harry:경희대, 카카오엔터프라이즈
  - 박진배:경희대
  - 장윤호:경희대
  - Muhammad Ali:경희대
  - 오태현:포항공대
  - 배성호:경희대
paper: 
code:
tag:
---

# Abstract

In prevalent knowledge distillation, logits in most image recognition models are computed by global average pooling, then used to learn to encode the high-level and task-relevant knowledge. In this work, we solve the limitation of this global logit transfer in this distillation context. We point out that it prevents the transfer of informative spatial information, which provides localized knowledge as well as rich relational information across contexts of an input scene. To exploit the rich spatial information, we propose a simple yet effective logit distillation approach. We add a local spatial pooling layer branch to the penultimate layer, thereby our method extends the standard logit distillation and enables learning of both finely-localized knowledge and holistic representation. Our proposed method shows favorable accuracy improvement against the state-of-the-art methods on several image classification datasets. We show that our distilled students trained on the image classification task can be successfully leveraged for object detection and semantic segmentation tasks; this result demonstrates our method's high transferability.
