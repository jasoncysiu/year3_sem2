# Lecture 7: Process Modelling and Improvement and ERP Implementation

## Objectives

- Discuss business process and process mapping
- Develop an event process chain (EPC) diagram of a basic business process.
- Evaluate values added activities and develop process improvement strategies.
- Discuss the key issues in managing an ERP implementation project.
- Describe some of the key tools used in managing an ERP implementation project.

## Introduction

### Business Process

- What is Business Process Management?
- Business Improvement, Optimisation or Re-engineering?

### Process Modelling

- Process mapping
- Tools that can be used to describe business processes - flowcharts, events
  process chains.
- Can help managers identify process elements that can be improved.

### ERP implementation

- Role of process-modelling tools in ERP implementation projects

## Business Process

- A business process describes a sequence of activities or tasks for the
  creation of goods and services, affecting the success of the company and is
  driven by a transaction.
- Each process consists of a sequence of steps.
- A business step usually corresponds to a program or to a transaction. However,
  a business step may be "completed" by using one or more different programs or
  transactions.
- In a company there are several individual processes that are typically
  interdependent.

### Improvement/Optimisation/Re-engineering?

- Business Process Improvement
  - Improve process
  - Remove Waste
- Business Process Optimisation
  - Ultimate Efficiency
  - Greater business value
- Business Process Re-engineering
  - Radical change
  - Start over from scratch

#### What is Business Process Re-engineering?

- Business process re-engineering (BRP) is the analysis and redesign of
  **workflows** within and between enterprises in order to optimise end-to-end
  processes and automate non-value-added tasks.

#### 7 Re-engineering Principles

- Organise around outcomes, not tasks.
- Identify all the processes in an organisation and prioritise them in order to
  redesign urgency.
- Integrate information processing work into the real work that produces the
  information.
- Treat geographically dispersed resources as though they were centralised.
- Link parallel activities in the workflow instead of just integrating their
  results.
- Put the decision point where the work is performed, and build control into the
  process.

## Business Process Modelling

- BPM is the study of the design, execution and management of business processes
  defined independently of a single application.
- Is is the way in which an organisation manages its business through modelling
  its processes.
- Illustrated description of how things get done
- Enables participants to visualise an entire process and identify areas of
  strengths and weaknesses.
  - Enables gap analysis

### Benefits of BPM

- Formalisation of current processes
- Allows for re-engineering
  - Improved process performance
- Provides the base for strategic initiatives
- Greater efficiency
- Increased productivity
- Traceability of compliance processes
- Links to other web service powered processes that can communicate with other
  process in other companies and are wired for EAI (Enterprise Application
  Integration).

### Process Modeling

#### Process Model

- Any abstract representation of a process.

#### Process-modeling tools

- Provide a way to describe a business process so that all participants can
  understand the process.

#### Advantages of process models

- Graphical representations are usually easier to understand than written
  descriptions
- Provide a good starting point for analysing a process
  - Participants can design and implement improvements
- Document the business process
  - Easier to train employees to support the business process

### Flowcharting Process Models

#### Flowchart

- Any graphical representation of the movement or flow of concrete or abstract
  items.
- Clear, graphical representation of a process from beginning to end
- Uses a standardised set of symbols

#### Process mapping

- Often used interchangeably with flowcharting
- Specifically refers to activities occurring within an _existing_ business
  process

#### Basic Flowcharting Symbols\

