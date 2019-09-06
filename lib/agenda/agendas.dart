import 'package:ativiti/agenda/agenda_modal.dart';
import 'package:ativiti/components/button-components/buttonComponent.dart';
import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class AgendasPage extends StatefulWidget {
  @override
  _AgendasPageState createState() => _AgendasPageState();
}

class _AgendasPageState extends State<AgendasPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.red,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: _AgendaList.agendaHeaders.map((header) {
                return Container(
                  height: 67,
                  padding: EdgeInsets.only(top: 30, bottom: 17),
                  child: Tab(
                    child: Text(header.headerText),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                _UpcomingAgendasSection(),
                _PreviousAgendasSection()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PreviousAgendasSection extends StatelessWidget {
  const _PreviousAgendasSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: agendas.length,
      itemBuilder: (BuildContext context, int i) {
        return Container(
          child: Text(
            agendas[i].agendaTitle,
            style: TextStyle(color: Colors.black),
          ),
        );
      },
    );
  }
}

class _UpcomingAgendasSection extends StatelessWidget {
  _UpcomingAgendasSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: agendas.length,
      itemBuilder: (BuildContext context, int i) {
        return new _AgendaCard(
          agendaItem: agendas[i],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 1,
          color: Color(0xff979797).withOpacity(.2),
        );
      },
    );
  }
}

class _AgendaCard extends StatelessWidget {
  final AgendaItem agendaItem;
  _AgendaCard({Key key, @required this.agendaItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 23,
        left: 16,
        bottom: 15,
        right: 14,
      ),
      // height: 196,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 10,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            agendaItem.date,
                            style: AtivitiTypography.h6LabelBlack,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            agendaItem.startTime,
                            style: AtivitiTypography.h4TitleMenuBlack,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            agendaItem.endTime,
                            style: AtivitiTypography.h4TitleMenuBlack,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            agendaItem.agendaTitle,
                            style: AtivitiTypography.h4TitleMenuBlack,
                          ),
                          Text(
                            agendaItem.place,
                            style: AtivitiTypography.h5TitleGrey,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                AtivitiIcons.location1,
                                size: 13,
                              ),
                              SizedBox(
                                width: 9.8,
                              ),
                              Text(
                                agendaItem.location,
                                style: AtivitiTypography.h6LabelBlack,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                AtivitiIcons.star,
                                size: 13,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 9.8,
                              ),
                              Text(
                                agendaItem.rating,
                                style: AtivitiTypography.h6LabelBlack,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        if (agendaItem.status.status == AgendaEnum.WAIT_LIST ||
                            agendaItem.status.status == AgendaEnum.BOOKED) ...[
                          ButtonComponent.secondaryOutlineButton(
                              child: Text('Cancel'), onPressed: () {}),
                          SizedBox(
                            width: 15,
                          ),
                          ButtonComponent.primaryButton(
                              child: Text('Details',
                                  style: AtivitiTypography.h5TitleBoldWhite),
                              onPressed: () {}),
                        ],
                        if (agendaItem.status.status == AgendaEnum.DECLINED)
                          Container(
                            width: MediaQuery.of(context).size.width - 190,
                            child: ButtonComponent.secondaryOutlineButton(
                                child: Text('Choose another activity'),
                                onPressed: () {}),
                          ),
                        if (agendaItem.status.status == AgendaEnum.CANCLED)
                          Container(
                            width: MediaQuery.of(context).size.width - 190,
                            child: ButtonComponent.secondaryOutlineButton(
                                child: Text("Cancel's reason"),
                                onPressed: () {}),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    AtivitiIcons.heart,
                    size: 13,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    if (agendaItem.status.status == AgendaEnum.BOOKED) ...[
                      Icon(
                        Icons.check,
                        color: agendaItem.status.style.color,
                      ),
                      SizedBox(
                        width: 4.5,
                      ),
                    ],
                    Text(
                      agendaItem.status.statusName,
                      style: agendaItem.status.style,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                if (agendaItem.status.status == AgendaEnum.BOOKED)
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xff28aa08),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      AtivitiIcons.getDirection,
                      color: AtivitiColors.white,
                      size: 18,
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AgendaTabHeader {
  final String headerText;
  _AgendaTabHeader({@required this.headerText}) : assert(headerText != null);
}

class _AgendaList {
  static List<_AgendaTabHeader> agendaHeaders = [
    _AgendaTabHeader(headerText: 'Upcoming'),
    _AgendaTabHeader(headerText: 'History')
  ];
}
