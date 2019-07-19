---
title: "Readme"
author: "Bill Newmiller"
date: "July 15, 2019"
output: html_document
---



## Comments on results

Two results table in csv format appear in this folder:

* textMatrix.csv contains a sparse matrix with word counts for each documuent in the corpus. The data in this file was produced using lsa::textmatrix run on the corpus.

* cosineMatrix.csv contains data produced by the lsa::cosine using the output of lsa::textmatrix. The field values are the cosines between the vectors of all documents in the corpus as projected into the semantic space.
