# Lecture 11: Technologies Supporting Real-Time Enterprise

## Objectives

- Discuss the power of digital transformations: Containers, Microservices, Big
  data and IoT.
- Define RFID and its role in logistics and sales.
- Define business intelligence (BI), and provide examples of its uses
- Explain how in-memory computing will change the use of BI
- Discuss the importance of mobile applications to businesses
- Describe cloud computing and why it is becoming important for ERP providers
- Explain how the service-oriented architecture (SOA) concept has changed ERP
  development.
- Describe Web services, and outline the unique components of NetWeaver
- Define software as a service (SaaS)
- Identify the advantages and disadvantages of using the SaaS software delivery
  model.

## Introduction

- An Enterprise Resource Planning (ERP) system allows a company to accomplish
  tasks that cannot be done well, if at all, without such a system.
- Traditionally:
  - ERP systems have been software applications that are run on a company's own
    computer systems.
  - Focus of ERP has been on managing business transactions
- Technologies, such as radio frequency identification (RFID), are increasing
  the amount of data that is contained in ERP systems.
- Business intelligence technologies are turning data in ERP systems into
  valuable information.
- Cloud computing and mobile technologies are changing where ERP data is stored
  and how it is delivered.

## Power of Digital Transformation

- What is Digital Transformation
  - The remaking and reforming of how an enterprise serves all its
    constituencies (customers, employees and business partners).
  - It referees to entirely new, all-digital ways of doing business and making
    decisions.
  - It defines processes that support continuous operations improvement, even
    disrupting existing businesses and entire markets while inventing new
    business models.
  - Fully leverages digital technologies in a highly strategic, carefully
    planned way to effect these profound changes.
  - It is business imperatives that are driving digital transformation.

### Digital Transformation

- The need for Digital Transformation
  - 'Transform or Die'
  - The underlying traditional or legacy infrastructures that have dominated
    enterprise IT for nearly 30 years simply cannot handle the workloads or
    power the applications that will drive business decisions.
  - Business and IT leaders today identify that they must transform the way the
    enterprise does business or risk going out of business entirely.
  - In the recent 451 research (Voice of the Enterprise Storage) survey of 500
    senior IT decision makers, two thirds of respondents said their businesses
    will require moderate to significant transformation in the next 5 years.

### Digital Transformation Enabler

- What will enable digital transformation?
  - The digital on-ramps to transformation originate in emerging highly
    scalable, very reliable converged infrastructure.
  - The fast emerging newer technologies that will drive the applications and
    workloads in the transformed.
  - Enterprise include things like big data analytics, containers, Internet of
    Things (IoT), and hyper-aggressive cloud adoption.
  - Both microservices and containers are destined to play a major role in this
    enterprise re-platforming.

## Containers

- What is it?
  - Isolated workload environments in a virtualised operating system.
  - Consists of an application and all the figures and files needed to run it,
    packaged together.
  - They are lightweight virtual machines that can speed up workload processes
    and application delivery.
- Benefits
  - The ability to optimise hardware the company already owns, lessening the
    need to purchase as many new servers.
  - Most IT staff familiar to Linux and virtual machines should be able to
    acclimate to containers very easily.
  - Being open source, containers can help reduce acquisition costs and do away
    with hardware vendor lock-in.
  - As containers require no particular kind of programming framework or server,
    developers can write in the language of their choice, with the flexibility
    of running them on both Linux and Windows.
  - As they are independent environments, they aren't tied to software on
    physical machines, providing a solution for application-portability.

### Microservices

- What is it?
  - A type of software architecture.
  - Applications are broken down into a series of functions, and each singular
    function is performed by small, self-contained units working together.
  - As they are independent of each other they aren't reliant on a standardised
    programming language or data storage, promoting upmost portability.
  - This architecture is also significantly faster and more agile.
  - As the microservices are responsible for completing smaller, lighter tasks
    they can complete their tasks much faster, which then allows for more
    frequent reassessment and adaptation.

### Microservices and Containers

- Containers are an ideal deployment mechanism for microservices.
- Microservices take the "old" Service Oriented Architecture (SOA) on a leap
  forward by breaking each SOA component into de facto single purpose
  applications, but which perform only one function or activity (hence the name
  microservices).
- Organisations seeking to make the most of microservice models will
  increasingly deploy them within or inside containers.
- This will enable microservices to scale quickly owing to a simpler deployment
  model.
- With this simpler deployment model, microservices will be a key component of a
  highly scalable and flexible infrastructure that is straightforward to use,
  deploy and to maintain.

