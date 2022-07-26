---
layout: post
research-area: COMPUTER VISION
title: "A Statistical Manifold Framework for Point Cloud Data"
slug: ICML-point-cloud-data
description:
published-date: 2022-07-17
publisher: ICML
publisher-fullname: International Conference on Machine Learning (ICML)
authors:
  - 이용현:서울대
  - 김승연:서울대
  - royce:카카오엔터프라이즈
  - 박종우:서울대

paper: https://proceedings.mlr.press/v162/lee22d/lee22d.pdf
code: 
tag:
---

# Abstract

Many problems in machine learning involve data sets in which each data point is a point cloud in R^D. A growing number of applications require a means of measuring not only distances between point clouds, but also angles, volumes, derivatives, and other more advanced concepts. To formulate and quantify these concepts in a coordinate-invariant way, we develop a Riemannian geometric framework for point cloud data. By interpreting each point in a point cloud as a sample drawn from some given underlying probability density, the space of point cloud data can be given the structure of a statistical manifold – each point on this manifold represents a point cloud – with the Fisher information metric acting as a natural Riemannian metric. Two autoencoder applications of our framework are presented: (i) smoothly deforming one 3D object into another via interpolation between the two corresponding point clouds; (ii) learning an optimal set of latent space coordinates for point cloud data that best preserves angles and distances, and thus produces a more discriminative representation space. Experiments with large-scale standard benchmark point cloud data show greatly improved classification accuracy vis-´a-vis existing methods.
