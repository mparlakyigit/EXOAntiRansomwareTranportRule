<#
.HAKKIMDA
	Mehmet PARLAKYÝÐÝT | Office Apps & Services MVP
	https://www.parlakyigit.net/
	Twitter:@mparlakyigit 
#>

Set-ExecutionPolicy Unrestricted
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline

<#
.NOTE
Bu Bölümde dýþarýdan gönderilen e-postalar üzerinden gelebilecek ransomware ataklar engllenir.  (Sadece belirtilen uzantýlarda bir e-posta geldiðinde mail 
karantinaya alýnýr ve son kullanýcýya bildirim gider. IT departmaný e-postayý analiz ettikten sonra ilgili kullanýcýya eposta iletebilir.
#>

$RansomwareNot = '<table border=0 cellspacing=0 cellpadding=0 align="left" width="100%">
  <tr>
    <td style="background:#00A0d2;padding:5pt 2pt 5pt 2pt"></td>
    <td width="100%" cellpadding="7px 6px 7px 15px" style="background:#e5f5fa;padding:5pt 4pt 5pt 12pt;word-wrap:break-word">
      <div style="color:#222222;">
        <span style="color:#222; font-weight:bold;">Dikkat:</span>
       <b>%%From%%</b> Adlý kiþiden tarfýnýza <b>%%Subject%%</b> Konu Baþlýklý bir E-Posta gönderilmiþtir. Aþaðýda belirtilen uzantýlar içerdiði için zararlý olabileceðinden ötürü e-posta karantinaya taþýnmýþtýr. Doðruluðundan eminseniz IT Departmanýyla iletiþime geçebilirsiniz.   dotm, docm, xlsm, sltm, xla, xlam, xll, pptm, potm, ppam, ppsm, sldm uzantýlý dosyalarý açmak verilerinize zarar verebilir.
      </div>
    </td>
  </tr>
</table>
<br/>'

New-TransportRule -Name "Anti-Ransomware-Rule" -AttachmentExtensionMatchesWords "dotm","docm","xlsm","sltm","xla","xlam","xll","pptm","potm","ppam","ppsm","sldm" -GenerateNotification $RansomwareNot -Quarantine $true
