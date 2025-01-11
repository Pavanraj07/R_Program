#Create the initial dataframe
 data<-data.frame(
 itemCode=c(1001,1002,1003,1004,1005),
 itemCategory=c("Electronics","DesktopSupplies","OfficeSupplies","USB","CDDrive"),
 itemPrice=c(700,300,350,400,800)
 ) 

 #a)SubsettheDataframeanddisplaydetailsofitemswithprice>=350
 subset_a<-data[data$itemPrice>=350,]

 #b)SubsettheDataframeanddisplayitemswithcategory"OfficeSupplies"or"DesktopSupplies"
 subset_b<-data[data$itemCategory%in%c("OfficeSupplies","DesktopSupplies"),]

 #c)Createanotherdataframe"item-details"
 item_details<-data.frame(
 itemCode=c(1001,1002,1003,1004,1005),
 ItemQtyonHand=c(10,20,15,30,25),
 ItemReorderLvl=c(5,10,8,15,12)
 )

 #MergethetwodataframesusingitemCode
 merged_data<-merge(data,item_details,by="itemCode")
 
 #Displaytheresults
 cat("OriginalDataFrame:\n")
 print(data)
 cat("\nSubsetofitemswithprice>=350:\n")
 print(subset_a)
 cat("\nSubsetofitemswithcategory'OfficeSupplies'or'DesktopSupplies':\n")
 print(subset_b)
 cat("\n'item-details'DataFrame:\n")
 print(item_details)
 cat("\nMergedDataFrame:\n")
print(merged_data)