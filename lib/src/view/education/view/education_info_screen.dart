import 'package:flutter/material.dart';

class EducationInfoScreen extends StatefulWidget {
  const EducationInfoScreen({Key? key}) : super(key: key);

  @override
  _EducationInfoScreenState createState() => _EducationInfoScreenState();
}

class _EducationInfoScreenState extends State<EducationInfoScreen> {
  TextEditingController schoolNameController = TextEditingController();
  TextEditingController degreeNameController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  List<EducationItem> educationItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education Info"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: educationItems.length,
              itemBuilder: (context, index) {
                final item = educationItems[index];
                return ListTile(
                  title: Text(item.degreeName),
                  subtitle: Text(item.schoolName),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          _editEducationItem(item);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _deleteEducationItem(index);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                _showAddEducationDialog(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.transparent,
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Add Education',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAddEducationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Education"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTextFieldWithIcon(
                  controller: schoolNameController,
                  labelText: "School Name",
                  icon: Icons.school,
                ),
                SizedBox(height: 10),
                _buildTextFieldWithIcon(
                  controller: degreeNameController,
                  labelText: "Degree Name",
                  icon: Icons.school_outlined,
                ),
                SizedBox(height: 10),
                _buildTextFieldWithIcon(
                  controller: startDateController,
                  labelText: "Start Date",
                  icon: Icons.calendar_today,
                ),
                SizedBox(height: 10),
                _buildTextFieldWithIcon(
                  controller: endDateController,
                  labelText: "End Date",
                  icon: Icons.calendar_today,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                _saveEducationItem();
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _saveEducationItem() {
    final degreeName = degreeNameController.text;
    final schoolName = schoolNameController.text;
    final startDate = startDateController.text;
    final endDate = endDateController.text;

    final newEducationItem =
    EducationItem(degreeName: degreeName, schoolName: schoolName);

    setState(() {
      educationItems.add(newEducationItem);
    });

    degreeNameController.clear();
    schoolNameController.clear();
    startDateController.clear();
    endDateController.clear();
  }

  void _editEducationItem(EducationItem item) {
    // Handle editing of education item
  }

  void _deleteEducationItem(int index) {
    setState(() {
      educationItems.removeAt(index);
    });
  }

  Widget _buildTextFieldWithIcon({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(),
      ),
    );
  }
}

class EducationItem {
  final String degreeName;
  final String schoolName;

  EducationItem({
    required this.degreeName,
    required this.schoolName,
  });
}
