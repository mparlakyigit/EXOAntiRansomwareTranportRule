<#
.HAKKIMDA
	Mehmet PARLAKY���T | Office Apps & Services MVP
	https://www.parlakyigit.net/
	Twitter:@mparlakyigit 
#>

Set-ExecutionPolicy Unrestricted
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline

<#
.NOTE
Bu B�l�mde d��ar�dan g�nderilen e-postalar �zerinden gelebilecek ransomware ataklar engllenir.  (Sadece belirtilen uzant�larda bir e-posta geldi�inde mail 
karantinaya al�n�r ve son kullan�c�ya bildirim gider. IT departman� e-postay� analiz ettikten sonra ilgili kullan�c�ya eposta iletebilir.
#>

$RansomwareNot = '<table border=0 cellspacing=0 cellpadding=0 align="left" width="100%">
  <tr>
    <td style="background:#00A0d2;padding:5pt 2pt 5pt 2pt"></td>
    <td width="100%" cellpadding="7px 6px 7px 15px" style="background:#e5f5fa;padding:5pt 4pt 5pt 12pt;word-wrap:break-word">
      <div style="color:#222222;">
        <span style="color:#222; font-weight:bold;">Dikkat:</span>
       <b>%%From%%</b> Adl� ki�iden tarf�n�za <b>%%Subject%%</b> Konu Ba�l�kl� bir E-Posta g�nderilmi�tir. A�a��da belirtilen uzant�lar i�erdi�i i�in zararl� olabilece�inden �t�r� e-posta karantinaya ta��nm��t�r. Do�rulu�undan eminseniz IT Departman�yla ileti�ime ge�ebilirsiniz.   dotm, docm, xlsm, sltm, xla, xlam, xll, pptm, potm, ppam, ppsm, sldm uzant�l� dosyalar� a�mak verilerinize zarar verebilir.
      </div>
    </td>
  </tr>
</table>
<br/>'

New-TransportRule -Name "Anti-Ransomware-Rule" -AttachmentExtensionMatchesWords "dotm","docm","xlsm","sltm","xla","xlam","xll","pptm","potm","ppam","ppsm","sldm" -GenerateNotification $RansomwareNot -Quarantine $true
