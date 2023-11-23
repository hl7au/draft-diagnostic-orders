Invariant: inv-urgent-comms-urgent-request
Description: "An urgent CommunicationRequest to Practitioner must be based on an urgent ServiceRequest"
Severity: #error
Expression: "resolve().priority = 'urgent'"