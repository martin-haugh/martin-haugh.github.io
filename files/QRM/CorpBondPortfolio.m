function [] = CorpBondPortfolio(N,R)

% This function should be used to complete the question on Assignment 3 regarding the risk of a PortfolioData of
% corporate bonds.
% N is the number of samples used in the Monte-Carlo. R is the constant recovery rate.

% The first task is to read in all of the data from the spreadsheet. But first you SHOULD adapt the spreadsheet so that it
% uses numerical ratings instead of letter ratings. That is, take AAA = 1, ..., default = 8. 
Workbook = 'CorporateBondPortfolioData.xls';
Sheet = 'Data';
TransMatrix = xlsread(Workbook,Sheet,'TransitionMatrix')/100;
ForwardCurveData = xlsread(Workbook,Sheet,'ForwardCurves')/100;
PortfolioData = xlsread(Workbook,Sheet,'PortfolioData');
CorrMatrix = xlsread(Workbook,Sheet,'CorrMatrix');

% The next two lines are very useful!
cumTransMatrix = cumsum(TransMatrix,2);
zeta = norminv(cumTransMatrix); 
% zeta determines the cutoff points of a standard normal distribution that will be used to determine ratings transitions

% Now find the price of each bond one year from now for every possible rating

NumBonds = length(PortfolioData);
BondPrice = zeros(8, NumBonds);
for j = 1:NumBonds
                 % Compute defaulted bond prices here
    for i = 1:7  % Now compute bond prices in the other 7 possible ratings. Remember to include the coupons
      
        
        
    end    
end



% Now find the value of the portfolio if every bond remains in the original rating after one year







% Now simulate the transition ratings
randn('state',sum(100*clock));  % Randomizing the start state of the normal random number generator

C = chol(CorrMatrix);
Z = randn(NumBonds, N);
W = (C'*Z)';   % Usual method of generating corelated normal random variables

rating = zeros(N, NumBonds);

% Now determine the rating of each bond on each sample path. This is where "zeta" is used. 
for i = 1:NumBonds    % You just need an additional 5 or 6 lines inside this for loop if you vectorize everything      
    
end
    

% Now compute the porfolio gain / loss on each sample path




% Now compute the mean, std, 99% VaR / CVaR and approx confidence intervals

