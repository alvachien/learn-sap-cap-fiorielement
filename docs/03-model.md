# 理解CAP的Model

继续额外的开发之前，需要了解下SAP CAP的Model的理念。

总的说来，SAP CAP中Model的核心理念为包括以下几部分。

## Domain-Driven Design

所谓的Domain-Driven Design 的缩写为DDD。通常认为DDD的概念起源于2004年`Eric Evans`的书籍《领域驱动设计》。其中，第一个D表示Domain，直译为领域，表达的其实是业务为先的理念。譬如，财务领域的凭证，需要保证所有行项目的金额总和为0，即“有借必有贷，借贷必相等”的领域需求。所以在建模（model）的时候，需要考虑反映Domain的业务概念。

![DDD1](./img/007.png)

至于别的DDD的概念，譬如：Service, Module，等，参阅DDD相关的书籍或文档。

![DDD2](./img/008.png)


## KISS

KISS是“Keep it simple, stupid!”的缩写，是另外一个SAP CAP遵循的Design原则。针对此原则，SAP CAP强调了下述关键项：

> **clean** = don’t pollute them with technical details。建模时尽量避免加入太多技术细节。    
> **concise** = be on point, use short names, simple flat models, etc. 模型应该简洁明了，避免长名称。   
> **comprehensible** = domain modeling is a means to an end; your clients and consumers are the ones who have to understand and work with your models the most, much more than you as their creator. Keep that in mind and understand the tasks of domain modeling as a service to others. 模型关键是便于使用者理解。


## 使用SAP CDS预定义项来精简Model

SAP CDS提供了许多high level的预定义项来简化建模。常用的有：
- Localized
- Temporal
- Managed

譬如，`Localized`可以用来定义支持多语言的项。这种支持是从SAP CDS语言深层次来支持的，包括从HTTP Request读出对应locale信息，以及使用该信息从数据库中读取合适的记录。关于`Localized`可以参考官方文档，点击[链接](https://cap.cloud.sap/docs/guides/localized-data)。


# 其他
