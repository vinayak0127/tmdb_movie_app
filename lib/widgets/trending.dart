import 'package:flutter/material.dart';
import 'package:movieapp/utils/text.dart';

class TreandingMovies extends StatelessWidget {


  final List trending;
  const TreandingMovies({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const modifed_text(text: "Trending Movies",size: 26,color: Colors.white),
          const SizedBox(height: 20),
          SizedBox(height: 270,
          child: ListView.builder(itemCount: trending.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
            return InkWell(
              onTap: (){

              },
              child: SizedBox(width: 140,
                child: Column(
                  children: [
                    Container(
                      height:200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500'+trending[index]['poster_path'],
                          )
                        )
                      ),
                    ),
                    const SizedBox(height: 10),
                    modifed_text(text: trending[index]['title'] ?? 'Loading'
                      ,color: Colors.white,size: 14,)
                  ],
                ),
              ),
            );
              }
              ),
          )
        ],
      ),
    );
  }
}
