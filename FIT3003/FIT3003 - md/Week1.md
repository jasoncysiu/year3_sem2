## What is a Data Warehouse?

▪ A data warehouse is a multi-dimensional view of databases, with aggregates and pre-computed summaries.


[Azure's definition](https://docs.microsoft.com/en-us/azure/architecture/data-guide/relational-data/data-warehousing): A data warehouse is a centralized repository of integrated data from one or more disparate sources.

➢ In many ways, it is basically doing aggregates in advance; that is exactly pre-
computation done at thedesign level, rather than at the query level.

## Why do we need a Data Warehouse?

To address the drawback of operational database, and a need for decision-making support data, data warehouse is needed.

## What is the difference between DATABASE and DATA WAREHOUSE?

Conceptually, they are similar that they are a place to store data, but DW stores a larger amount of data.  

1) DATABASE focuses more on the Online Transaction Processing (making query like read, write, CRUD), whereas DW focuses more on OLAP
   
   1) 概念层面: 数据库通常更关注业务交易处理（OLTP），而数据仓库更关注数据分析层面（OLAP）
2. 数据库通常追求交易的速度，交易完整性，数据的一致性，等等，在数据库模型上主要遵从范式模型（1NF，2NF，3NF，等等），从而尽可能减少数据冗余，保证引用完整性；而数据仓库强调数据分析的效率，复杂查询的速度，数据之间的相关性分析，所以在数据库模型上，数据仓库喜欢使用多维模型，从而提高数据分析的效率。

For example, 

第一种应用，我在淘票票买了电影票：

<img title="" src="file:///C:/Users/sjsa3/AppData/Roaming/marktext/images/2022-07-27-22-02-45-image.png" alt="" width="155" data-align="center">这类应用，特点都是实时交互，我付了款，立马得到服务。比如购物，餐饮，交通等等。这类应用我们称之为 OLTP，也就是传统上所说的“关系型事务数据库”应用。

第二种应用，我用支付宝的记账本，分析了下我本月的支出与收入：

<img title="" src="file:///C:/Users/sjsa3/AppData/Roaming/marktext/images/2022-07-27-22-03-52-image.png" alt="" width="157" data-align="center">

这类应用，通常会涉及很长一段时间的数据读取，最终的数据呈现会以多种维度组织，实时性不高，但维度一定不止一维。比如支付宝年底的【我的2020】，它帮我们分析了全年的支出，哪个品类消耗最多资金，去过哪些城市，最钟爱哪类消费品等等。这类应用属于数据仓库的数据分析细分领域，也称之为 OLAP.

[数据库 与 数据仓库的本质区别是什么？ - 知乎 (zhihu.com)](https://www.zhihu.com/question/20623931)

## What is OLAP?

▪ The query to extract data from the data warehouse is an Online Analytical Tool

OLAP retrieves raw data, which can then be later formatted using any Business
Intelligence (BI) tools.
➢ In OLAP, the focus is on thedata – theretrieved data is the most important.
➢ The BI tool is forfurther presentation and visualization.
➢ BI tools which receive the raw data can present the data in any forms: reports,
graphs, dashboards, etc.

## What is BI for?

```
➢ Collecting and storing operational data
➢ Aggregating the operational data into decision support data
➢ Analyzing decision support data to generate information
➢ Presenting such information to the end user to support business decisions
➢ Making business decisions, which in turn generate more data that is collected,
stored, and so on (restarting theprocess)
➢ Monitoring results to evaluate outcomes of the business decisions, which again
provides more data to be collected, stored, and so on
➢ Predicting future behaviors and outcomes with a high degree of accuracy
```
