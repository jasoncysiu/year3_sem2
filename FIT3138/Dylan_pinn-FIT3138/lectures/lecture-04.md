# ERP in Marketing and Sales Order Process

## Objectives

- Explain why unintegrated Marketing and Sales information systems lead to
  company-wide inefficiency, higher costs, lost profits, and customer
  dissatisfaction.
- Discuss sales and distribution in the SAP ERP system, and explain how
  integrated data sharing increases company-wide efficiency.
- Describe how SAP ERP processes a standard sales order.
- Describe the benefits of customer relationship management (CRM) software.

## Issues with Unintegrated Marketing and Sales IS

### Sales Quotations and Orders

- Inefficiencies in the ordering processes
  - determining the delivery date
  - checking customer’s credit status
  - Entering customer’s order into the current order entry system.

### Accounting and Invoicing

- Clerks can manually make adjustments for partial shipments and any other
  changes.
- Sometimes, order corrections are delayed and don’t catch up to the invoicing
  process
  - results in late or inaccurate invoices.

### Payment and Returns

- Problems with procedure for processing payments
  - if any errors have occurred in the sales process, customer will receive an
    incorrect invoice
  - many customers don’t return a copy of the invoice with their payment; errors
    can result.
- If a customer’s account has not been properly credited, customer may receive a
  dunning letter in error.

## SAP ERP in Sales and Distribution Process

- ERP allows business processes to cut across functional area lines.
- ERP systems can minimise data entry errors and provide accurate information in
  real-time to all users.
- ERP systems can track all transactions (such as invoices, packing lists, RMA
  numbers, and payments) involved in the sales order.

## Taking an Order in SAP ERP

- Organisation structures
  - SAP ERP system allows the user to define various ways to group customers and
    salespeople.
  - Distribution channel
- Master data: data that remain fairly stable
  - Maintained in the central database and available to all SAP ERP modules.
- Order entry screen in SAP ERP 6.0 Enterprise system
- A unique number assigned by the company to each customer in the database.
- For most data entry fields, SAP ERP system determines whether an entry is
  valid.
- Search screen for customers.

## Sales and Distribution in ERP

- SAP ERP Sales and Distribution module treats the sales order process as a
  cycle of events:
  - Pre-sales activities
  - Sales order processing
  - Inventory sourcing
  - Shipping (Delivery)
  - Billing
  - Payment

### Pre-Sales Activities

- Sales Support is a component of SD that assists in the sales, distribution,
  and marketing of a companies products and services to its customers. It
  contains the following functionality:
  - Creating and tracking customer contacts and communications (sales activity)
    - Phone call records
    - On-site meeting
    - Letters
    - Campaign communication
  - Implementing and tracking direct mailing, internet, and trade fair campaigns
    based on customer attributes.
- Pre-sales documents need to be managed within the presales activities:
  Inquiries and Quotations. These documents help identify possible sales related
  activities and determine sales probability.
- The ultimate goal of all pre-sales activities is to equip the sales technician
  with all the information necessary to negotiate and complete the potential
  sale.
- Information needed:
  - Past sales activity
  - Past communication
  - Contact information
  - General Company info
  - Credit limits and usage
  - Current back-orders
- $360^{\circ}$ view of your customer.

### Inquiry

- An inquiry is a customer's request to a company for information or quotation
  in respect to their products or services without obligation to purchase.
  - How much will it cost
  - Material/Service availability
  - May contain specific quantities and dates
- The inquiry is maintained in the system and a quotation is created to address
  questions for the potential customer.

### Quotation

- The quotation presents the customer with a legally binding offer to deliver
  specific products or a selection of a certain amount of products in a
  specified time frame at a pre-defined price.

### Sales Order Processing

- Sales order processing: series of activities that must take place to record a
  sales order.
- Sales order can start from a quotation or inquiry generated in the pre-sales
  step or just a call-in from customers.
- Information collected from the customer to support the quotation is
  immediately included in sales order.
- Critical steps in sales order processing:
  - Recording the items to be purchased
  - Determining the selling price
  - Recording the order quantities.
- Users can define various pricing alternatives in the SAP ERP system
- SAP ERP system checks the Accounts Receivable tables in the SAP ERP database
  to confirm the customer's available credit.
- If the customer has sufficient credit available:
  - Order is completed
- If the customer does not have sufficient credit available
  - SAP ERP system prompts sales personal to take on the possible appropriate
    actions.

### Sales Order

- The sales order contains all of the information needed to process your
  customers request, the following information is determined for each sales
  order:
  - Delivering Schedule
  - Shipping point and route determination
  - Availability Check
  - Transfer of requirements to MRP
  - Pricing
  - Credit limit check.

### Delivery Scheduling

- When an order is created you must enter a requested delivery date for the
  order or each line item.
- The system will then determine a delivery timeline, this will be used when
  determining our material availability, or ATP (Availability to Promise) date.
