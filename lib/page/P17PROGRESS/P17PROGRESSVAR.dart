class P17PROGRESSVAR {
  static Map<String, List<String>> dropdownItems = {
    'Option 1': ['Item 1-1', 'Item 1-2', 'Item 1-3'],
    'Option 2': ['Item 2-1', 'Item 2-2', 'Item 2-3'],
    'Option 3': ['Item 3-1', 'Item 3-2', 'Item 3-3'],
  };
  static List<String> getThirdDropdownItems(String secondDropdownValue) {
    if (secondDropdownValue == 'Item 1-1') {
      return ['Third 1-1', 'Third 1-2', 'Third 1-3'];
    } else if (secondDropdownValue == 'Item 1-2') {
      return ['Third 2-1', 'Third 2-2', 'Third 2-3'];
    } else if (secondDropdownValue == 'Item 1-3') {
      return ['Third 3-1', 'Third 3-2', 'Third 3-3'];
    } else {
      return ['Default-1', 'Default-2'];
    }
  }

  static String? FirstDropdown;
  static String? SecondDropdown;
  static String? ThirdDropdown;
}
