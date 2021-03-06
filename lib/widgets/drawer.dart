part of moralar_widgets;

class MoralarDrawer extends StatelessWidget {
  final Widget header;
  final List<MoralarDrawerListTile> options;
  final VoidCallback signOut;

  const MoralarDrawer({
    required this.header,
    this.options = const [],
    required this.signOut,
  });

  @override
  Widget build(BuildContext context) {
    return MoralarScaffold(
      backgroundColor: MoralarColors.strawberry,
      appBar: MoralarAppBar(
        backgroundColor: MoralarColors.strawberry,
        titleText: 'Menu',
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              header,
              const SizedBox(height: 16),
              const Divider(
                thickness: 1,
                color: Colors.white,
              ),
              Column(
                children: options,
              ),
              const SizedBox(height: 128),
              const Divider(
                thickness: 1,
                color: Colors.white,
              ),
              const SizedBox(height: 32),
              MoralarDrawerListTile(
                titleText: 'Sair',
                icon: FontAwesomeIcons.signOutAlt,
                onTap: signOut,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
