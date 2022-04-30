# Amazon Vine Analysis
## *Determine Potential Bias from Paid Reviews*
### Project Overview: Analyze the difference in number and percentage of 5-star reviews for paid versus unpaid reviews on Amazon.
---
</br>

## Results

We were tasked with analyzing Amazon reviews written by members of the paid **Amazon Vine program**.  The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review.  For our project, we analyzed Vine and non-Vine review and product data from the **video games** department.

*Some review data was left out from the original dataset for our final analysis.  In an attempt to increase base review credibility, we only inlcluded review data whose reviews received 20+ votes, and whose reviews received "helpful" votes at least 50% of the time.* 

Our analysis determined:
- There were 40,565 total reviews after filtering for "credible" reviews
  - 94 paid reviews (Vine)
  - 40,471 unpaid reviews
- There were 15,711 total 5-star reviews given after filtering for "credible" reviews
  - 48 5-star reviews were paid (Vine)
  - 15,663 5-star reviews were unpaid
- 51% of paid reviews were 5-star reviews (Vine)
  - 39% of unpaid reviews were 5-star reviews
</br>
</br>

Paid Reviews Analysis (Vine)     |  Unpaid Reviews Analysis
:-------------------------:|:-------------------------:
<img src="https://github.com/ajcurtis916/Amazon_Vine_analysis/blob/main/resources/paid_reviews_analysis.png" width="500" />|<img src="https://github.com/ajcurtis916/Amazon_Vine_analysis/blob/main/resources/unpaid_reviews_analysis.png" width="500"/>
</br>
</br>

## Summary

Our analysis shows a positivity bias towards reviews in the Vine program.  Products reviewed within the video games department on Amazon recieved 12% more 5-star ratings when reviewed by a paid (Vine) user.  This may be due to the fact that they are being paid for the review, or because they are receiving the item for free.

Another potential reason for the bias is the type of people who would sign up for the Vine Program are seasoned reviewers, so their reviews would be of higher quality and may have been upvoted more or voted as "helpful" more often, meaning their reviews were more likely to make it to our data pool for analysis.  It is recommended that we perform the analysis again with the entire dataset to account for the last consideration.  
