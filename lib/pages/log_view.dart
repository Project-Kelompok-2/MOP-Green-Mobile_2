// ignore_for_file: camel_case_types

part of 'pages.dart';

class logView extends StatefulWidget {
  const logView({Key? key}) : super(key: key);

  // final String? restorationId;

  @override
  State<logView> createState() => _logViewState();
}

class _logViewState extends State<logView> {
  final _formKey = GlobalKey<FormBuilderState>();
  void _onChanged(dynamic val) => debugPrint(val.toString());
//   @override
//   String? get restorationId => widget.restorationId;

  // final RestorableDateTimeN _startDate = RestorableDateTimeN(DateTime.now());
  // final RestorableDateTimeN _endDate = RestorableDateTimeN(DateTime.now());
  // late final RestorableRouteFuture<DateTimeRange?> _rangePicker =
  //     RestorableRouteFuture<DateTimeRange?>(
  //   onComplete: _selectDateRange,
  //   onPresent: (NavigatorState navigator, Object? arguments) {
  //     return navigator
  //         .restorablePush(_dateRangePickerRoute, arguments: <String, dynamic>{
  //       'intialStartDate': _startDate.value?.millisecondsSinceEpoch,
  //       'IntialEndDate': _endDate.value?.millisecondsSinceEpoch,
  //     });
  //   },
  // );

  // void _selectDateRange(DateTimeRange? newSelectedDate) {
  //   if (newSelectedDate != null) {
  //     setState(() {
  //       _startDate.value = newSelectedDate.start;
  //       _endDate.value = newSelectedDate.end;
  //     });
  //   }
  // }

  // @override
  // void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
  //   registerForRestoration(_startDate, 'start_date');
  //   registerForRestoration(_endDate, 'end_date');
  //   registerForRestoration(_rangePicker, 'date_picker_route_future');
  // }

  // static Route<DateTimeRange?> _dateRangePickerRoute(
  //   BuildContext context,
  //   Object? arguments,
  // ) {
  //   return DialogRoute<DateTimeRange?>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return DateRangePickerDialog(
  //         restorationId: 'date_picker_dialog',
  //         initialDateRange:
  //             _initialDateTimeRange(arguments! as Map<dynamic, dynamic>),
  //         firstDate: DateTime(2000),
  //         lastDate: DateTime(2023),
  //       );
  //     },
  //   );
  // }

  // static DateTimeRange? _initialDateTimeRange(Map<dynamic, dynamic> arguments) {
  //   if (arguments['intialStartDate'] != null &&
  //       arguments['intialEndDate'] != null) {
  //     return DateTimeRange(
  //       start: DateTime.fromMillisecondsSinceEpoch(
  //           arguments['initialStartDate'] as int),
  //       end: DateTime.fromMillisecondsSinceEpoch(
  //           arguments['initialEndDate'] as int),
  //     );
  //   }
  //   return null;
  // }

  List<String> data = [
    "kemarin",
    "3 hari lalu",
    "1 minggu lalu",
    "1 bulan lalu",
  ];

  // int index = 0;
  // List dataa = [
  //   const logroom1(),
  //   const logroom2(),
  //   const logroom3(),
  //   const logroom4(),
  // ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F2F4),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 224,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Date Picker',
                      style: selamatdatangTextStyle.copyWith(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: DropdownSearch<String>(
                        popupProps: const PopupProps.menu(
                          showSelectedItems: true,
                          fit: FlexFit.loose,
                        ),
                        items: data,
                        dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            labelText: "Pilih Data",
                          ),
                        ),
                        onChanged: print,
                        clearButtonProps:
                            const ClearButtonProps(isVisible: true),
                      ),
                    ),
                    const SizedBox(height: 10),
                    FormBuilder(
                      key: _formKey,
                      onChanged: () {
                        _formKey.currentState!.save();
                        debugPrint(_formKey.currentState!.value.toString());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: FormBuilderDateRangePicker(
                          name: 'date_range',
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2023),
                          format: DateFormat('yyyy-MM-dd'),
                          onChanged: _onChanged,
                          decoration: InputDecoration(
                            labelText: 'Pilih Tanggal',
                            // helperText: 'Helper text',
                            hintText: 'Hint text',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                _formKey.currentState!.fields['date_range']
                                    ?.didChange(null);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    // child: TextFormField(
                    //   cursorColor: Colors.white,
                    //   readOnly: true,
                    //   onTap: () {
                    //     setState(() {
                    //       _rangePicker.present();
                    //     });
                    //   },
                    //   decoration: InputDecoration(
                    //     icon: const Icon(Icons.calendar_today_rounded),
                    //     labelText: 'From - To',
                    //     hintText: ("${_startDate.value}-${_endDate.value}"),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            //!Scrollview
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 5,
                      ),
                      logroom1()
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 90),
                      //   child: Card(
                      //     child: DropdownSearch<dynamic>(
                      //       popupProps: const PopupProps.menu(
                      //         fit: FlexFit.loose,
                      //       ),
                      //       items: const [
                      //         "logroom1",
                      //         "logroom2",
                      //         "logroom3",
                      //         "logroom4"
                      //       ],
                      //       dropdownDecoratorProps: const DropDownDecoratorProps(
                      //         dropdownSearchDecoration: InputDecoration(
                      //           contentPadding: EdgeInsets.all(10),
                      //           labelText: "Pilih Room",
                      //         ),
                      //       ),
                      //       onChanged: (i) {
                      //         setState(() {
                      //           switch (i) {
                      //             case "logroom1":
                      //               index = 0;
                      //               break;
                      //             case "logroom2":
                      //               index = 1;
                      //               break;
                      //             case "logroom3":
                      //               index = 2;
                      //               break;
                      //             case "logroom4":
                      //               index = 3;
                      //               break;
                      //             default:
                      //               index = 0;
                      //               break;
                      //           }
                      //         });
                      //       },
                      //       selectedItem: dataa[index],
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // dataa[index],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Warning'),
            content: const Text('Apakah Anda Yakin Ingin Keluar ?'),
            // controller: controller,

            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Tidak',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(
                    "Iya",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ),
        ) ??
        false; //if showDialouge had returned null, then return false
  }
}
