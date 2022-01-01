###############################################################################
## Temperature.psm1
## Holmes, PS Cookbook, 4th Ed., June 2021
##
## 1. Placed in 'C:\Program Files\PowerShell\7\Modules\Temperature' for all users on system
## 2. Import-Module Temperature
## 3. Convert-FahrenheitToCelsius 81
###############################################################################

## Convert Fahrenheit to Celsius
function Convert-FahrenheitToCelsius([double] $fahrenheit)
{
  $celsius = $fahrenheit - 32
  $celsius = $celsius / 1.8
  $celsius
}

## Convert Celsius to Fahrenheit
function Convert-CelsiusToFahrenheit([double] $celsius)
{
  $fahrenheit = $celsius * 1.8 
  $fahrenheit = $fahrenheit + 32
  $fahrenheit
}

