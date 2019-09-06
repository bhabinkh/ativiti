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
        return new _AgendaCard(
          agendaItem: agendas[i],
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
                      agendaItem.date,
                      style: AtivitiTypography.h6LabelBlack,
                    ),
                    Text(
                      agendaItem.startTime,
                      style: AtivitiTypography.h4TitleMenuBlack,
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
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
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
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
                ),
                Expanded(
                  child: Container(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.filter_vintage),
                    Row(
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
                        )
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
