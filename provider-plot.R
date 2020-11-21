library('ggplot2')


ggplot(provider.dataset,aes(x=claim.rate))+
  geom_histogram()+
  geom_vline(xintercept = 200)

