---
layout: post
title: Best Paper Award at FUZZ-IEEE 22!
subtitle: Our conference article won an award at IEEE International Conference on Fuzzy Systems.
tags: [article, research]
comments: true
---

I am honored to share the news that our article entitled 
"Confidence path regularization for handling label uncertainty in semi-supervised learning: use case in bipolar disorder monitoring" 
won the Best Paper Award! 
It is currently in publishing, but you can access the Accepted Paper version at
[RESEARCH]({% link research.md %}) tab.

## direct link

You can access the Accepted Paper version directly 
<a href="/pdfs/KmitaCasalinoCastellanoHryniewiczKaczmarekMajer2022AcceptedPaper.pdf" class="image fit" target="_blank">here</a>.

## authors

The article is a joint work between my Ph.D. supervisors from the Systems Research Institute, Polish Academy of Sciences: 
**prof. Olgierd Hryniewicz** and **dr Katarzyna Kaczmarek-Majer**,
and our colleagues from the University of Bari Aldo Moro: 
**dr Gabriella Casalino** and **prof. Giovanna Castellano**.

## briefly - what's the problem we tackle?

These days it's quite feasible to monitor a patient's status with remote sensors.
Patients diagnosed with bipolar disease may, for example, use dedicated smartphone apps 
that analyze characteristics of their voice  (e.g. the average amount of jittering).
Thanks to that, specialists may train statistical models that predict the onset of the new disease phase.
Ability to react qucikly to this onset is crucial in the efficient treatment of the disease.

Training algorithms require lots of annotated data.
One needs many examples of phone calls associated with different phases of the disease.
However, such information may be infeasible to obtain for many reasons.
A pretty basic one is that because of privacy reasons the application on your smartphone will not store 
the actual content of the conversation.
Only the characteristics of your voice (such as the aforementioned jittering) may be persisted and 
used for training predictive algorithms.
How to label these phone calls in terms of the disease phases such as *mania* or *depression* 
if the experts cannot even listen to the conversation?

To overcome this problem, a so-called **ground truth period extrapolation** is usually performed.
Patients diagnosed with mental illness undergo regular check-ups, during which psychiatrists assess the 
*current disease phase*.
Mathematically, we can express this information as response variable $$y$$
taking values in a set of possible disease phases, e.g. $$y \in$$
{`mania`, `euthymia`, `mixed`, `depression`}.
We could make use of that, and based on the expert's knowledge, assume that all phone calls recorded within 
a specific time frame around the visit should be labeled as specific $$y_{\text{visit}}$$.
For example, all calls recorded from 7 days before the visit up to 2 days after the visit 
are assigned a label $$y_{\text{visit}}$$=`mania` provided by the psychiatrist during the visit.

Uncertainty naturally arises about whether all calls should be equally treated as supervised to the same extent.
Let's consider a patient in a state of mania.
Suppose that one of the calls recorded during the ground truth period was a quick discussion with the patient's boss, 
while the next one was a long, passionate discussion with their friend.
The voice characteristics obtained during each of these calls would be presented to the algorithm as 
**typical** of disease phase $$y_{\text{visit}}$$=`mania` **to the same extent**.
Should they really be treated this way? 
Would they be if the expert could carefully listen to them and express their opinion?
Obviously, we don't know the topic of the conversation, but we would still like to adjust the strength of supervision 
anyway.
Our goal can be formulated as the task of estimation if - based on all the data we have - the supervised phone call is 
*highly certain* or *less so* for the specific phase of the disease?

We can accomplish this estimation task using our novel method - **Confidence Path Regularization**
that we presented in the article 
"Confidence path regularization for handling label uncertainty in semi-supervised learning: 
use case in bipolar disorder monitoring".
The method estimates a **confidence factor** for each supervised phone call. 
The whole idea is based on a simple, yet powerful assumption:

{: .box-note}
**Regularization assumption:** highly certain supervised observations should
be consistently assigned high degrees of membership to the
supervised class by the learning algorithms across varying values
of confidence factor.

More details in our article! You can access the Accepted Paper version directly 
<a href="/pdfs/KmitaCasalinoCastellanoHryniewiczKaczmarekMajer2022AcceptedPaper.pdf" class="image fit" target="_blank">here</a>.

## links

This work is a part of "Bipolar disorder prediction with sensor-based semi-supervised Learning (BIPOLAR)" project;
you can learn more about the project at [BIPOLAR project's website](http://bipolar.ibspan.waw.pl/Home.html).