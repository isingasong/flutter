import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    return DataRow.byIndex(index: index, cells: <DataCell>[
      DataCell(Text(post.title)),
      DataCell(Text(post.author)),
      DataCell(Image.network(post.imageUrl)),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _posts.length;

  @override
  int get selectedRowCount => _selectedCount;

  void _sort(getFiled(post),bool ascending) {
    _posts.sort((a,b) {
      if(!ascending) {
        final c = a;
        a = b;
        b = c;
      }

      final aValue = getFiled(a);
      final bValue = getFiled(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableState createState() => _PaginatedDataTableState();
}

class _PaginatedDataTableState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;
  final PostDataSource _postDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text('Posts'),
              source: _postDataSource,
              sortAscending: _sortAscending,
              sortColumnIndex: _sortColumnIndex,
              columns: [
                DataColumn(
                    label: Text('Title'),
                    onSort: (int index, bool ascending) {
                      _postDataSource._sort((post) => post.title.length,ascending);
                      setState(() {
                        _sortAscending = ascending;
                        _sortColumnIndex = index;
                      });

                    }),
                DataColumn(label: Text('Author')),
                DataColumn(label: Text('Avatar')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
