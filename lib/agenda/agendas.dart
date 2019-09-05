import 'package:ativiti/agenda/agenda_modal.dart';
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
    return ListView.builder(
      itemCount: agendas.length,
      itemBuilder: (BuildContext context, int i) {
        return Container(
          padding: EdgeInsets.only(
            top: 23,
            left: 16,
            bottom: 15,
            right: 14,
          ),
          height: 196,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          agendas[i].date,
                          style: AtivitiTypography.h6LabelBlack,
                        ),
                        Text(
                          agendas[i].startTime,
                          style: TextStyle(fontFamily: 'IBMPlexSans'),
                        ),
                        Text(
                          agendas[i].endTime,
                          style: AtivitiTypography.h4TitleMenuBlack,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(agendas[i].agendaTitle),
                        Text(agendas[i].place),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 9.8,
                            ),
                            Text(agendas[i].location),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.star),
                            SizedBox(
                              width: 9.8,
                            ),
                            Text(agendas[i].rating),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.filter_vintage),
                        Row(
                          children: <Widget>[
                            if (agendas[i].status.status ==
                                AgendaEnum.BOOKED) ...[
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 4.5,
                              ),
                            ],
                            Text(agendas[i].status.statusName)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
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
