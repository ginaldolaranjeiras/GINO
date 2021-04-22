import 'package:flutter/material.dart';
import 'package:gino/models/skill.dart';

class SkillsExpandedPainel extends StatefulWidget {
  @override
  _SkillsExpandedPainelState createState() => _SkillsExpandedPainelState();
}

class _SkillsExpandedPainelState extends State<SkillsExpandedPainel> {
  List<Skill> _data = [
    Skill(
      headerValue: "Agile",
      expandedValue: "Compentências em metodologias ágeis",
    ),
    Skill(
      headerValue: "Data",
      expandedValue: "Competências em análises de dados",
    ),
    Skill(
      headerValue: "Development",
      expandedValue: "Competências em desenvolvimento de software",
    ),
    Skill(
      headerValue: "Test",
      expandedValue: "Competências em Testes de Software",
    ),
    Skill(
      headerValue: "UX Design",
      expandedValue: "Competências em UX Design",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(250, 50, 250, 50),
        child: ExpansionPanelList(
          dividerColor: Colors.white,
          elevation: 0,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _data[index].isExpanded = !isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((Skill skill) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  contentPadding: EdgeInsets.all(25),
                  autofocus: false,
                  title: Text(
                    skill.headerValue,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                );
              },
              body: ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 0, 50),
                  child: Text(
                    skill.expandedValue,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              isExpanded: skill.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}
