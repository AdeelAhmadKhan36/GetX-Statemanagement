import 'package:flutter/material.dart';
import 'package:getx_statemanagement/data/response/status.dart';

class Api_Response<T>{

  //Using enum Status Class
  Status? status;
  T? data;
  String? message;

  Api_Response(this.status,this.data,this.message);


  Api_Response.loading() :status= Status.LOADING;
  Api_Response.completed(this.data) :status= Status.COMPLETED;
  Api_Response.error(this.message) :status= Status.ERROR;


  String toString(){

    return "Status: $status \n Message: $message \n Data:$data";
  }



}