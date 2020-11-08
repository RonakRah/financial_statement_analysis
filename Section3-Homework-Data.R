#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#- profit for each month
profit_monthly <- revenue - expenses
# profit after tax for each month (the tax rate is 30%)
tax <- round(profit_monthly*0.3,digits = 2)
profit_monthly_after_tax <- profit_monthly-tax
# profit margin for each month - equals to profit a after tax divided by revenue
p_margin <- round(profit_monthly_after_tax /revenue, digits = 2)*100
# good months - where the profit after tax was greater than the mean for the year
good_month <- profit_monthly_after_tax > mean(profit_monthly_after_tax) 
# bad months
bad_month <- profit_monthly_after_tax < mean(profit_monthly_after_tax)
# the best month - where the profit after tax was max for the year
best_month <- profit_monthly_after_tax== max(profit_monthly_after_tax)#logical by ==
#the worst month - where the profit after tax was min for the year
worse_month <- profit_monthly_after_tax == min(profit_monthly_after_tax)