### Big Data and Big Data Analytics

- The big data world
  - Highly dynamic, with frequent new releases of the many different component.
  - Biggest challenge with big data, which includes Internet of Things (IoT)
    data, is that it is increasingly of the semi and unstructured data.
  - Legacy RDBMS simply cannot aggregate, store and process this data
    efficiently or effectively, certainly not in high volumes.
  - The data volumes are unprecedented and growing at high speed.
  - IT systems are under tremendous pressure to deal with the volume, variety,
    and velocity of new data, while at the same time pressured to delivery more
    personalisation and better service to the customer base.
  - Storing all the data is difficult, with many organisations looking to data
    lakes to collect and store huge volumes of data in native formats.

## Radio Frequency Identification (RFID) Technology

- Radio frequency identification technologies
  - Known commonly as RFID
  - Becoming an increasingly efficient tool for tracking items through a supply
    chain
- RFID device
  - Can be attached to products
  - A small package (or tag) made up of microprocessor and an antenna
- RFID reader
  - Can determine location of an item with an RFID tag.
  - Emits radio waves and receives signals back from the tag.
  - Sometimes called an interrogator.
- Advantage of RFID technology
  - Does not need a line-of-sight connection
  - Can withstand most environmental stresses
- Application areas for RFID
  - Walmart is on the leading edge of the move to integrate RFID technology into
    the supply chain
  - Pharmaceutical firms are evaluating the use of RFID technology
  - RFID technology is being employed to track medical devices

## Business Intelligence

- Also referred to _business analytics_
- A range of different applications and technologies used to extract and analyse
  large amounts of data to aid in decision making.
- Includes data-mining tools and querying tools
  - Often interactive and visual
- BI technologies are capable of handling large amounts of unstructured data to
  help identify, develop and/or create new strategic business opportunities.
- Analytic applications and business intelligence
  - Similar sets of data analysis tools applies to specific industries.
- Enterprise performance management
  - Concept of developing strategic goals for the organisation.
  - Gathering data to evaluate how the organisation is performing in relation to
    those goals.
- Governance, risk, and compliance category
  - A group of activities focused on ensuring an organisation is functioning
    ethically and legally.
- Data warehousing
  - Technology used to store the large volumes of data used in the analysis.
- Enterprise information management
  - Describes the business and technology functions that manage information as a
    corporate asset.

## In-Memory Computing

- Data in a data warehouse are structured as **multi-dimensional data cubes**.
  - Allow for relationships in the data to be analysed quickly
- Two main challenges with using a multi-dimensional cube structure
  - A significant level of technical expertise is needed to construct a cube.
  - A multi-dimensional cube necessarily restricts how the data can be analysed.
- Accessing data from memory much faster than accessing data from a hard disk.
- Reason why data warehouses use disk memory: storage capacity
  - Hard disks can store one thousand time mores data than memory for a
    comparable cost.
- Data compression provided by column storage
  - Makes it possible to store large volumes of data in memory without
    aggregation.
- Both SAP's and Oracle's in-memory solutions are designed to analyse "big
  data".
- Big data
  - Enormous amount of data that is now available for BI use from all the
    available sources, including:
    - ERP systems, Web sites, corporate databases, scientific research, Twitter,
      and other social networking applications.

## Mobile Computing

- Increasing use of smart phones, tablet computers, and other mobile computing
  devices.
- Mobile applications need to be developed for different kinds of smart phones,
  with different operating systems.
- Companies need to make many decisions about the use of mobile devices by
  employees.
- Mobile devices provide users with information can also be sources of
  information.

### From Internet-Enabled to Cloud Computing

- Cloud Computing
  - Delivery of a software product to a user via the Internet
  - The user typically accesses the cloud product through a Web browser or a
    lightweight application for a computer or mobile device.
- Challenges
  - Biggest challenge... there is no one single cloud.
  - Rather there are many, most enterprises will deploy applications to several
    of them simultaneously.
  - The challenge is one of orchestration and integration of data across various
    clouds.
  - Most organisations still choose to retain their most sensitive data on
    premises
  - Data from different applications must flow securely and seamlessly among
    these different environments in what is known as the hybrid IT world.
  - Hybrid IT - a combination of on-premises and off-premises public and private
    cloud as well as use of traditional on-premises non-cloud clusters.
  - Requires a converged data platform - i.e. a distributed processing model
    that scales easily across all locations and environments.

## SAP and the Internet