![](https://tva1.sinaimg.cn/large/006y8mN6ly1g8jzoby653j30ju0e0q3t.jpg)

### Event Process Chain (EPC) Diagrams

**Event process chain (EPC)** format

- Uses only two symbols to represent a business process
- Matches the logic and structure of SAP's ERP software design.
- Two structures: events and functions
  - **Events**: a state or status in process
  - **Functions**: part of the process where change occurs

#### EPC software

- Enforces an event-function-event structure
- Standardisation naming convention for functions and events

#### Three types of branching connectors

- `AND`
- `OR`
- Exclusive OR (`XOR`)

#### Basic ERP diagram can be augmented with additional information

- This additional information is called a data element

### EPC Diagrams

![](https://tva1.sinaimg.cn/large/006y8mN6ly1g8jzvdbl7pj30qr0isq58.jpg)

![](https://tva1.sinaimg.cn/large/006y8mN6ly1g8jzw40493j30r90de40a.jpg)

![](https://tva1.sinaimg.cn/large/006y8mN6ly1g8jzwgoahoj30r90m1423.jpg)

#### Splitting and consolidating paths

- The following figure shows the splitting and consolidating of a path through
  the process.
- Note the same type of connector that is used to split the path must be used to
  consolidate it.

![](https://tva1.sinaimg.cn/large/006y8mN6ly1g8jzy5gb6fj30bd0mxac3.jpg){width=50%}

#### EPC diagram with organisational and data elements

- The following figure shows an EPC augmented with:
  - **data elements** - Unapproved multi-copy expense report, and
  - **organisational elements** - Salesperson, Sales manager
- This provides a more complete description of the process, documenting the
  "who" and "what" aspects of the process.

### Process Improvement

- Hammer et al. argued that many things were done in organisations because
  _"that was they way they had always been done", not because they add value._
- Value analysis
  - Each activity in the process is analysed for the value it adds to the
    product or service.
  - **Value added** is determined from the perspective of customer
  - _Real value:_ value for which the customer is willing to pay
  - _Business value_: value that helps the company run its business
  - _No value:_ an activity that should be eliminated

#### Evaluating Process Improvement

- Disrupting the current process to make changes can be costly and time
  consuming.
- **Dynamic process modeling** takes a basic process flowchart and puts it in
  motion
  - Uses computer simulation techniques to facilitate the evaluation of proposed
    process changes
- Computer simulation
  - Uses repeated generation of random variables that interact with a logical
    model of the process
  - Predict performance of the actual system

### ERP Workflow Tools

#### Workflow Tools

- Software programs that automate the execution of business processes and
  address all aspects of a process, including:
  - Process flow (logical steps in the business process)
  - People involved (the organisation)
  - Effects (the process information)

#### ERP software provides a workflow management system

- Supports and speeds up business process
- Enables employees to carry out complex business processes and track the
  current status of a process at any time.

#### Features and Benefits

- E.g. SAP Business Worklow
  - Links employees to the business transactions that need to be performed.
  - Employees can track and monitor progress of workflow tasks and take action
    if tasks seem to be falling behind schedule.
  - Proactively connects employees with business transactions using SAP's
    internal email system and workflow tasks
  - Worklow system can automatically take various actions like:
    - Changing the workflow task priority
    - Sending email reminders to the employees responsible for the work
- For sporadic processes, workflow tools are a powerful way to improve process
  efficiency and effectiveness.

## ERP Implementation

### ERP System Costs and Benefits

#### ERP implementation is expensive

- Usually ranging between \$10 million and \$500 million, depending on company
  size.

#### Costs of ERP implementation

- Software licensing fees
- Consulting fees
- Project team member time
- Employee training
- Productivity losses

#### To justify the cost

- Companies must identify a significant financial benefit that will be generated
  by ERP system
- Only way companies can save money with ERP systems is by using them to support
  more efficient and effective business processes

#### Additional implementation issues

- Companies must manage transfer of data from old computer systems to new ERP
  system
- Change management

### Implementation and Change Management

- Key challenge is not in managing technology, but in managing people
- ERP system changes how people work
  - To be effective, change may have to be dramatic
  - Business processes that are more effective require fewer people
  - Some employees may be eliminated from their current jobs
- Organisational Change Management (OCM)
  - Managing the human behaviour aspects of organisational change
  - People do not mind change, they mind being changed
  - If ERP implementation is a project that is being forced on employees, they
    will resist it
- Staff involvement
  - When employees have contributed to a process change, they have a sense of
    ownership and will likely support the change

### Implementation Tools

- Implementation Tools
  - Many tools are available to help manage implementation projects
  - Example: process mapping
- SAP Solution Manager tool
  - Helps companies manage implementation of SAP ERP
  - ERP implementation project is presented in a five-phase Implementation
    Roadmap:
    - Project Preparation (15 to 20 days)
    - Business Blueprint (25 to 40 days)
    - Realisation (55 to 80 days)
    - Final Preparation (35 to 55 days)
    - Go Live and Support (20 to 24 days)
- Project Preparation
  - Organising technical team
  - Defining system landscape
  - Selecting hardware and database vendors
  - Defining project's scope
    - Scope creep
- Business Blueprint
  - Produces detailed documentation of business process requirements of the
    company process requirements of the company
- Realisation
  - Project team members work with consultants to configure the ERP software in
    development system.
- Final Preparation
  - Testing the system throughput for critical business processes
  - Setting up help desk for end-users
  - Setting up operation of the Production (PROD) system and transferring data
    from legacy systems
  - Conducting end-user training
  - Setting Go Live date
- Go Live and Support
  - Company begins using new ERP system
  - Monitoring of system is critical so that changes can be made quickly if
    performance of the system is not satisfactory
  - Important to set a date at which the project will be complete

### System Landscape Concept

SAP recommends a system landscape for implementation

- Three completely separate SAP systems:
  - **Development DEV**
  - **Quality Assurance QAS**
  - **Production PROD**
- **Transport directory:**
  - special data file location on DEV server
- Development (DEV) system used to develop configuration settings and special
  enhancements using ABAP code
- Changes recorded in transport directory
- Changes imported into QAS system
- QAS system: changes are tested
- All settings, programs, and changes that pass testing are transported to PROD
  system
- PROD system: used by company to run its business processes

## Summary

- Business processes
  - ERP systems are designed to provide the information, analysis tools, and
    communication abilities to support efficient and effective business
    processes.
  - Process modelling: fundamental tool in understanding and analysing business
    processes
- Process mapping: process-modelling tool that uses graphical symbols to
  document business processes
  - Other methodologies: hierarchical modelling, deployment flowcharting, event
    process chain diagramming, value analysis, and business process improvement.
  - SAP's Solution Manager: set of tools and information that can be used to
    guide an implementation project
    - Included in SAP ERP to help manage the implementation of ERP software
- SAP's system landscape was introduced to show how changes to ERP system during
  implementation (and beyond) are managed.
- Most challenges to ERP implementation involve managing personnel and their
  reactions to the change, rather than managing technical issues.
