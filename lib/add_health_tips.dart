import 'package:flutter/material.dart';

class AddHealthTipsScreen extends StatefulWidget {
  const AddHealthTipsScreen({super.key});

  @override
  State<AddHealthTipsScreen> createState() => _AddHealthTipsScreenState();
}

class _AddHealthTipsScreenState extends State<AddHealthTipsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _healthTipController = TextEditingController();
  String _selectedCategory = 'Health';

  final List<String> _categories = ['Health', 'Fitness', 'Nutrition', 'Mental Health', 'Wellness'];

  @override
  void dispose() {
    _healthTipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Add Health Tips',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Select Category:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _selectedCategory,
                      isExpanded: true,
                      icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                      dropdownColor: const Color(0xFF1E1E1E),
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      items: _categories.map((String category) {
                        return DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _selectedCategory = newValue;
                          });
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Health Tips:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _healthTipController,
                  maxLines: 12,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Health tip is required.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Write a health tip',
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 17,
                    ),
                    alignLabelWithHint: true,
                  ),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        FocusScope.of(context).unfocus();
                        
                        await Future.delayed(const Duration(milliseconds: 200));
                        
                        if (_formKey.currentState!.validate()) {
                          if (!mounted) return;
                          if (!context.mounted) return;
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Health tip saved successfully!'),
                              backgroundColor: Colors.green,
                            ),
                          );
                          
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}