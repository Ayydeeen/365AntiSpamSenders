Connect-exchangeonline

Sleep 10

foreach ($i in (get-content "C:\temp\BlockedSendersCSV.csv")) {
    echo "Adding $i"
    Set-HostedContentFilterPolicy -Identity "PolicyName" -BlockedSenders @{Add="$i";}
}
foreach ($i in (get-content "C:\temp\BlockedDomainsCSV.csv")) {
    echo "Adding $i"
    Set-HostedContentFilterPolicy -Identity "PolicyName" -BlockedSenderDomains @{Add="$i";}
}
foreach ($i in (get-content "C:\temp\ExemptSendersCSV.csv")) {
    echo "Adding $i"
    Set-HostedContentFilterPolicy -Identity "PolicyName" -AllowedSenders @{Add="$i";}
}
foreach ($i in (get-content "C:\temp\ExemptDomainsCSV.csv")) {
    echo "Adding $i"
    Set-HostedContentFilterPolicy -Identity "PolicyName)" -AllowedSenderDomains @{Add="$i";}
}
