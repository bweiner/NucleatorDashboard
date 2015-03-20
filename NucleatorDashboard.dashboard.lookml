- dashboard: nucleatordashboard
  title: Nucleatordashboard
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: add_a_unique_name_80
    title: Untitled Visualization
    type: looker_area
    model: nuleatordashboard
    explore: billing_table
    dimensions: [billing_table.usageenddate_time, billing_table.linkedaccountid]
    pivots: [billing_table.linkedaccountid]
    measures: [billing_table.unblendedcost]
    filters:
      billing_table.usageenddate_date: 3 days
    sorts: [billing_table.usageenddate_time desc]
    limit: 500
    total: false
    show_null_points: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    show_value_labels: false
    show_view_names: true
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_gridlines: false
    x_axis_scale: time
    x_axis_label: Time of AWS Charge
    y_axis_labels: [Hourly AWS Cost]
    stacking: ''
    point_style: none
    interpolation: linear


