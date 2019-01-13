DBSCAN<-function(data,eps,MinPts=5,scale=FALSE,distances=FALSE,
                 showplot=FALSE,
                 countmode=c(1,2,3,5,10,100,1000,5000,10000,50000))
{
  data<-as.matrix(data)
  n<-nrow(data)
  if(scale)data<-scale(data)
  unregpoints<-rep(0,n)
  e2<-eps^2
  cv<-rep(O,n)
  cn<-O
  i<-1
  if(sum(seeds)+unregpoints[i]<MinPts) cv[i]<-(-l)
  else{
    cn<-cn+l
    cv[i]<-cn
    cat(j,"sum seeds=",sum(seeds),"unreg=",unregpoints[j],
        "newseeds=",sum(cv[jseeds]==O),"\n")
    if(sum[jseeds]+unregpoints[j]>=MinPts){
      seeds[jseeds]<-cv[jseeds]==0
      cv[jseedS&cv<0]<-cn
      seeds[i]<-unclass[i]<-FALSE
      unregpoints[seeds]<-unregpoints[seeds]+l
      while(sum(seeds)>O){
        if(showplot)plot(data,col=1+cv)
        unclass[seeds]<-FALSE
        cv[seeds]<-cn
        ap<-(l:n)[seeds]
        print(ap)
        seed<-rep(FALSE,n)

        for(j in ap){
          if(showplot)plot(data,col=1+cv)
          jseeds<-rep(FALSE,n)
          if(distances) jseeds[unelass]<-data[j,unclass]<=eps
          else{
            jseedS[unclass]<-distvector(data[j,],data[unclass,])<=e2
          }
          for(i in l:n){
            if(i %in% countmode) cat("Processing point",i,"of",n,".\n")
            unclass<-cv<1
            if(cv[i]==O){
              if(distances)seeds<-data[i,]<=eps
              else{
                seeds<-rep(FALSE,n)
                seeds[unelass]<-distvector(data[i,],data[unclass,])<=e2
              }
              unregpoints[jseeds]<-unregpoints[jseeds]+1
              if(cn==l)
            }
          }# for j
        }# while sum seeds>0
      }#else(sum seeds+¡­>=MinPts)
    }#if cv==O
  }#for i
  if(sum(cv==(-1))>O){
    noisenumber<-cn+1
    cv[cv==(-1)]<-noisenumber
  }
  else
    noisenumber<-FALSE
  out<-list(classification=cv,noisenumber=noisenumber,
            eps=eps£¬MinPts=MinPts£¬unregpoints=unregpoints)
  out
}#dbscan
#classifieation