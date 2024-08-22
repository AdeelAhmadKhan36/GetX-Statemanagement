import 'package:flutter/material.dart';


class app_exception{
  final _message;
  final _prefix;
  app_exception([this._message,this._prefix]);

  String toString(){

    return "$_message,$_prefix";
  }

}
//Ineheritance
class internet_exception extends app_exception{
  internet_exception([String? message]):super(message,"No Internet");

}
class Request_Timeout extends app_exception{

  Request_Timeout([String? message]):super(message, "Request Timeout");
}

class ServerException extends app_exception{

  ServerException([String? message]):super(message,"Internet Server Error");
}