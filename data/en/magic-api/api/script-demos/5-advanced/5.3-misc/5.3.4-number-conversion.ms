{
  "properties": {},
  "id": "dd98420301264750bbf97138e206df95",
  "script": null,
  "groupId": "1ee3e804ddc145d3892cb0eb0c409302",
  "name": "5.3.4 Number Conversion",
  "createTime": null,
  "updateTime": 1679918866221,
  "lock": null,
  "createBy": null,
  "updateBy": null,
  "path": "/number/convert",
  "method": "GET",
  "parameters": [],
  "options": [],
  "requestBody": "",
  "headers": [],
  "paths": [],
  "responseBody": "{\n    \"code\": -1000,\n    \"message\": \"Expected ',', but got 'isInt'\",\n    \"data\": null,\n    \"timestamp\": 1615984558701,\n    \"executeTime\": 7\n}",
  "description": null,
  "requestBodyDefinition": null,
  "responseBodyDefinition": null
}
================================
// ===== Purpose =====
// Demonstrates the rich number conversion methods in magic-script
// Includes: decimal rounding, percentage conversion, ceiling/floor and type casting
// These are magic-script extensions on the Number type

return {
    // toFixed(n): keep n decimals, returns a string (same as JavaScript's toFixed)
    'fixed' : 123.455.toFixed(2),       // Result: "123.46" (rounded, returns String)

    // round(n): keep n decimals, returns a number
    'round' : 123.452.round(2),         // Result: 123.45 (rounded, returns Number)

    // asPercent(n): convert to percentage format with n decimals
    'percent': 0.456789.asPercent(2),   // Result: 45.68 (numeric form of 45.68%)

    // ceil(): round up (away from zero)
    'ceil': 1.1.ceil(),                 // Result: 2 (always rounds up)

    // floor(): round down (truncate)
    'floor': 1.9.floor(),              // Result: 1 (drops the fractional part)

    // ::int: type cast (string/number to integer)
    '::int': '-456.789'::int            // Result: -456 (string -> integer, truncates decimals)
}
