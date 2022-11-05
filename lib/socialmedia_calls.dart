import 'package:url_launcher/url_launcher.dart';

class SocialMediaLinks {
  Future launchURLTwitter() async {
    var url = Uri.parse("https://twitter.com/ABRAHAMTIMI2");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  Future launchURLGitHub() async {
    var url = Uri.parse("https://github.com/Olaore66");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  Future launchURLLinkedIn() async {
    var url =
        Uri.parse("https://www.linkedin.com/in/abraham-iborida-5a72a2129/");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  Future launchURLWhatsApp() async {
    var url = Uri.parse("tel:+234 80 6021 4037");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
