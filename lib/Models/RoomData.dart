import 'package:flutter/material.dart';

List<Map<String, dynamic>> roomData = [
  {
    'id' : 0,
    'name': 'Living Room',
    'selected': true,
    'width' : 400,
    'height': 200,
    'devices': [
      {
        'id': 0,
        'displayText': 'Lights',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lightbulb_outline,
      },
      {
        'id': 1,
        'displayText': 'TV',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.tv,
      },
      {
        'id': 2,
        'displayText': 'Door',
        'statusOff' : 'LOCKED',
        'statusOn' : 'OPENED',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.print,
      },
      {
        'id': 3,
        'displayText': 'Security',
        'statusOff' : 'LOCKED',
        'statusOn' : 'OPENED',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.network_locked,
      },
    ],
  },
  {
    'id' : 1,
    'name': 'Dinning Room',
    'selected': false,
    'width' : 400,
    'height': 200,
    'devices': [
      {
        'id': 0,
        'displayText': 'Lights',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lightbulb_outline,
      },
      {
        'id': 1,
        'displayText': 'TV',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.tv,
      },
      {
        'id': 2,
        'displayText': 'Door',
        'statusOff' : 'LOCKED',
        'statusOn' : 'OPENED',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lock,
      },
    ],
  },
  {
    'id' : 2,
    'name': 'Kitchen',
    'selected': false,
    'width' : 400,
    'height': 200,
    'devices': [
      {
        'id': 0,
        'displayText': 'Lights',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lightbulb_outline,
      },
      {
        'id': 1,
        'displayText': 'blank',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.print,
      },
      {
        'id': 2,
        'displayText': 'Door',
        'statusOff' : 'LOCKED',
        'statusOn' : 'OPENED',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lock,
      },
    ],
  },
  {
    'id' : 3,
    'name': 'Bathroom',
    'selected': false,
    'width' : 400,
    'height': 200,
    'devices': [
      {
        'id': 0,
        'displayText': 'Lights',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lightbulb_outline,
      },
      {
        'id': 1,
        'displayText': 'Music',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.music_video,
      },
      {
        'id': 2,
        'displayText': 'Door',
        'statusOff' : 'LOCKED',
        'statusOn' : 'OPENED',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lock,
      },
    ],
  },
  {
    'id' : 4,
    'name': 'Lounge',
    'selected': false,
    'width' : 400,
    'height': 200,
    'devices': [
      {
        'id': 0,
        'displayText': 'Lights',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lightbulb_outline,
      },
      {
        'id': 1,
        'displayText': 'Blank',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.print,
      },
      {
        'id': 2,
        'displayText': 'Door',
        'statusOff' : 'LOCKED',
        'statusOn' : 'OPENED',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lock,
      },
    ],
  },
  {
    'id' : 5,
    'name': 'TV Room',
    'selected': false,
    'width' : 400,
    'height': 200,
    'devices': [
      {
        'id': 0,
        'displayText': 'Lights',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lightbulb_outline,
      },
      {
        'id': 1,
        'displayText': 'TV',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.tv,
      },
      {
        'id': 2,
        'displayText': 'Door',
        'statusOff' : 'LOCKED',
        'statusOn' : 'OPENED',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lock_outline,
      },
    ],
  },
  {
    'id' : 6,
    'name': 'New Room',
    'selected': false,
    'width' : 400,
    'height': 200,
    'devices': [
      {
        'id': 0,
        'displayText': 'Lights',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lightbulb_outline,
      },
      {
        'id': 1,
        'displayText': 'Fan',
        'statusOff' : 'OFF',
        'statusOn' : 'ON',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.print,
      },
      {
        'id': 2,
        'displayText': 'Door',
        'statusOff' : 'LOCKED',
        'statusOn' : 'OPENED',
        'status' : false,
        'width' : 400,
        'height': 250,
        'icon' : Icons.lock,
      },
    ],
  },

];