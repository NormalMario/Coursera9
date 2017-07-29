# Three-Point Estimation
Mario G.  
29 Juli 2017  



## Background

According to Wikipedia the three-point estimation technique is a management tool for anticipating future events.
Say you want to anticipate a stock price. According to the Three-Point Estimation you initially produce three estimates:

- The worst case estimate: Which price is probably the lowest that can occur?
- The likely case estimate: Which price will probably occur most likely?
- The best case estimate: Which price is probably the highest that can occur?
      
Note that the worst case must be lower than the best case. 
Also the likely case may not be higher than the best case or lower than the worst case.

The three-point estimate is calculated by:  
(worst case + best case + 4 * most likely case)/6

## App Features

- Explanation (sidebar panel)
- 3 numeric input fields (sidebar panel)
- Repetition of input with number check (main panel)
- Calculation of the three-point estimate (main panel)

See this website:

http://rpubs.com/MariosWorld/295209

For the R code see:

https://github.com/NormalMario/Coursera9

## Example Input and Output


```r
worstCase <- 90
likelyCase <- 100
bestCase <- 130
threePointEstimate <- (worstCase + bestCase + 4 * likelyCase)/6L
print(sprintf("%.2f", threePointEstimate))
```

```
## [1] "103.33"
```

## Criticism

The rule is a bit dubious as an example might show.
Let's say I want to play that lottery where the BIG money (1 million) is waiting for me:


```r
worstCase <- 0
likelyCase <- 0
bestCase <- 1000000
threePointEstimate <- (worstCase + bestCase + 4 * likelyCase)/6L
print(sprintf("%.2f", threePointEstimate))
```

```
## [1] "166666.67"
```

As I can expect 166 grands I should definitely invest my 10 Dollars, right?

