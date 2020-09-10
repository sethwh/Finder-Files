$oldCSV = "c:\Test\OLD.csv"
$newCSV = "c:\Test\New.csv" 

Import-Csv -Delimiter "|" -Path $oldCSV -Header "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21" | ForEach-Object { 
    "{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}|{15}|{16}|{17}|{18}|{19}|{20}|" -f
    ($_.1).Substring(0,[Math]::Min(10,($_.1).Length)).Trim(),
    ($_.2).Substring(0,[Math]::Min(30,($_.2).Length)).Trim(),
    ($_.3).Substring(0,[Math]::Min(16,($_.3).Length)).Trim(),
    ($_.4).Substring(0,[Math]::Min(2,($_.4).Length)).Trim(),
    ($_.5).Substring(0,[Math]::Min(16,($_.5).Length)).Trim(),
    ($_.6).Substring(0,[Math]::Min(8,($_.6).Length)).Trim(),
    ($_.7).Substring(0,[Math]::Min(30,($_.7).Length)).Trim(),
    ($_.8).Substring(0,[Math]::Min(30,($_.8).Length)).Trim(),
    ($_.9).Substring(0,[Math]::Min(30,($_.9).Length)).Trim(),
    ($_.10).Substring(0,[Math]::Min(30,($_.10).Length)).Trim(),
    ($_.11).Substring(0,[Math]::Min(2,($_.11).Length)).Trim(),
    ($_.12).Substring(0,[Math]::Min(10,($_.12).Length)).Trim(),
    ($_.13).Substring(0,[Math]::Min(14,($_.13).Length)).Trim(),
    ($_.14).Substring(0,[Math]::Min(14,($_.14).Length)).Trim(),
    ($_.15).Substring(0,[Math]::Min(4,($_.15).Length)).Trim(),
    ($_.16).Substring(0,[Math]::Min(8,($_.16).Length)).Trim(),
    ($_.17).Substring(0,[Math]::Min(16,($_.17).Length)).Trim(),
    ($_.18).Substring(0,[Math]::Min(2,($_.18).Length)).Trim(),
    ($_.19).Substring(0,[Math]::Min(2,($_.19).Length)).Trim(),
    ($_.20).Substring(0,[Math]::Min(4,($_.20).Length)).Trim(),
    ($_.21).Substring(0,[Math]::Min(0,($_.21).Length)) >> $newCSV 
}