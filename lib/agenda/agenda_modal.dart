import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class AgendaItem {
  String agendaTitle;
  String date;
  String startTime;
  String endTime;
  String location;
  String place;
  String rating;
  AgendaStatus status;
  AgendaItem(
      {@required this.agendaTitle,
      @required this.date,
      @required this.endTime,
      @required this.location,
      @required this.place,
      @required this.startTime,
      @required this.rating,
      @required this.status});
}

class AgendaStatus {
  String statusName;
  TextStyle style;
  AgendaEnum status;
  AgendaStatus({
    @required this.status,
  }) {
    switch (this.status) {
      case AgendaEnum.BOOKED:
        this.statusName = 'Booked';
        this.style = AtivitiTypography.h6LabelGreen;
        break;
      case AgendaEnum.CANCLED:
        this.statusName = 'Cancelled';
        this.style = AtivitiTypography.h6LabelRed;
        break;
      case AgendaEnum.DECLINED:
        this.statusName = 'Declined';
        this.style = AtivitiTypography.h6LabelBlue;
        break;
      case AgendaEnum.WAIT_LIST:
        this.statusName = 'Wait List';
        this.style = AtivitiTypography.h6LabelYellow;
        break;
    }
  }
}

enum AgendaEnum {
  BOOKED,
  WAIT_LIST,
  DECLINED,
  CANCLED,
}
//  TODO: provider changed time/date of the session
final List<AgendaItem> agendas = <AgendaItem>[
  AgendaItem(
    agendaTitle: 'Cardio Sculpt',
    date: "June 21",
    startTime: '12:00',
    endTime: "12:45",
    location: "1003, Lausanne",
    place: 'Fit center',
    rating: '4,8',
    status: AgendaStatus(status: AgendaEnum.BOOKED),
  ),
  AgendaItem(
    agendaTitle: 'Cardio Sculpt',
    date: "June 21",
    startTime: '12:00',
    endTime: "12:45",
    location: "1003, Lausanne",
    place: 'Fit center',
    rating: '4,8',
    status: AgendaStatus(status: AgendaEnum.WAIT_LIST),
  ),
  AgendaItem(
    agendaTitle: 'Cardio Sculpt',
    date: "June 21",
    startTime: '12:00',
    endTime: "12:45",
    location: "1003, Lausanne",
    place: 'Fit center',
    rating: '4,8',
    status: AgendaStatus(status: AgendaEnum.DECLINED),
  ),
  AgendaItem(
    agendaTitle: 'Cardio Sculpt',
    date: "June 21",
    startTime: '12:00',
    endTime: "12:45",
    location: "1003, Lausanne",
    place: 'Fit center',
    rating: '4,8',
    status: AgendaStatus(status: AgendaEnum.CANCLED),
  ),
];
