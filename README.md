The PAL (People Also Liked) project provides recommendations to researchers at the APS based upon data collected from the request management system Aeon.

PAL is divided into two components: recommendations based upon interest in specified research topics (interestBased) and recommendations based upon a specific collection being requested (similarCollections).

#Interest-based recommendations
This component of the project requires a controlled vocabulary of interest topics that users select upon registering in Aeon. Since we would like to quantify the requests in two ways (by number of requests for a particular collection and by number of researchers requesting a particular collection), we have to use two different datasets and then merge them.

The workflow is:

- Export request data from Aeon to two XML files: aeonMssReq.xml and aeonMssUsers.xml. The project currently exports this data via a scheduled task on the local Windows server that hosts Aeon.
- Group the data based on interest topic and get counts for number of requests per collection and number of researchers per collection (1_aeonMssReqParse.xslt, 2_aeonMssReqCountsort.xslt, 3_aeonMssUsersParse.xslt, and 4_aeonMssUsersCountsort.xslt)
- Merge the two datasets (5_aeonMssMerge.xslt and 6_aeonFinalCount.xslt)
- Export individual html pages for each research topic to be incorporated into Aeon (7_aeonTopicOutput.xslt).

The effect of the final output step is to create an html page detailing the anonymized request data for each research topic that exists. For example, EA-ColHis has a page showing every collection that has been requested by researchers expressing that interest (linked to the EAD of that collection), the number of researchers who have requested each collection, and the number of times each collection has been requested.

These html pages are saved in the format 'include_[researchtopic].html.' These includes are referenced within static pages in the Aeon web directory.

The exporting and processing of the data is scheduled to run nightly on an offline server to keep data anonymous.

The final step of the process is to use javascript to determine which research topics the current user has identified and create links in a sidebar for the appropriate html pages created above (include_recommendations.html).

The include_interest_based_describe.html file provides an accordioned description of the recommendations for the researchers.

#Collections-based recommendations
 This component of the project provides a listing of every collection requested by researchers who have also requested the collection being currently requested by a user. This data only appears on the Aeon request page.
 
The workflow is:

- Export every request in the system to a file (aeonLikeCollections.xml). The project currently exports this data via a scheduled task on the local Windows server that hosts Aeon.
- Anonymize, count, and combine the data to create listings for each collection (aeonLike_1_Parse.xslt, aeonLike_2_Count.xslt, aeonLike_3_Sort.xslt, aeonLike_4_Combine.xslt, aeonLike_5_Resort.xslt, and aeonLike_6_RemoveDups.xslt). The final result is an xml file.
- Use javascript (include_similar.html) to write the appropriate listing of collections in a sidebar based upon the call number of the current request.

The exporting and processing of the data is scheduled to run nightly on an offline server to keep data anonymous.