- 1996: SAP introduced its join Internet strategy with Microsoft
- Internet Transaction Server (ITS)
  - A sever-based software system that enabled efficient communication between
    an SAP ERP system and the Internet
  - Core of SAP's first effort to integrate the Internet with its products.
- May 1999: SAP announced mySAP.com
  - A new strategy designed to completely realigned the company and its product
    portfolio
  - Goal: combine e-commerce solutions with SAP's existing ERP applications,
    using cutting-edge web technology.
- 2000: SAP began building on the myAP.com vision
  - Added the capability for electronic marketplaces and corporate portals

### NetWeaver

- 2004: SAP introduced its first version of SAP NetWeaver
  - A collection of components that support business transactions over the
    Internet
  - Provides seamless connectivity of diverse applications.
- Web services
  - A combination of software tools that enables an organisation's various
    systems and applications to communicate with other applications.
  - SAP's NetWeaver is a web services platform that allows various vendor
    applications to share data over the Internet.
- SAP's enterprise service-oriented architecture (enterprise SOA)
  - Goal of making all of its business applications service based
- Benefit of adopting SOA:
  - Ability to quickly add new applications, making the organisation more
    responsive
  - Use of open standards
- Drawbacks:
  - Implementing SOA is not easy
  - Return on an SOA investment is often difficult to determine.

#### NetWeaver Tools and Capabilities

- SAP's NetWeaver platform is a collection of modules, including:
  - Enterprise Portal
  - Mobile Infrastructure
  - Business Intelligence
  - Master Data Management
  - Exchange Infrastructure
- SAP **Enterprise Portal** gives users complete access to all their work on a
  single screen
  - All information is available through the Web services provided by NetWeaver.
- NetWeaver's **Mobile Infrastructure** module allows users to access and work
  with data through mobile devices such as smart phones and pagers.
- **Business Intelligence (BI)** works with any database management software and
  any operating system that is running NetWeaver.
- **Master Data Management** provides data consistency within a company's SAP
  system.
- NetWeaver's **Exchange Infrastructure** module allows different applications
  to share data.

## SaaS: Software as a Service

- A software delivery model
- A software product is hosted by a company - such as SAP - on its severs and is
  accessed by customers via a web browser.
- Sometimes described as a utility.
- A subset of cloud computing.

### SAP Business ByDesign

- An example of SaaS for the ERP market
- First released in 2007
- A full ERP system delivered to customers via the cloud
- For small to medium sized companies:
  - Lowers the total cost of ownership of the software
  - Enables a rapid and implementation

### Advantages & Disadvantages of Using SaaS

- Advantages:
  - Initial affordability
    - Lower cost to implement software provided through SaaS
  - Shorter implementation time
    - Implementation time usually shorter as the user does not have to worry
      about technical issues.
  - Lower support costs and complexity
    - Do not need to hire additional IT personnel to implement new systems and
      applications.
- Disadvantages:
  - Security
  - Bandwidth/response time
  - Flexibility
  - No frills
  - Technical, not business focused

### Making a Recommendation

- Calculate the NPV
  - You will set up the spreadsheet to total all the costs of each option.
  - Calculate the net present value (NPV) of money for each scenario
- NPV
  - A way to figure out whether an investment is profitable
  - Can be used to compare outlay of funds from one method to another
  - Addresses the time value of money
- Why use NPV
  - When calculating two different investment options, NPV calculation allows
    different future expenses or earning to be calculated as an equivalent
    amount in the present time
  - NPV can be calculated over a number of years
    - In example: we need a five-year outlay of funds for the ERP project.

## Summary

- Technologies such as radio frequency identification (RFID) and smart-phones
  are fueling explosive growth in the amount of data available for businesses to
  process.
- Business intelligence (BI) tools are growing in sophistication and power
  - Technologies such as in-memory computing will provide greater speed and
    flexibility to BI users.
- Mobile computing technology is increasing the user of ERP and BI data.
- Cloud computing is the delivery of a software product to a user via the
  Internet
- Web services and service-oriented architecture offer a combination of software
  tools that enables various programs within an organisation to communicate with
  other applications.
- SAP's web services platform is NetWeaver
  - A collection of components that support business transactions over the
    Internet by providing seamless connectivity of diverse applications through
    the Internet.
- Software as a Service (SaaS) is a software delivery model in which a software
  product is hosted by a company - such as SAP - on its servers and is accessed
  by customers via a web browser
  - SaaS model allows companies to use ERP without a large initial investment
  - SaaS solutions allow for more rapid improvements in the software through
    user communities
  - There are some risks associated with provider
