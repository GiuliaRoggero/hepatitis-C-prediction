# Introduction

Hepatitis C infections are usually asymptomatic for a very long period and in most cases
go undetected before a serious liver damage occurs. We try to improve early detection of
the virus by using machine learning prediction techniques such as logistic regressions and
decision tree algorithms. In doing so, we used an unbalanced data set towards healthy
patients, previously used by Hoffmann et al. (2018), which includes ten different blood
attributes of patients that may indicate whether a patient is infected with HCV or not. We
find random forest to be the most accurate model for HCV predictions in our half-split set,
yet only 77% of infected patients are detected. The accuracy score for infected patients only
can be improved by using a logistic regression with a 3-order polynomial in the features of a
patient, a Ridge penalty in the objective function, and heavier weight on infected patients,
resulting in a detection of 93% of infected patients despite a lower overall accuracy.
