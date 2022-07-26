# Lecture 9: ERP Implementation Issues - Data and System Integration and Configuration

## Objectives

- Explore the key integration issues - data & system integration
- Discuss Configuration Management and its important
- Identify the main drivers for Master Data Management
- Explore the benefits of data unification and data integration

## Business Benefits - Example: Integration of Supply Chain

- Gain competitive advantage and differentiation
  - Improvement real time responses
  - Just in time techniques
- Reduce operational costs
- Achieve better collaboration and coordination among supply chain partners
- Integrate business processes/BPR
  - Automate business processes
  - Reduce manual tasks
  - Reduce data redundancy

## Top Traits of a Successful ERP implementation

1. Focus on Business Processes and Requirements
   - Understand how your business operates
   - Define and prioritise your key business requirements
   - Business requirements should be defined during selection and refined
     throughout implementation.
2. Focus on Achieving a Positive ROI
   - Develop a specific and comprehensive business case prior to committing to
     an ERP solution.
   - Business benefits should be as tangible as the defined solution costs.
   - Establish key performance measures.
3. Project Management and Resource Commitment
   - Have strong project manager to support and participate in the project.
   - Implement a risk management and mitigation plan
   - Conduct ongoing phase reviews throughout implementation
4. Secure Executive Commitment
   - Support from top-management will minimise conflicts with business needs
5. Take Time to Plan Up Front
   - Take time to validate the software vendor's understanding of business
     requirements and their project plan.
   - The more time you spend, the less you will pay later.
6. Focus on Data Migration Early
   - Define the data scope up front, including for master and transactional
     data.
   - Data should be thoroughly tested during pilots and testing.
   - Garbage in = Garbage out
7. Adequate Training and Change Management
   - Training, change management, and job design is crucial to ERP projects.
   - ERP training should focus on business workflows rather than transactions.
   - Train-the-trainer approach
8. Know Why You're Implementing ERP
   - Clearly understand what you are trying to accomplish with an ERP system.
   - Have a well-defined purpose and goals.

## Connecting with the integration applications and data ecosystem

- Essential for enterprise agility
  - The application and data integration platform can drive benefits including
    real-time insights, obtaining a 360-degree customer view, and reducing
    decision times and business processes runtime.
- Endpoint support should include:
  - Applications such as enterprise resource planning (ERP),
  - Customer relationship management (CRM), etc.
  - Data stores (data warehouse, data lakes, etc.)
  - Application programming interfaces (APIs)
  - Business processes
  - Business-to-business (B2B) integration
  - Internet of Things (IoT) devices and machines
  - Mobile apps and associated data

### Key Integration Issues

- Best of breed applications
  - No one vendor can respond to every organisational need
- Multiple applications not designed to work together
- Data integration issues
- Integrate disparate IT applications
  - Best of breed
  - Legacy systems
  - Process integration
  - Application interfaces
- Managing the integrated enterprise
  - Critical to the success of any organisation

## Configuration Management

- Configuration management is...
  - a systems engineering process for establishing and maintaining consistency
    of a product's performance, functional and physical attributes with its
    requirements, design and operational information throughout its life.
    (ANSI/EIA-649B)
- The need for an efficient configuration management system...
  - When applied over the life cycle of a system, provides visibility and
    control of its performance, functional and physical attributes.
  - Verifies that a system performs as intended, and is identified and
    documented in sufficient detail to support its projected lifecycle.
  - Facilitates orderly management of system information and system changes.

## Systems Integration

- Systems Integration is...
  - The process of linking together different computing systems and software
    applications physically or functionally, to act as a coordinated whole
- System Integration involves...
  - Assembling the constituent parts of the enterprise systems in a logical,
    cost-effective manner.
  - Systems testing to verify that the system meets its requirements, and
  - Validating that the system performs in accordance with the customer/user
    expectations.

### Overcoming data integration issues with master data

