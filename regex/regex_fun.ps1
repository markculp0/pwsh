
# =======================================

# Regex fun

# =======================================

$my_str = "Bobby is a fun guy,"

# ---------------------------------------

# Any "B": True, matches "B"
Write-Host("The string, '" + $my_str +  "' matches the regex: '[B]'" + "?" )

$my_str -match '[B]'; Write-Host("Matched: " + $matches[0] + "`n"); $matches[0] = ""

# ---------------------------------------

# Any "x": False, matches nothing
Write-Host("The string, '" + $my_str +  "' matches the regex: '[x]'" + "?" )

$my_str -match '[x]'; Write-Host("Matched: " + $matches[0] + "`n")

# ---------------------------------------

# Not an "x" followed by anything: True, matches all
Write-Host("The string, '" + $my_str +  "' matches the regex: '([^x]*)'" + "?" )

$my_str -match '([^x]*)'; Write-Host("Matched: " + $matches[1] + "`n"); $matches[1] = ""

# ---------------------------------------



