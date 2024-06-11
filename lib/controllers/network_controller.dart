import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mp_charpt/config/consts/colors.dart';

class NetworkController extends GetxController {
  var isConnected = true.obs; // Gunakan Rx untuk mengamati perubahan

  @override
  void onInit() {
    super.onInit();
    // Cek koneksi internet saat aplikasi dimulai
    checkInternet();
    // Lalu, mulai memantau koneksi internet secara berkala
    InternetConnectionChecker().onStatusChange.listen((status) {
      isConnected.value = status == InternetConnectionStatus.connected;
      if (!isConnected.value) {
        // Menampilkan snackbar jika koneksi terputus
        Get.snackbar(
          'Koneksi Terputus',
          'Silakan periksa kembali koneksi internet Anda.',
          backgroundColor: AppColor.red,
          colorText: AppColor.white,
          snackPosition: SnackPosition.TOP,
        );
      }
    });
  }

  void checkInternet() async {
    isConnected.value = await InternetConnectionChecker().hasConnection;
  }
}