- Master data are synchronised copies of core business entities (objects)
  - **Master data objects assigned a unique identifier**
    - customers, products, employees, vendors, parts
- Concept of master
  - implies all application users within the company link to a single core
    repository of the data
- Centralised governance over the master copies - master data management
  - Metadata
  - Data attributes
  - Data definitions
  - Roles, connections and taxonomies.

### Master Data Management

Master Data Management is a

- Set of disciplines, processes and technologies
- Used to create and maintain
  - Consistent,
  - Complete,
  - contextual and
  - accurate data quality
- Of multiple domains of enterprise master data across applications, systems and
  databases.
- Ensures quality business data for all stakeholders (users, and applications)
  across and beyond the enterprise landscape.
- Move to single version of the truth about business objects.

### The main drivers for MDM

- Regulatory compliance and reporting
  - Sarbanes Oxley
- Partner integration and collaboration
- Global demand and supply chain optimisation
- Privacy and data protection
- Meaningful data mining
  - Improved customer insight and interactions
- Better able to manage data
- Data integration to enable BI

### Five Key Factors in Architecting in a Master Data Solution

- An important role during MDM inception is that of solution architect
  - the one who should have the complete picture of the solution involving
    applications and technologies for profiling, data cleansing, consolidation,
    enrichment, de-duplication and synchronisation.
- Five key factors that a solution architect should look into during MDM hub
  design
  - **Data profiling** to understand the current state of data quality.
  - **Data integration** mechanisms to consolidate the data.
  - Designing an **extensible master data repository**.
  - Robust **data matching & survivorship** functionality.
  - **Seamless synchronisation** of master data.

### Without MDM...

- No MDM - No one consistent view of data - every department has different data.
- Master data generated and trapped in silos.
- Inaccurate information perpetuated.
- Incomplete view.

## Benefits of Data Unification

- Speed & Flexibility
  - Accelerate major process change from years to days
  - Compose new innovative processes and access your data through enterprise web
    services
- Productivity & Insight
  - Improve productivity by 50%
  - Automate manual tasks
- Consolidation & Control
  - Reduce costs by 70% with accurate data
  - Minimise errors and associated maintenance labor

### To be useful data needs to

- Satisfy organisational needs
- Be a true reflection of reality (timely)
- Be quickly accessible and (available/on demand)
- Be well organised
- Be correct

## An eight-point checklist for integration

1. Flexible delivery of enterprise-grade integration capabilities
   - The integration platform should allow applications and all manner of data
     stores (data warehouse, big data/data lakes, etc.) to be easily integrated.
2. Bulk data movement to ensure the timely delivery of any amount of data
   - The application and data integration solution should support multiple data
     transport modes - real-time, streaming, and event-based (including batch).
3. High availability is necessary to raise enterprise productivity
   - Whether cloud-based or on-premises, the integration solution should require
     little downtime for maintenance or data restoration.
4. Cloud application security
   - Allows the organisation to retain control data access rights, a critical
     factor in overall data security.
5. End-to-end audit trails
   - Permit all data integrations to be tracked, providing user-level detail.
6. Geo-redundancy and geo-fencing
   - The integration solution should support data granularity at regional and
     country-specific levels.
   - Geo-redundancy enables fast disaster recovery, while geo-fencing helps
     comply with regulations.
7. Connecting with the integration applications and data ecosystem
   - Essential for enterprise agility.
   - A wide range of endpoints such as devices, machines, APIs, application,
     data, and process integration must be supported to allow the company to
     respond to individual internal and external events.
8. Self-upgrading on-premise and cloud software
   - Eliminates time and resource-consuming upgrade cycles.
   - While most cloud software as a service (SaaS) is automatically updated,
     most on-premises software is not.

## Summary

- Integration as an important factor in improving business performance
- Top Traits for a successful ERP implementation
- Explore the key integration issues - data & system integration
- Discuss Configuration Management and its importance
- Identify the main drivers for Master Data Management
- Explore the benefits of data unification and data integration
- Checklist for integration
