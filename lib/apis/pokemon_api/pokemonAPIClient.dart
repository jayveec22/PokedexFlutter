library pokemon_api_spec;

import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import 'package:pokedex_app_flutter/apis/api_client.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/evolution_chain.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_description_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_details_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_evolution_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_evolution_node.dart';

part 'handler/pokemon_description_handler.dart';
part 'handler/pokemon_details_handler.dart';
part 'handler/pokemon_evolution_handler.dart';