- The system will determine this date using forward and backward scheduling
  rules you have defined.

#### Backward Scheduling\

![](https://i.loli.net/2019/10/28/HmJ4egMDl2UdT3W.png)

#### Forward Scheduling\

![forward scheduling](https://i.loli.net/2019/10/28/HcmCl2T4Sujby7W.png)

### Shipping & Route Determination

- During the creation of sales order the system must determine the shipping
  point from which will be shipped and the route the material will take to get
  your warehouse to your customers location.
- A shipping point is determined for each line item within the order.
- The route determination is used to define the transit time of the material
  that we used in scheduling.

### Pricing

- The system displays pricing information for all sales documents on the pricing
  screens at both the header and the line item level.
  - Header pricing is valid for the whole order it is the cumulative of all line
    items within the order
  - Line item pricing is for each specific material.
- The system will automatically search for price, discounts, surcharges,
  calculate taxes and freight. You have the ability to manually manipulate the
  pricing at both the header and line item level within the sales order by
  entering a condition type and amount.
  - Taxes and freight can be set-up so we can't manually enter.

### Credit Check

- Allows your company to manage its credit exposure and risk for each customer
  by specifying credit limits.
- During the sales order process the system will alert the sales rep about the
  customers credit situation that arises, if necessary the system can be
  configured to block orders and deliveries.

### Inventory Sourcing

- Available-to-Promise (ATP) check
  - SAP ERP system checks company's inventory records and production planning
    records to see whether:
    - Requested material is available
    - Requested material can be delivered on the date the customer desires
  - Includes expected shipping time
- System can recommend an increase in planning production if a shortfall is
  expected.

### Availability Check

- Availability Check
  - Determines the material availability date
  - Considers all inward and outward inventory movements
- Proposes 3 methods of delivery
  - One-time delivery
  - Complete delivery
  - Delayed proposal

### Delivery (Shipping)

- The shipping process begins when the delivery document for the sales order is
  created. This document controls, supports, and monitors numerous sub-processes
  for shipping processing:
  - Picking
  - Packing
  - Post Goods Issue
- Integrate with the Material Management (MM) and Finance (FI) modules.
- Delivery process allows delivery to be created so that the warehouse and
  shipping activities are carried out efficiently.
- Once the system has created documents for picking, packing and shipping,
  documents are transferred to Materials Management module.

### Goods issue

- Even that indicates the legal change in ownership of the products
- Reduces inventory and enters Cost of Goods Sold
- Automatically updates the General Ledger (G/L) accounts
- Ends the shipping process and updates the status of the shipping documents.

### Billing

- The billing document is created by copying data from:
  - The sales order (Order-based billing), and/or
  - The delivery document (Delivery-based billing)
- The billing process is used to generate customer invoice which can be mailed,
  faxed, or transmitted electronically to the customer.
- It will update the customer's credit status.
- The billing document will automatically create a debit posting to your
  customer sub-ledger account and credit your revenue account.
- At this point that the sales process is passed over to Financial Accounting to
  await payment.

### Payment (Receipt)

- Payment is the final step in the sales order process, this step is managed by
  the Financial Accounting department.
- Final payment includes:
  - Posting payments against invoices
  - Reconciling differences between payment and invoice.
- Payment will create a posting clearing the liability in the A/R account and
  increases your bank account.
  - Debits cask (Bank Account) and credits (reduces) customer's account
    (Accounts Receivable)
- Timely recording of this transaction has an effect on the timeliness and
  accuracy of any subsequent credit checks for the customer.

### Document Flow

- When a sales order is saved, SAP ERP system assigns a document number to the
  sales order transaction.
- SAP ERP system keeps track of the document numbers for the sales order
  - Employees can track status of an order while it is in process or research it
    after shipping
- **Document flow** in SAP ERP: linked set of document numbers related to an
  order.

## Customer Relationship Management

- Companies without a good connection between their workers and their customers
  run the risk of losing business.
- **Customer relationship management (CRM) software** can help companies
  streamline their interactions with customers.
- Examples of tools that provide CRM functionality within the SAP ERP system:
  - Contact management tool
    - To make sure that information about sales contacts is available throughout
      the organisation
  - Sales activity manager
    - Supports a strategic and organised approach to sales activity planning and
      can help make sure that follow-up activities are accomplished.

### The Benefits of CRM

- Lower costs
- Higher revenue
- Improved strategy and performance measurement.

## Summary

- An unintegrated information systems are at the root of an inefficient and
  costly sales order process.
- An ERP system such as SAP ERP treats a sale as a sequence of related
  functions:
  - Including: taking orders, setting prices, checking products availability,
    checking the customer's credit line, arranging for delivery, billing the
    customer, and collecting payment.
  - In SAP ERP, all these transactions, or documents, are electronically linked.
