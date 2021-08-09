part of moralar_widgets;

class MoralarDrawer extends StatelessWidget {
  final MoralarDrawerHeader header;
  final List<MoralarDrawerListTile> options;

  const MoralarDrawer({
    required this.header,
    this.options = const [],
  });

  @override
  Widget build(BuildContext context) {
    return MoralarScaffold(
      backgroundColor: MoralarColors.strawberry,
      appBar: MoralarAppBar(
        backgroundColor: Colors.transparent,
        titleText: 'Menu',
        titleStyle: moralarTheme.textTheme.headline1!.copyWith(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  header,
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: options,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
