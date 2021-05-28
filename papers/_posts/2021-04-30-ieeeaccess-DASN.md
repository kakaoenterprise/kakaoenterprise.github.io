---
layout: post
research-area: COMPUTER VISION
title: "Suppressing Spoof-irrelevant Factors for Domain-agnostic Face Anti-spoofing"
slug: ieeeaccess2021-dasn
description:
published-date: 2021-04-30
publisher: IEEE Access
authors:
  - 김태욱:카카오엔터프라이즈
  - aiden:카카오엔터프라이즈
paper: https://arxiv.org/pdf/2012.01271.pdf
code:
tag:
  - face anti-spoofing
---

# Abstract

Face anti-spoofing aims to prevent false authentications of face recognition systems by distinguishing whether an image is originated from a human face or a spoof medium. In this work, we note that images from unseen domains having different spoof-irrelevant factors (e.g., background patterns and subject) induce domain shift between source and target distributions. Also, when the same SiFs are shared by the spoof and genuine images, they show a higher level of visual similarity and this hinders accurate face anti-spoofing. Hence, we aim to minimize the discrepancies among different domains via alleviating the effects of SiFs, and achieve improvements in generalization to unseen domains. To realize our goal, we propose a novel method called a Doubly Adversarial Suppression Network (DASN) that is trained to neglect the irrelevant factors and to focus more on faithful task-relevant factors. Our DASN consists of two types of adversarial learning schemes. In the first adversarial learning scheme, multiple SiFs are suppressed by deploying multiple discrimination heads that are trained against an encoder. In the second adversarial learning scheme, each of the discrimination heads is also adversarially trained to suppress a spoof factor, and the group of the secondary spoof classifier and the encoder aims to intensify the spoof factor by overcoming the suppression. We evaluate the proposed method on four public benchmark datasets, and achieve remarkable evaluation results in generalizing to unseen domains. The results demonstrate the effectiveness of the proposed method.

<br/>

{% include image.html name="001.png" width="" align="center" %}
<em class="center">[ Figure 1 ] Overview of DASN</em>
