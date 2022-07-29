---
layout: post
title: Best Paper Award at FUZZ-IEEE 22!
subtitle: Our conference article won the award at IEEE International Conference on Fuzzy Systems.
tags: [article, research]
comments: true
---

I am honored to share the news that our article entitled "Confidence path regularization for handling label uncertainty in semi-supervised learning: use case in bipolar disorder monitoring" won the Best Paper Award! It is currently in publishing, but you can access the Accepted Paper version at
[RESEARCH]({% link research.md %}) tab.

## direct link

You can access the Accepted Paper version directly 
<a href="/pdfs/KmitaCasalinoCastellanoHryniewiczKaczmarekMajer2022AcceptedPaper.pdf" class="image fit" target="_blank">here</a>.

## authors

The article is a joint work between my Ph.D. supervisors from Systems Research Institute, Polish Academy of Sciences: **Olgierd Hryniewicz** and **Katarzyna Kaczmarek-Majer**,
and our colleagues from University of Bari Aldo Moro: **Gabriella Casalino** and **Giovanna Castellano**.

## what's the problem we tackle?

We proposed a novel method for automatic, data-driven estimation of **label uncertainty** in a setting where uncertainty naturally arises about the validity of the labeling process.
Our motivation came from the medical domain, namely: remote monitoring of mental illnesses (specifically, bipolar disorder).

### unsupervised data from sensors

These days, it becomes more frequent and feasible to remotely monitor a patient's status by collecting data from special sensors.
For example, a dedicated application on a smartphone can collect and analyze voice characteristics "on the fly".
Note that due to privacy reasons, the actual conversation is not stored - we don't know the topic of the call.
Data collected this way (i.e. voice characteristics such as e.g. the average amount of jittering throughout the call)
remains **unsupervised** - there is no way for the experts to classify a specific call as, for example, coming from *depression* episode.

### what can we do about it?

However, one would like to be able to predict the onset of a specific disease phase by assessing incoming phone calls.
That could be performed by having a statistical model that was trained on *supervised data* - we present new phone calls to such model
and retrieve a prediction of the disease phase associated with a given new phone call.

How to achieve it, though? I just mentioned we don't have a way to associate analyzed phone calls with disease phases.

Well, a so-called **ground truth period extrapolation** is performed to associate phone calls with labels.

Patients diagnosed with bipolar disease undergo regular check-ups, during which psychiatrists are assessing *the current state of the disease* **Y**.
Ground truth period extrapolation uses this label **Y** provided during a medical appointment on a given day **D**, and associates all phone calls
recorded near that visit with the same label **Y**.
For example, all phone calls recorded within a time frame ranging from 7 days before the visit up to 2 days after the visit become supervised with the label **Y**.
A phone call recorded 8 days before the visit remains unsupervised, though. This is why we're talking about **semi-supervised learning**: only part of
observations we have is treated as labeled.

### the uncertainty & the solution

Such indirect labeling results in natural uncertainty: should all phone calls from the ground truth period *be assigned label **Y** to the same extent*?
In layman's terms: what if one of the calls was a quick chat with a colleague from work, and the other one was a long, passionate discussion with a friend?
Characteristics of your voice collected by the smartphone app in both cases would become categorized as "typical of label **Y**" *to the same extent*.
This could introduce a bias, as - potentially - the latter phone call can bear more informative characteristics of your voice representative of a given disease phase.

In our article, we presented a novel method for automatic, data-driven estimation of label uncertainty in such a setting.
In short, we calculate **a confidence factor** for each phone call treated as supervised according to the ground truth period extrapolation.
This confidence factor can decrease the impact of each supervised call on the final outcomes of the learning algorithm.

To summarize: in our approach, we can only adjust the strength of the supervision for each call based on the data seen (and the models used).

Our method - **Confidence Path Regularization** - is based on a simple assumption:

{: .box-note}
**Regularization assumption:** highly certain supervised observations should
be consistently assigned high degrees of membership to the
supervised class by the learning algorithms across varying values
of confidence factor.

More details in our article!

## links

This work is a part of "Bipolar disorder prediction with sensor-based semi-supervised Learning (BIPOLAR)" project;
you can learn more about the project at [BIPOLAR project's website](http://bipolar.ibspan.waw.pl/Home.html).
