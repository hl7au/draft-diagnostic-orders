Profile: EOrdersPlacerGroupNumber
Parent: AULocalOrderIdentifier
Id: eorders-placergroupnumber
Title: "EOrders Placer Group Number"
Description: "EOrders Placer Group Number profile"
* . ^short = "EOrders Placer Group Number"
* type ^short = "Coded identifier type for placer group number"
  * coding 1..1    
  * coding = $v2-0203#PGN
    * ^short = "Planer Group Number"
* system ^short = "System identifier of the organisation that assigned the placer group number, preferably a HPI-O scoped local order identifier system. For example http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003620000000000"
* value ^short = "Placer group number"
* assigner only Reference(AUCoreOrganization)
  * ^short = "Organisation that assigned the placer group number"
  * display ^short = "Organisation name"
