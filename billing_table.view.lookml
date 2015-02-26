- view: billing_table
  sql_table_name: public.billing_table
  fields:

  - dimension: availabilityzone
    sql: ${TABLE}.availabilityzone

  - measure: blendedcost
    type: sum
    sql: ${TABLE}.blendedcost
    
  - dimension: blendedrate
    type: number
    sql: ${TABLE}.blendedrate

  - dimension: invoiceid
    sql: ${TABLE}.invoiceid

  - dimension: itemdescription
    sql: ${TABLE}.itemdescription

  - dimension: linkedaccountid
    sql: ${TABLE}.linkedaccountid

  - dimension: operation
    sql: ${TABLE}.operation

  - dimension: payeraccountid
    sql: ${TABLE}.payeraccountid

  - dimension: pricingplanid
    sql: ${TABLE}.pricingplanid

  - dimension: productname
    sql: ${TABLE}.productname

  - dimension: rateid
    sql: ${TABLE}.rateid

  - dimension: recordid
    sql: ${TABLE}.recordid

  - dimension: recordtype
    sql: ${TABLE}.recordtype

  - dimension: reservedinstance
    sql: ${TABLE}.reservedinstance

  - dimension: resourceid
    sql: ${TABLE}.resourceid

  - dimension: subscriptionid
    sql: ${TABLE}.subscriptionid

  - measure: unblendedcost
    type: sum
    sql: ${TABLE}.unblendedcost

  - dimension: unblendedrate
    type: number
    sql: ${TABLE}.unblendedrate

  - dimension_group: usageenddate
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.usageenddate

  - dimension: usagequantity
    type: number
    sql: ${TABLE}.usagequantity

  - dimension_group: usagestartdate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.usagestartdate

  - dimension: usagetype
    sql: ${TABLE}.usagetype

  - dimension: ut_name
    sql: ${TABLE}.ut_name

  - dimension: ut_nucleatorcage
    sql: ${TABLE}.ut_nucleatorcage

  - dimension: ut_nucleatorcustomer
    sql: ${TABLE}.ut_nucleatorcustomer

  - dimension: ut_nucleatorgroup
    sql: ${TABLE}.ut_nucleatorgroup

  - dimension: ut_nucleatorstackset
    sql: ${TABLE}.ut_nucleatorstackset

  - dimension: ut_nucleatorstacksetinstance
    sql: ${TABLE}.ut_nucleatorstacksetinstance

  - dimension: ut_offering
    sql: ${TABLE}.ut_offering

  - dimension: ut_owner
    sql: ${TABLE}.ut_owner

  - dimension: ut_purpose
    sql: ${TABLE}.ut_purpose

  - measure: count
    type: count
    drill_fields: [ut_name, productname]

