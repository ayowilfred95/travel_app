import "package:flutter/material.dart";
import "package:travel_app/main.dart";
import "package:travel_app/models/attraction_model.dart";
import "package:travel_app/pages/details_page.dart";

class AttractionListView extends StatelessWidget {
  const AttractionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      padding: const EdgeInsets.only(left: 10),
      scrollDirection: Axis.horizontal,
      itemCount: attractions.length,
      itemBuilder: (context, index) {
        AttractionModel currentAttraction = attractions[index];
        return AttractionCard(attractionModel: currentAttraction);
      },
    ));
  }
}

// ignore: must_be_immutable
class AttractionCard extends StatelessWidget {
  AttractionModel? attractionModel;

  AttractionCard({super.key, this.attractionModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> DetailsPage(selectedModel:attractionModel,) )
        );
      },
      child: Container(
        width: 180,
        margin: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(attractionModel!.imgPath!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.5)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter))),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(attractionModel!.name!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Text(attractionModel!.location!,
                          style: TextStyle(color: mainYellow))
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
