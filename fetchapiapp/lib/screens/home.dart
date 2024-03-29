import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AgentListScreen extends StatelessWidget {
  Future<List<dynamic>> fetchAgents() async {
    final response =
        await http.get(Uri.parse('https://valorant-api.com/v1/agents'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['data'];
      List<dynamic> agentsList = [];
      for (var agentData in data) {
        List<dynamic> abilities = [];
        for (var ability in agentData['abilities']) {
          abilities.add({
            'name': ability['displayName'] ?? '',
            'description': ability['description'] ?? '',
            'imageUrl': ability['displayIcon'] ?? '',
          });
        }
        agentsList.add({
          'name': agentData['displayName'] ?? '',
          'description': agentData['description'] ?? '',
          'imageUrl': agentData['displayIcon'] ?? '',
          'abilities': abilities,
        });
      }
      return agentsList;
    } else {
      throw Exception('Failed to load agents');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valorant Agents'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchAgents(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return AgentListView(agents: snapshot.data!);
          } else {
            return Center(
              child: Text('No data available'),
            );
          }
        },
      ),
    );
  }
}

class AgentListView extends StatefulWidget {
  final List<dynamic> agents;

  const AgentListView({required this.agents});

  @override
  _AgentListViewState createState() => _AgentListViewState();
}

class _AgentListViewState extends State<AgentListView> {
  late String _selectedAgentName;

  @override
  void initState() {
    super.initState();
    _selectedAgentName = '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DropdownButton<String>(
          hint: Text('Select Agent'),
          value: _selectedAgentName.isEmpty ? null : _selectedAgentName,
          onChanged: (String? newValue) {
            setState(() {
              _selectedAgentName = newValue!;
            });
          },
          items: List.generate(widget.agents.length, (index) {
            return DropdownMenuItem<String>(
              value: widget.agents[index]['name'],
              child: Text(widget.agents[index]['name']),
            );
          }),
        ),
        if (_selectedAgentName.isNotEmpty)
          Expanded(
            child: AgentDetails(
              agent: widget.agents
                  .firstWhere((agent) => agent['name'] == _selectedAgentName),
            ),
          ),
      ],
    );
  }
}

class AgentDetails extends StatelessWidget {
  final dynamic agent;

  const AgentDetails({required this.agent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      agent['imageUrl'],
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  agent['name'],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            agent['description'],
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Abilities:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: agent['abilities'].length,
              itemBuilder: (context, index) {
                final ability = agent['abilities'][index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          ability['imageUrl'],
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ability['name'],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                ability['description'],
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
