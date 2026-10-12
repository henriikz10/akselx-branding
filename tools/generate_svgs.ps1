# Generador de logotipos SVG + conceito.md das 6 propostas AKSEL X
$ErrorActionPreference = 'Stop'
$root = 'C:\Users\Carlos Henrique\Documents\Default Project\AKSEL_X_BRANDING'

function New-Logos {
  param(
    [string]$Dir, [string]$Lab,
    [string]$SymC, [string]$SymB, [string]$SymW,
    [string]$C1, [string]$C2, [string]$F
  )
  $svd = "$root\03_LOGOTIPOS_VETORIAIS\PROPOSTA_$Lab"
  if (-not (Test-Path -LiteralPath $svd)) { New-Item -ItemType Directory -Path $svd -Force | Out-Null }

  $symBox = '<g transform="translate(60 60) scale(0.42) translate(-60 -60)">{0}</g>'
  $symHor = '<g transform="translate(16 14) scale(0.76) translate(0 14)">{0}</g>'
  $symVer = '<g transform="translate(34 18) scale(0.78)">{0}</g>'

  $txt = '<text font-family="{0}" font-weight="700" font-size="30" letter-spacing="1">AKSEL <tspan fill="{1}">X</tspan></text>'

  $hC = "<svg xmlns='http://www.w3.org/2000/svg' width='380' height='120' viewBox='0 0 380 120'>$symHor`n  <text x='150' y='72' font-family='$F' font-weight='700' font-size='38' letter-spacing='1' fill='$C1'>AKSEL <tspan fill='$C2'>X</tspan></text></svg>"
  $vC = "<svg xmlns='http://www.w3.org/2000/svg' width='170' height='210' viewBox='0 0 170 210'>$symVer`n  <text x='85' y='196' text-anchor='middle' font-family='$F' font-weight='700' font-size='27' letter-spacing='1' fill='$C1'>AKSEL <tspan fill='$C2'>X</tspan></text></svg>"
  $sC = "<svg xmlns='http://www.w3.org/2000/svg' width='120' height='120' viewBox='0 0 120 120'>$SymC</svg>"
  $mB = "<svg xmlns='http://www.w3.org/2000/svg' width='360' height='120' viewBox='0 0 360 120'>$symHor`n  <text x='150' y='72' font-family='$F' font-weight='700' font-size='38' letter-spacing='1' fill='#000000'>AKSEL X</text></svg>"
  $mW = "<svg xmlns='http://www.w3.org/2000/svg' width='360' height='120' viewBox='0 0 360 120'>$symHor`n  <text x='150' y='72' font-family='$F' font-weight='700' font-size='38' letter-spacing='1' fill='#FFFFFF'>AKSEL X</text></svg>"
  $fC = "<svg xmlns='http://www.w3.org/2000/svg' width='64' height='64' viewBox='0 0 64 64'><g transform='scale(0.53)'>$SymC</g></svg>"

  $files = [ordered]@{
    'akselx_horizontal_color.svg' = $hC
    'akselx_vertical_color.svg'    = $vC
    'akselx_simbolo_color.svg'     = $sC
    'akselx_mono_black.svg'        = $mB
    'akselx_mono_white.svg'        = $mW
    'akselx_favicon_color.svg'     = $fC
  }
  foreach ($k in $files.Keys) {
    [System.IO.File]::WriteAllText("$svd\$k", $files[$k], (New-Object System.Text.UTF8Encoding($false)))
    Write-Output "  $Lab / $k"
  }
}

# ---------- PROPOSTA 01 · CORPORATE GLOBAL ----------
$p01C = "<rect x='8' y='8' width='104' height='104' rx='20' fill='none' stroke='#0B2545' stroke-width='5'/><g transform='rotate(45 60 60)' fill='#0B2545'><rect x='40' y='17' width='40' height='86' rx='9'/><rect x='17' y='40' width='86' height='40' rx='9'/></g>"
$p01B = $p01C -replace '#0B2545','#0D1520'
$p01W = $p01C -replace '#0B2545','#FFFFFF'
New-Logos -Dir $root -Lab '01' -SymC $p01C -SymB $p01B -SymW $p01W -C1 '#0B2545' -C2 '#1B4B8C' -F 'Archivo, sans-serif'

