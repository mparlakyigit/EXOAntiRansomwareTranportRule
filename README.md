# Exchange Online Anti Ransomware Tranport Rule
Dışarıdan gönderilen e-postalar üzerinden gelebilecek ransomware ataklar engllenir.  (Sadece belirtilen uzantılarda bir e-posta geldiğinde mail  karantinaya alınır ve son kullanıcıya bildirim gider. IT departmanı e-postayı analiz ettikten sonra ilgili kullanıcıyı eposta iletebilir.

![Ransomware1](https://user-images.githubusercontent.com/53214224/161774054-77ca36f3-8748-4254-a8e9-e54b3a6732ca.png)

- PowerShell betiğini çalıştırabilmek için öncelikle PowerShell uygulamanızı yönetici olarak çalıştırınız.
- cd EXOAntiRansomwareTranportRule.ps1 dosyasının bulunduğu dizine geçiniz.
- ./EXOAntiRansomwareTranportRule.ps1 şeklinde betiği çalıştırınız.
- Sizden istenilen Office 365 Global admin yetkisi olan bir kullanıcı adı ve parolasını giriniz. (İlgili kullanıcının Exchange Administrator yetkisi olduğundan emin olunuz.)

![Ransomware2](https://user-images.githubusercontent.com/53214224/161774903-805bc720-c063-4e93-9b48-dd6bc804f373.png)


![Ransomware3](https://user-images.githubusercontent.com/53214224/161775194-04c5f6cd-43ba-448b-827e-1c60500a8976.png)
