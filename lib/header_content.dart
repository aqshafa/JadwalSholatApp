import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jadwal_sholat_app/model/ResponseJadwal.dart';
import 'package:jadwal_sholat_app/text_style.dart';

class HeaderContent extends StatelessWidget {
  ResponseJadwal responseJadwal;

  HeaderContent(this.responseJadwal);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20.0,
      bottom: 20.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            responseJadwal.results.location.city,
            style: styleCityHeader,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: 20.0,
              ),
              Text(
                responseJadwal.results.location.country,
                style: styleAddressHeader,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              )
            ],
          )
        ],
      ),
    );
  }
}