# ---------- PROPOSTA 02 · INTELIGÊNCIA E PRECISÃO ----------
$ticks01 = "<g stroke='#16181D' stroke-width='4'><line x1='60' y1='26' x2='60' y2='33'/><line x1='94' y1='60' x2='87' y2='60'/><line x1='60' y1='94' x2='60' y2='87'/><line x1='26' y1='60' x2='33' y2='60'/></g>"
$p02C = "<g transform='rotate(45 60 60)'><rect x='44' y='12' width='8' height='96' rx='2' fill='#16181D'/><rect x='12' y='44' width='96' height='8' rx='2' fill='#16181D'/><rect x='44' y='22' width='8' height='9' rx='1.5' fill='#0E7490'/><rect x='44' y='89' width='8' height='9' rx='1.5' fill='#0E7490'/><rect x='22' y='44' width='9' height='8' rx='1.5' fill='#0E7490'/><rect x='89' y='44' width='9' height='8' rx='1.5' fill='#0E7490'/></g><circle cx='60' cy='60' r='5' fill='#0E7490'/>"
$p02B = $p02C -replace '#16181D','#0D1520' -replace '#0E7490','#5BD0E8'
$p02W = $p02C -replace '#16181D','#FFFFFF' -replace '#0E7490','#5BD0E8'
New-Logos -Dir $root -Lab '02' -SymC $p02C -SymB $p02B -SymW $p02W -C1 '#16181D' -C2 '#0E7490' -F 'IBM Plex Mono, monospace'

# ---------- PROPOSTA 03 · FUTURISMO SOFISTICADO ----------
$p03C = "<path d='M14 20 C44 42 76 60 106 100' fill='none' stroke='#2A0A66' stroke-width='10' stroke-linecap='round'/><path d='M14 100 C44 80 76 62 106 20' fill='none' stroke='#3B1E8F' stroke-width='10' stroke-linecap='round'/><path d='M60 52 Q60 60 60 60 Q60 60 68 60' stroke='#FFFFFF' stroke-width='3' fill='none' stroke-linecap='round'/>"
$p03B = $p03C -replace '#2A0A66','#0D1520' -replace '#3B1E8F','#4B3A94' -replace '#FFFFFF','#B79CED'
$p03W = $p03C -replace '#2A0A66','#FFFFFF' -replace '#3B1E8F','#D9CFFF' -replace '#FFFFFF','#2A0A66'
New-Logos -Dir $root -Lab '03' -SymC $p03C -SymB $p03B -SymW $p03W -C1 '#2A0A66' -C2 '#3B1E8F' -F 'Space Grotesk, sans-serif'

# ---------- PROPOSTA 04 · SÍMBOLO PROPRIETÁRIO ----------
$p04C = "<rect x='10' y='10' width='100' height='100' rx='24' fill='#1A5CFF'/><g fill='none' stroke='#FFFFFF' stroke-width='11' stroke-linecap='round'><line x1='34' y1='34' x2='86' y2='86'/><line x1='86' y1='34' x2='34' y2='86'/></g><rect x='54' y='54' width='12' height='12' rx='3' fill='#FFFFFF'/>"
$p04B = $p04C -replace '#1A5CFF','#0A0F1E' -replace '#FFFFFF','#7FA3FF' -replace '#FFFFFF','#7FA3FF'
$p04W = $p04C -replace '#1A5CFF','#FFFFFF' -replace '#FFFFFF','#0A0F1E'
New-Logos -Dir $root -Lab '04' -SymC $p04C -SymB $p04B -SymW $p04W -C1 '#0A0F1E' -C2 '#1A5CFF' -F 'Archivo, sans-serif'

# ---------- PROPOSTA 05 · MINIMALISMO LUXUOSO ----------
$p05C = "<path d='M22 22 L98 98 M98 22 L22 98' stroke='#17140F' stroke-width='2.6'/><rect x='55' y='55' width='10' height='10' transform='rotate(45 60 60)' fill='#C2A25A'/>"
$p05B = $p05C -replace '#17140F','#0D1520' -replace '#C2A25A','#D8BC7A'
$p05W = $p05C -replace '#17140F','#FFFFFF' -replace '#C2A25A','#C2A25A'
New-Logos -Dir $root -Lab '05' -SymC $p05C -SymB $p05B -SymW $p05W -C1 '#17140F' -C2 '#9C7C2F' -F 'Fraunces, serif'

# ---------- PROPOSTA 06 · LIDERANÇA E EXPANSÃO GLOBAL ----------
$p06C = "<path d='M46 30 L60 44 M74 30 L60 44' stroke='#E8B23A' stroke-width='5' stroke-linecap='round' fill='none' transform='translate(0 0)'/><g stroke='#13294B' stroke-width='10' stroke-linecap='round'><line x1='34' y1='34' x2='86' y2='86'/><line x1='86' y1='34' x2='34' y2='86'/></g><g fill='#13294B'><path d='M52 18 L66 22 L62 36 L48 32 Z'/><path d='M102 52 L98 66 L84 62 L88 48 Z'/><path d='M68 102 L54 98 L58 84 L72 88 Z'/><path d='M18 68 L22 54 L36 58 L32 72 Z'/></g><circle cx='60' cy='60' r='6' fill='#E8B23A'/>"
$p06B = $p06C -replace '#13294B','#0D1520' -replace '#E8B23A','#C9A44A'
$p06W = $p06C -replace '#13294B','#FFFFFF' -replace '#E8B23A','#E8B23A'
New-Logos -Dir $root -Lab '06' -SymC $p06C -SymB $p06B -SymW $p06W -C1 '#13294B' -C2 '#E8B23A' -F 'Space Grotesk, sans-serif'

Write-Output 'SVGs OK'