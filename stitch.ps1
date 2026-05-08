$basePath = "c:\Users\KROKODIL\Desktop\stitch_rtv_tech_repair_service"

$baseHtml = Get-Content -Raw -Encoding UTF8 "$basePath\strona_g_wna_rtv_repair_pl_1\code.html"

# Extract header and navigation (everything before <main)
$headMatch = [regex]::Match($baseHtml, '(?si)(.*?<nav.*?</nav>)')
$headAndNav = $headMatch.Groups[1].Value

# Extract footer (everything after </main>)
$footerMatch = [regex]::Match($baseHtml, '(?si)</main>(.*)')
$footer = $footerMatch.Groups[1].Value

$combinedHtml = $headAndNav + "`n<main class=`"pt-24`">`n"

function Get-MainContent($folder, $id) {
    $html = Get-Content -Raw -Encoding UTF8 "$basePath\$folder\code.html"
    $match = [regex]::Match($html, '(?si)<main[^>]*>(.*?)</main>')
    if ($match.Success) {
        $content = $match.Groups[1].Value
        return "<div id=`"$id`" class=`"scroll-mt-32 pt-16`">`n" + $content + "`n</div>`n"
    }
    return ""
}

$combinedHtml += Get-MainContent "strona_g_wna_rtv_repair_pl_1" "start"
$combinedHtml += "<div class=`"w-full h-px bg-outline-variant/30 my-16`"></div>"
$combinedHtml += Get-MainContent "us_ugi_i_ceny_rtv_repair_pl" "uslugi"
$combinedHtml += "<div class=`"w-full h-px bg-outline-variant/30 my-16`"></div>"
$combinedHtml += Get-MainContent "ledzenie_statusu_rtv_repair_pl" "status"
$combinedHtml += "<div class=`"w-full h-px bg-outline-variant/30 my-16`"></div>"
$combinedHtml += Get-MainContent "o_serwisie_rtv_repair_pl" "o-nas"
$combinedHtml += "<div class=`"w-full h-px bg-outline-variant/30 my-16`"></div>"
$combinedHtml += Get-MainContent "kontakt_rtv_repair_pl" "kontakt"

$combinedHtml += "</main>`n" + $footer

# Include smooth scrolling in html tag
$combinedHtml = $combinedHtml -replace '<html class="dark" lang="pl">', '<html class="dark" lang="pl" style="scroll-behavior: smooth;">'

[System.IO.File]::WriteAllText("$basePath\index.html", $combinedHtml, [System.Text.Encoding]::UTF8)
Write-Output "Successfully stitched HTML files into index.html"
