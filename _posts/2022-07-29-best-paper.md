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

## briefly - what's the problem we tackle?

These days it's quite feasible to monitor patient's status with remote sensors.
Patients diagnosed with bipolar disease may, for example, use dedicated smartphone apps that analyze characteristics of their voice (e.g. the average amount of jittering).
Thanks to that, specialists may train statistical models that predict the onset of the new disease phase which is crucial in efficient treatment of the disease.

However, training algorithms requires lots of annotated data.
One needs many examples of phone calls labeled as representative of different disease phases.
This, in turn, may be infeasible for many reasons.
One of them, a pretty basic one, is that because of privacy reasons the application on your smartphone will not store the content of the conversation.
Only the characteristics of your voice.
How to label phone calls then, if the experts cannot even listen to the conversation?

To overcome this problem, a so-called **ground truth period extrapolation** is usually performed.
Patients diagnosed with mental illness undergo regular check-ups, during which psychiatrists are assessing *current disease phase* **Y**.
We could make use of that, and based on expert's knowledge, assume that all phone calls recorded within a specific time frame around the visit should be labeled as **Y**.
For example, all calls recorded from 7 days before the visit up to 2 days after the visit are assigned label **Y** provided by the psychiatrist during the visit.

Uncertainty naturally arises about whether all calls should be equally treated as supervised to the same extent.
Say that one of the calls was a quick discussion with your boss, and the next one was a long, passionate discussion with your friend.
Your voice characteristics obtained during each of these would be presented to the algorithm as "typical of disease phase **Y**" *to the same extent*.
Should they really be treated this way? Would they be so if the expert could carefully listen to them and express their opinion?
Obviously, we don't know the topic of the conversation, but we would still like to adjust the strength of supervision anyway, and estimate - is the supervised
phone call *highly certain* or *less so* based on all the data we have?

We can do this using our novel method - **Confidence Path Regularization**. It estimates a **confidence factor** for each supervised phone call. The whole idea is based on a simple, yet powerful assumption:

{: .box-note}
**Regularization assumption:** highly certain supervised observations should
be consistently assigned high degrees of membership to the
supervised class by the learning algorithms across varying values
of confidence factor.

More details in our article!

## links

This work is a part of "Bipolar disorder prediction with sensor-based semi-supervised Learning (BIPOLAR)" project;
you can learn more about the project at [BIPOLAR project's website](http://bipolar.ibspan.waw.pl/Home.html).
