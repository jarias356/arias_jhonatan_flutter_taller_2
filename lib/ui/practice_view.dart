import 'package:arias_jhonatan_taller_2_flutter/ui/widgets/drawwe_menu.dart';
import 'package:arias_jhonatan_taller_2_flutter/ui/widgets/expanded_button.dart';
import 'package:arias_jhonatan_taller_2_flutter/ui/widgets/option_button.dart';
import 'package:flutter/material.dart';

class PracticeView extends StatelessWidget {
  const PracticeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> itemsList = List<String>.generate(4, (i) => "Element #$i");

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Center(
              child: Text(
                  'Practice for test',
                  style: TextStyle(color: Colors.white)
              )
          ),
        ),
        drawer: const DrawerMenu(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExpandedButton(color: Colors.amber),
                      SizedBox(width: 16),
                      ExpandedButton(color: Colors.blue),
                      SizedBox(width: 16),
                      ExpandedButton(color: Colors.red)
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OptionButton(
                          icon: Icons.alarm,
                          buttonWidget: TextButton(
                              onPressed: () {},
                              child: const Text('Select alarm'))),
                      const SizedBox(width: 16),
                      OptionButton(
                          icon: Icons.key,
                          buttonWidget: FilledButton(
                              onPressed: () {},
                              child: const Text('Select key'))),
                      const SizedBox(width: 16),
                      OptionButton(
                          icon: Icons.add_a_photo_outlined,
                          buttonWidget: OutlinedButton(
                              onPressed: () {},
                              child: const Text('Select camera'))),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: itemsList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(itemsList[index]),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                      "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."),
                  const SizedBox(height: 16),
                  const Text(
                      "END OF APPLICATION", style: TextStyle(fontSize: 24)),
                  const SizedBox(height: 16)
                ],
              ),
            ),
          ],
        ));
  }
}
