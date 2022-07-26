# Lecture 5: ERP in Production and Supply Chain Management

## Objectives

- Describe the steps in the production planning process of a high-volume
  manufacturer.
- Describe a company's production and materials management problems.
- Describe how a structured process for Supply Chain Management planning
  enhances efficiency and decision making.
- Describe how production planning data in an ERP system can be shared with
  suppliers to increase supply chain efficiency.

## Introduction

- Supply Chain Management (SCM) in an ERP system.
- Fitter Snacker is part of a supply chain.
- FS's SCM problems and how ERP can help fix them.

## Production Overview

- To meed customer demand efficiently, Fitter Snacker must:
  - Develop a forecast of customer demand
  - Develop a production schedule to meet the estimated demand.
- ERP system is a good tool for developing and executing production plans.
- Goal of production planning is to schedule production economically.

Three general approaches to production

- **Make-to-stock** items: made for inventory (the "stock") in anticipation of
  sales orders.
- **Make-to-order** items: produced to fill specific customer orders.
- **Assemble-to-order** items: produced using a combination of make-to-stock and
  make-to-order processes.

### An Example: Fitter Snacker's Manufacturing Process

Fitter Snacker uses make-to-sock production.

![](https://tva1.sinaimg.cn/large/006y8mN6ly1g8jiew7tw3j30xo0f6ad6.jpg)

#### Fitter Snacker's Production Problems

Fitter Snacker has problems deciding _how many_ bars to make and _when_ to make
them.

##### Communication problems

- FS's marketing and Sales personnel do not share information with Production
  personnel.
- Production personnel find it hard to deal with sudden increases in demand.
  - Might cause shortages or stockout.

##### Inventory problems

- Production manager lacks systematic method for:
  - Meeting anticipated sales demand.
  - Adjusting production to reflect actual sales.

##### Accounting and purchasing problems

- **Standard costs**: normal costs of manufacturing a product.
- Production and accounting must periodically compare standard costs with actual
  costs and then adjust the accounts for the inevitable differences.

## The Production Planning Process

Three important principles for production planning:

- **Sales Forecast**
  - Work from sales forecast and current inventory levels to create an
    "aggregate" (combined) production plan for all products.
- **Production Plan**
  - Break down aggregate plan into more specific production plans for individual
    products and smaller time intervals.
- **Raw Material Requirements**
  - Use production plan to determine raw material requirements.

### The SAP ERP Approach to Production Planning

![](https://tva1.sinaimg.cn/large/006y8mN6ly1g8jiq2jqlij30ew0gw3zi.jpg){width=50%}

## Sale Forecasting

- SAP's ERP system takes an integrated solution
  - Whenever a sale is recorded in Sales and Distribution (SD) module, quantity
    sold is recorded as a consumption value for that material.
- Simple forecasting technique
  - Use a prior period's sales and then adjust those figures for current
    conditions.
- In SAP ERP, sales forecast can be made using:
  - Historical sales data from the Sales and Distribution (SD) module.
  - Input from plans developed in Controlling (CO) module.
- CO module
  - Profit goals for company can be set
  - Sales levels needed to meet the profit goals can be estimated.

## Sales and Operations Planning

- Sales and operations planning (SOP)
  - Input: sales forecast provided by marketing
  - Output: production plan designed to balance market demand with production
    capacity.
    - Production plan is the input to the next step, demand management.
- **Rough-cut planning**: common term in manufacturing for aggregate planning
  - Disaggregated to generate detailed production schedules
- Once SAP ERP system generates a forecast, the planner can view the results
  graphically
- Rough-cut capacity planning applies simple capacity-estimating techniques to
  the production plans to see if the techniques are feasible.
- Disaggregating the sales and operations plan
  - Companies typically develop sales and operations for product groups.
  - SAP ERP system allows any number of products to be assigned to a product
    group.
  - Sales and operation plan disaggregated
    - Production plan quantities specified for the group are the individual
      products that make up the group.

## Demand Management

DM creates a forecast of market demand for the products you sell. Forecast is
based on customer contracts, planned sales orders and other demands.

- Links the sales and operations planning process with detailed scheduling and
  materials requirements planning processes.
- Output: **mater production schedule (MPS)**
  - Production plan for all finished goods.

### Demand Planning Process

- Past sales order quantities form a basis for the forecasting of future
  demands.
- One of events such as trade fairs can be included in the forecast.
- The demand plan is released as a planned independent requirement.
- These form the basis for purchasing and production planning.

## Materials Requirements Planning (MRP)

- Determines required quantity and timing of the production or purchase of sub-
  assemblies and raw materials needed to support MPS.
- **Bill of material (BOM)**: list of the materials (including quantities)
  needed to make a product.
- Lead times and lot sizing
  - **Lead time**: cumulative time required for the supplier to receive and
    process the order, take the material out of stock, package it, load it on a
    truck, and deliver it to the manufacturer.
  - **Lot sizing**: determining production quantities and order quantities.
- **MRP record**: standard way of viewing the MRP process on paper

## Detailed Scheduling

- Detailed plan of what is to be produced, considering capacity and available
  labour
- One key decision in detailed production scheduling:
  - How long to make the production runs for each product
- Production run length requires a balance between setup costs and holding costs
  to minimise total costs to the company.
  - Production runs should be decided by evaluating the cost of equipment setup
    and holding inventory.
- Integrated information system simplifies this analysis.
  - Automatically collects accounting information that allows managers to better
    evaluate schedule trade-offs in terms of costs to company.
- Fitter Snacker uses repetitive manufacturing
- Repetitive manufacturing environments usually involve production lines that
  are switched from one product to another similar product.
  - Production lines are scheduled for a period of time, rather than for a
    specific number of items.

## Providing Production Data to Accounting

- In the manufacturing plant, ERP packages do not directly connect with
  production machines.
- Data can be entered into SAP ERP through a PC on the shop floor, scanned by a
  barcode reader or radio frequency identification (RFID) technology, or a
  mobile device.
- In an integrated ERP system, the accounting impact of a material transaction
  can be recorded automatically.
- Once FS accepts shipment, receiving must notify SAP ERP system of the arrival
  and acceptance of the material.
  - Goods receipt transaction
- Receiving department must match goods receipt with purchase order that
  initiated it.
- When receipt is successfully recorded, SAP ERP system immediately records the
  increase in inventory levels for the material.

## ERP and Suppliers

- FS is part of the supply chain
  - Starts with farmers growing oats and wheat
  - Ends with a customer buying a bar from a retail store
- ERP systems can play a key role in collaborative planning.
- Working with suppliers in a collaborative fashion requires trust among all
  parties.
  - Company opens its records to its suppliers
  - Suppliers can read company's data because of common data formats.
- Advantages
  - Reductions in paperwork
  - Savings in time
  - Other efficiency improvements

## The Traditional Supply Chain

- **Supply chain**: all activities that occur between the growing or mining of
  raw materials and the appearance of finished products on the store shelf.
- Traditional supply chain
  - Information is passed through the supply chain reactively as participants
    increase their product orders.
  - Inherent time lags cause problems.
- EDI and ERP
  - Before ERP systems where available, companies could be linked with customers
    and suppliers through electronic data interchange (EDI) systems.
  - Well-developed ERP system can facilitate SCM
    - Needed production planning and purchasing systems already in place
  - With ERP system, sharing production plans along the supply chain can occur
    in real time.

## The Measures of Success

- Performance measurements
  - **Metrics**
  - Show the effects of better supply chain management
- **Cash-to-cash cycle time**
  - Time between paying for raw materials and collecting cash from customer
- SCM costs
  - Include cost buying and handling inventory, processing orders, and
    information systems support.
- **Initial fill rate**
  - Percentage of the order that the supplier provided in the first shipment.
- **Initial order lead time**
  - Time needed for the supplier to fill the order
- **On-time performance**
  - If supplier agreed to requested delivery dates, tracks how often supplier
    actually met those dates.

## Summary

- ERP system can improve the efficiency or production and purchasing processes
  - Efficiency begins with Marketing sharing a sales forecast.
  - Production plan is created based on sales forecast and shared with
    Purchasing so raw materials can be ordered properly.
- Companies can do production planning without an ERP system, but an ERP system
  increases company's efficiency
  - ERP system that contains materials requirements planning allows Production
    to be linked to the Purchasing and Accounting
  - This data sharing increases a company's overall efficiency
- The successful integration of these processes together with process
  optimisation enable organisations to obtain value by:
  - increasing customer satisfaction,
  - increasing productivity and
  - decreasing overall operating costs.
- Companies are building on their ERP systems and integrated systems philosophy
  to practice supply chain management (SCM)
  - SCM: Company looks at itself as part of a larger process that includes
    customer and suppliers
  - Using information more efficiently along the entire chain can result in
    significant cost savings.
  - Complexity of the global supply chain
    - Developing a planning system that effectively coordinates information
      technology and people is a considerable challenge.
