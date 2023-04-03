---
layout: post
research-area: COMPUTER VISION
title: "Local 3D Editing via 3D Distillation of CLIP Knowledge"
slug: CVPR-LENeRF
description:
published-date: 2023-06-20
publisher: CVPR
publisher-fullname: Computer Vision and Pattern Recognition (CVPR)
authors:
  - 형준하:카이스트 AI, 카카오엔터프라이즈
  - 황성원:카이스트 AI
  - 김대진:스캐터랩
  - 이현지:카이스트 AI
  - 주재걸:카이스트 AI
paper: 
code: 
tag:
---

# Abstract

3D content manipulation is an important computer vision task with many real-world applications (e.g., product design, cartoon generation, and 3D Avatar editing). Recently proposed 3D GANs can generate diverse photorealistic 3D-aware contents using Neural Radiance fields (NeRF). However, manipulation of NeRF still remains a challenging problem since the visual quality tends to degrade after manipulation and suboptimal control handles such as 2D semantic maps are used for manipulations. While text-guided manipulations have shown potential in 3D editing, such approaches often lack locality. To overcome these problems, we propose Local Editing NeRF (LENeRF), which only requires text inputs for fine-grained and localized manipulation. Specifically, we present three add-on modules of LENeRF, the Latent Residual Mapper, the Attention Field Network, and the Deformation Network, which are jointly used for local manipulations of 3D features by estimating a 3D attention field. The 3D attention field is learned in an unsupervised way, by distilling the zero-shot mask generation capability of CLIP to the 3D space with multi-view guidance. We conduct diverse experiments and thorough evaluations both quantitatively and qualitatively.
