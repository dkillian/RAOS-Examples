# Regression and Other Stories
# Chapter 10 notes

ggplot(kidiq, aes(x=mom_hs, y=kid_score)) + 
  geom_boxplot(aes(group=mom_hs), width=.2, color="darkblue") +
  geom_jitter(width=.1, color="darkblue", size=.8, alpha=.4) +
  stat_smooth(aes(y=kid_score), method="lm", color="darkgoldenrod3", size=1.2, alpha=.6) +
  scale_x_continuous(limits=c(-.1, 1.1),
                     breaks=c(0,1),
                     labels=c("No","Yes")) +
  scale_y_continuous(limits=c(20,150),
                     breaks=seq(25,150,25)) +
  nobord +
  labs(x="Mother high school graduate",
       y="",
       title="Kid's test score by mother's high school graduation")

ggsave("viz/Chapter 10/figure 10.1.png",
       type="cairo",
       device="png",
       height=4,
       width=5)



ggplot(kidiq, aes(x=mom_iq, y=kid_score)) + 
  geom_point(color="darkblue", size=.8, alpha=.8) + 
  stat_smooth(color="darkblue") +
  nobord

ggsave("viz/Chapter 10/figure 10.2.png",
       type="cairo",
       device="png",
       height=4,
       width=7)



ggplot(kidiq, aes(mom_iq, kid_score, color=as.factor(mom_hs))) + 
  geom_point(alpha=.5, size=.9) + 
  stat_smooth(se=F, method="lm") + 
  scale_color_manual(values=c("maroon","darkblue"),
                     labels=c("No","Yes")) +
  labs(color="Graduated from\nhigh school") +
  nobord

ggsave("viz/Chapter 10/figure 10.3.png",
       type="cairo",
       device="png",
       height=4,
       width=7)

