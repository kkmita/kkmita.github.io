---
layout: post
title: Best Paper Award at FUZZ-IEEE 22!
subtitle: Our conference article won the award at IEEE International Conference on Fuzzy Systems.
tags: [article, research]
comments: true
---

I am honored to share the news that our article entitled "Confidence path regularization for handling label uncertainty in semi-supervised learning: use case in bipolar disorder monitoring" won the Best Paper Award! It is currently in publishing, but you can access the Accepted Paper version at
[RESEARCH]({% link research.md %}) tab.

## authors

The article is a joint work between my Ph.D. supervisors from Systems Research Institute, Polish Academy of Sciences: **Olgierd Hryniewicz** and **Katarzyna Kaczmarek-Majer**,
and our colleagues from University of Bari Aldo Moro: **Gabriella Casalino** and **Giovanna Castellano**.

## briefly - what's the problem we tackle?

We proposed a novel method for automatic, data-driven estimation of label uncertainty in a setting where uncertainty naturally arises about the validity of the labeling process.
Our motivation came from the medical domain, namely: remote monitoring of mental illnesses (specifically, bipolar disorder).
One can monitor a patient's status by collecting voice characteristics from a special application installed on a smartphone.
For example, you can obtain a measure of the average amount of jittering throughout the call.

Note that due to privacy reasons, the content of any conversation is unknown, and hence data remains unsupervised: we cannot assign any label pointing to the current health status.

Frequently such unsupervised data from sensors are indirectly assigned a label that is extrapolated from psychiatric assessment obtained during a stationary medical appointment.
Data from phone calls falling into a pre-specified time window around the visit (e.g. a time frame ranging from 7 days before the visit up to 2 days after the visit) become supervised.
However, uncertainty naturally arises about whether all calls should be equally
treated as supervised to the same extent. 
In our article, we focus on such uncertainty about the validity of the labels.

## links

This work is a part of "Bipolar disorder prediction with sensor-based semi-supervised Learning (BIPOLAR)" project;
you can learn more about the project at [BIPOLAR project's website](http://bipolar.ibspan.waw.pl/Home.html).
