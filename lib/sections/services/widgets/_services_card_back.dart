part of '../services.dart';

class _ServiceCardBackWidget extends StatelessWidget {
  const _ServiceCardBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: AppText.l1,
        ),
        Divider(
          color: appProvider.isDark ? Colors.white : Colors.black38,
        ),
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(60),
          child: MaterialButton(
            color: AppTheme.c!.primary,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => AlertDialog(
                      title: Text(
                        "Hire Me!",
                        style: AppText.b2b,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Back"),
                        )
                      ],
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            height: 40.0,
                            onPressed: () => openURL(
                              'https://api.whatsapp.com/send?phone=923460159889',
                            ),
                            color: const Color(0xff34CB62),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  FontAwesomeIcons.whatsapp,
                                  color: Colors.white,
                                ),
                                Space.x!,
                                Text(
                                  'WhatsApp',
                                  style: AppText.l1!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Space.y1!,
                          MaterialButton(
                            height: 40.0,
                            onPressed: () => openURL(
                              'https://www.upwork.com/freelancers/~0197b0f6aaeba9675f',
                            ),
                            color: const Color(0xff13A800),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.network(
                                  'https://img.icons8.com/ios-filled/50/000000/upwork.png',
                                  height: 35.0,
                                  color: Colors.white,
                                ),
                                Space.x!,
                                Text(
                                  'Upwork',
                                  style: AppText.l1!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
            child: Text(
              'HIRE ME!',
              style: AppText.b2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
