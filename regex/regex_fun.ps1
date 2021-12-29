
# =======================================

# Regex fun

# =======================================

$my_str = "Bobby is a fun guy,"

# ---------------------------------------

# Any "B": True
Write-Host("The string, '" + $my_str +  "' matches the regex: '[B]'" + "?" )

$my_str -match '[B]'; Write-Host("Matched: " + $matches[0] + "`n")

# ---------------------------------------

# Any "x": False
Write-Host("The string, '" + $my_str +  "' matches the regex: '([x])'" + "?" )

$my_str -match '([x])'; Write-Host("Matched: " + $matches[1] + "`n")

# ---------------------------------------

# Not an "x" followed by anything: True
Write-Host("The string, '" + $my_str +  "' matches the regex: '([^x]*)'" + "?" )

$my_str -match '([^x]*)'; Write-Host("Matched: " + $matches[1] + "`n")

# ---------------------------------------



