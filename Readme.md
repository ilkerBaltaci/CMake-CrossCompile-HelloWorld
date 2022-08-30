# CMake-CrossCompile-HelloWorld

Bu projede basit bir Hello World! executable uygulamasını bir linux makinede windows x86, windows x64, linux aarch64, linux x86_64 platformları için derlendi. Belirlenen işletim sistemlerinde oluşturulan çalıştırabilir dosyalar çalıştırıldı.

c ve c++ standart kütüphaneleri projenin içine static olarak eklendi. Static eklenmeyince windows makinelerde libstdc++6 bulunamadı hatası alınıyordu. Bu hata giderilmiş oldu.

Her bir platforma özel derleme işlemi için ayrı script yazıldı. Ancak build_all.sh scriptini çalıştırdığınızda gerekli kütüphaneler linux bilgisayarınıza yüklenir ve tüm platformlar için derleme işlemi gerçekleştirilir.