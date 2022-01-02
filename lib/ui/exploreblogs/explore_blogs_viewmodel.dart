import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/get_blogs_model.dart';
import 'package:tamely/models/params/liked_blog_body.dart';

import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

import 'explore_blog_search/blog_search_view.dart';

class ExploreBlogsViewModel extends BaseModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _tamelyApi = locator<TamelyApi>();
  List<blogDetails> listOfBlogs = [];
  bool isLiked = false;

  void onInit() {
    print("oninit");
    notifyListeners();
    getBlogsDetails();
  }

  Future getBlogsDetails() async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      BaseResponse<getBlogs> response = await _tamelyApi.GetBlogs();
      print(response);
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
        print("error found");
      } else if (response.data != null) {
        listOfBlogs.addAll(response.data!.blogs ?? []);
        print(listOfBlogs);
        print("xyzzz");
        notifyListeners();
      } else {
        _navigationService.back();
      }
    });
  }

//   static List<Map> _vidoes = [
//     {
//       'username': 'Sam Haris',
//       'content':
//           """The majority of pet cats, dogs, rabbits and ferrets in western world are neutered. Neutering is the best way to prevent unwanted pregnancies, in both cats and dogs. But some owners may be anxious about making this decision on behalf of their pets. They may be concerned about possible behaviour changes, weight gain, or other health issues in their pet.
//
// What is the difference between neutering, spaying and castrating?
// In general spaying refers to the removal of ovaries and uterus from a female animal, castration refers to the removal of testicles from a male animal and neutering can apply to either!
//
// What are the benefits of neutering your dog, cat or rabbit?
// A reduction in the incidence of mammary cancer in female cats and dogs
// A reduction in the incidence of prostate cancer, perineal hernias and perianal tumours in male dogs
// A near elimination of the risk of pyometra in female cats and dogs
// A reduction in the incidence of endometriosis in female rabbits
// Neutered pets live significantly longer than entire ones on average
// Reduced territory marking in male cats particularly
// Reduced aggression in male dogs and cats towards other males
// Reduced roaming behaviour in male cats and dogs
// Elimination of seasons in females with many practical and psychological benefits
//
// When is the best time to neuter your pet?
// It is recommend to discuss this with your vet in more detail because each individual case varies. Generally, dogs and cats can be neutered from as early as 16 weeks.
//
// There are many misconceptions about the procedures and the impacts they can have on pets. At Tamely, we are here to debunk these myths!
//
// Myth 1: It Causes Weight Gain.
// Many people claim that spaying and neutering will cause pets to gain weight after the procedure is done. However, that isn’t the case. Pets, like people, gain weight when they eat more than they should or when they don’t get enough exercise. Sometimes, weight gain can come as a result of some combination of those two factors. Spaying and neutering have little impact on the weight of your pet. It’s important to make sure your pet gets enough exercise and doesn’t eat excessively regardless of whether they’ve been spayed or neutered.
//
// Myth 2: Female Pets Should Have a Litter First.
// There’s a long-held belief that female pets benefit from having a litter of puppies or kittens before being spayed. Again, this myth is easily debunked, as there’s no demonstrable, documented advantage associated with allowing a female dog or cat to have a litter before spaying. Though pets may have personalities and are cherished by their caretakers, animals simply don’t experience parenthood in the same way that humans do. Therefore, it’s more humane to have your pet spayed to prevent contributing to the sizable population of homeless pets.
//
// Myth 3: Pets Shouldn’t be Spayed or Neutered at a Young Age.
// Another myth that can easily be debunked is the notion that pets must reach a specific age before they can be spayed or neutered. Female pets can be ready for their first litter at as little as four months old, and male pets can impregnate females at around six months old. There is no minimum age for spaying and neutering, though most vets simply aim to complete the procedures before the pet reaches sexual maturity.
//
// Myth 4: It’s Painful for Pets.
// Modern spaying and neutering are minimally invasive and cause little pain for pets. Pets are placed under anaesthesia during the procedure, and some vets provide pain medicine that’s dispensed for use at home after the surgery is completed. Most pets experience little more than mild discomfort throughout the recovery period and heal quickly.
//
// Though spaying and neutering are surrounded by long-held misconceptions in some circles, it’s easy to dismiss those myths with knowledge and facts.  Spaying and neutering are at the heart of humane, responsible pet ownership and offer the best way of keeping pet and stray populations in check.
//   """,
//       'title': 'Beginners Guide to Neutering and Spaying',
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716237/l277lrafyz0dloxdb5es.jpg",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716237/l277lrafyz0dloxdb5es.jpg",
//       'category': 'Critical',
//       'date': '4 Dec 2019'
//     },
//     {
//       'username': 'Sam Haris',
//       'content':
//           """Does your dog make you feel guilty and trick you into giving your leftovers? If yes, you are not alone. Millions of pet-parents face this dilemma every day during mealtimes. Whether you believe in giving a raw diet to your pet or simply giving them the commercial dog food from the supermarket, it is necessary for you to know which food your furry friends can eat from your plate or someone else’s. Prevention is better than cure! ALWAYS.
//
// Here are some of the foods which you can share with your dogs knowing the will be safe:
//
// Salmon- Salmon is a good source of protein. Due to the low-fat but high protein content of salmon, it is a very suitable protein source for dieting pooches. It is also a good substitute protein for dogs who may be allergic to other meats, such as chicken.
// Bread- Small amounts of plain bread (no spices and definitely no raisins) won’t hurt your dog, but it also won’t provide any health benefits either.
// Eggs- Eggs can be highly beneficial to your dog’s health as they are abundant in amino acids and are a good source of calcium.
// Chicken- Chicken is a source of lean protein which will provide your dog with ample amounts of energy and sustenance. Omega 6 Fatty Acids, like omega 3, will ensure that your pooch has a healthy coat.
// Turkey- Turkey is fine for dogs, but be sure to remove excess fat and skin from the meat. Don’t forget to check for bones; poultry bones can splinter during digestion, causing blockage or even tears in the intestines.
// Green beans- These veggies are perfect for dogs who are overweight and are in need of a healthy snack. They can be prepared in any way, but they must be served alone. Vitamin A, K, and C are all present in green beans
// Broccoli- Broccoli is high in fibre and vitamin C and low in fat. It is safe for dogs to eat, raw or cooked, as long as no seasonings are added.
// Yogurt- This dairy product is a perfect treat for dogs for all seasons. The frozen variety could keep the pooches cool in summer, while normal yogurt can keep them regular and healthy. This treat is packed with calcium, just like milk.
// Peanut butter- This is a good source of Niacin and Vitamin E.Peanut butter brands that are suitable for dogs are ones that have no sugar, no sodium, are low in fats and have absolutely no Xylitol. This replacement for sugar may not impact people much, but it is incredibly dangerous to dogs.
// Cottage cheese- Cheese makes a fantastic treat for your dog.
// Carrots- Chewing on the veggie will mechanically remove plaque from their teeth.  Carrots prevent runny stool. Eyesight is improved due to the beta-carotene in carrots.
// Oatmeal- It is a good source of carbohydrates.
// Peas- Green peas have a very high protein and carbohydrate content. Lutein is a carotenoid antioxidant found in green peas which prevents the damage of retinas and lens’ by free radicals.
// Rice- Rice is known to alleviate the symptoms of an upset stomach in dogs, but that is not its only use. Rice is actually one of the human foods which can be given to dogs on a daily basis. It is a good source of carbohydrates, and it is not encumbered by fats, cholesterol or sodium.
// Bananas- In moderation, bananas are a great low-calorie treat for dogs. They're high in potassium, vitamins, biotin, fibre, and copper.
// Cheese - especially hard cheeses like Gouda, Cheddar, and Swiss. Dogs can eat cheese in small to moderate quantities. As long as your dog isn’t lactose intolerant
// Pumpkin- Like salmon, pumpkin is a superfood. It boasts an ample number of vitamins, minerals, and fibre. These aid in the health of the urinary tract.
// Blueberries-These contains a lot of antioxidants. Phytochemicals present in blueberries helps in preventing cancer.
// Apples- Sliced apples are high in fibre, vitamin A and vitamin C, making them a fantastic treat for your pup.
//
// If you truly love your dog, you will never feed these foods to him or her as these toxic:
// -Chocolate
// -Coffee
// -Soft drinks
// -Avocados
// -Foods containing Xylitol
// -Chewing gum
// -Macadamia nuts
// -Grapes and raisins
// -Onions
// -Garlic
// -Yeast dough
//
// Now you know what to share and what to avoid. What is your dog’s favorite food? Share it with us in the comments.
// """,
//       'title': """Can my dog eat human food?
// A guide to feeding human foods to dog
//       """,
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716376/tpeguu5piaa5qdtkgq69.jpg",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716376/tpeguu5piaa5qdtkgq69.jpg",
//       'category': 'Critical',
//       'date': '23 April 2018'
//     },
//     {
//       'username': 'Sam Haris',
//       'content':
//           """Many pet owners fear leaving their cherished companion alone at home while they go to work or run errands. Some pets are upset about being left behind, and develop separation anxiety. However, one must be aware that separation anxiety cannot be fixed quickly, and your pet’s behavioural modification plan will necessitate a lot of patience and perseverance.
//
// Separation anxiety arises when a pet forms such a tight-knit attachment with their owner that they get distressed when they leave them. The pet becomes uncomfortable and nervous, and may destroy things in house, negatively impacting the pet-owner relationship. While some bad behaviours are caused by poor manners, the same behaviours—when paired with distress signals—can indicate separation anxiety.
//
// Signs of Separation Anxiety in Dogs
//
// -Barking, howling, whimpering
// -Excessive clinginess
// -Evidence of abnormal drooling when left alone
// -Chewing, digging, or destroying household items
// -Urination or defecation
// -Trying to escape
//
// Signs of Separation Anxiety in Cats
//
// Cats, despite their reputation for being more independent and self-sufficient than dogs, can experience anxiety when left alone at home. The following are signs that your cat is suffering from separation anxiety:
// -Excessive meowing, crying, or moaning
// -Eating too fast, or not eating at all
// -Excessive self-grooming
// -Elimination outside the litter box
// -Destructive behaviour
// -Excessive excitement when you return home
// -Vomiting food or hairballs
// -Trying to escape from your home
//
// Separation anxiety in cats can be difficult to notice because cats are known for hiding distress.
//
// How can I help my pet manage their separation anxiety?
//
// Separation anxiety is very treatable, the first thing that you should do is consult your veterinarian. In addition, follow the methods to help pets with separation anxiety:
// Make your departures and returns low-key.
//
// Give your pet a special treat or toy just before or at the point where they notice that you’re getting ready. This will help him to associate your leaving with something good. You may need to repeat the process a few times before you ultimately walk out the door, depending on how early in the process his anxiousness appears.
//
// Teach independence. Train them to lay in a specific spot, like on a mat, and stay there. Don't pay attention to them if they stand up and follow you.
//
// To help a pet with separation anxiety, you'll need patience. You might need to start by leaving them alone for small periods of time and work your way up to longer periods of time apart. You may even need to start with just a few minutes alone in a room where your pet feels safe.
//
// """,
//       'title': 'Home Alone - What to do about separation anxiety? ',
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716565/n49vctolmgqkgjzw6b1s.jpg",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716565/n49vctolmgqkgjzw6b1s.jpg",
//       'category': 'Critical',
//       'date': '13 Dec 2020'
//     },
//     {
//       'username': 'Sam Haris',
//       'content':
//           """House training a new cat is an important first step for first-time cat owners who want to live in harmony with them. When it comes to the best methods for house training new cats, owners should start with the basics. To begin with, cats are naturally clean animals. cats are instinctively clean animals. As such, they tend to go about their business in a regular spot, so as not to spoil their territory. This is important when factoring in training cats to use a litter box.
//
// LITTER TRAINING
// House training your cat includes teaching him or her how to use the litter box. This is likely the most important stage in house training a cat, yet it's also the one that gets misread the most. While there are certain universal facts about litter training, these are the most important dos and don'ts for novice cat owners.
//
// DO: START A SIMPLE LITTER TRAINING PROGRAMME AS SOON AS POSSIBLE
// The best way to litter train your cat is to keep it as simple as possible and start immediately. When first training them to use a litter box, confine your cat to a small space in the house, such as the utility room or a bathroom, to keep them in close proximity to the box when it’s required.
//
// Wherever you place your litter box, it should be a quiet and private place so that your cat can go about their business in peace without an audience. In addition, make sure you don’t put the litter box next to their feeding bowls. Humans don’t like eating where they go the toilet and neither do cats!
//
// As cats instinctively cover their tracks, so to speak, it is advised that you ensure your pet is naturally attracted to the litter and will use the box without prompting. Should your cat go elsewhere during house training, transfer some of their feces or urine into the litter. The scent will help draw your cat to the litter box, as a subliminal reminder that this is where they should be going to the toilet.
//
// While you should be regularly cleaning the litter box, it’s a good idea to add a tiny bit of soiled litter on top while house training a cat until they are using the litter box unaided. This will help to further reinforce the notion that this is where your cat must relieve themselves.
//
// DON’T: RUB THEIR NOSES IN IT
//
// When it comes to house training a cat, one of the most common mistakes first-time pet owners do is failing to properly discipline them while they learn to use the litter box. The idea of 'rubbing their nose in it' if they don’t use the litter box is a relic of a bygone era.
//
// That isn't to suggest you shouldn't let your cat know when they've done something wrong. If you catch your cat in the act, squirt them with a light spray of water from a bottle spray. Should you catch them again, repeat the same action. This will dissuade them from making future mistakes.
//
// DO: ANTICIPATE MISTAKES AND REWARD YOUR KITTEN FOR USING THE LITTER BOX
//
// Rather than needing to discipline your new kitten or cat, the best course of action is to anticipate behavior. For example, if you detect your cat sniffing, scratching, or crouching in search of a suitable location, attempt to grab them before they do anything and place them in the litter box.
//
// This reduces the chances of an accident by removing any possibility for your cat to relieve themselves somewhere other than their litter box. If you live in a house with carpet, another helpful advice is to completely clean any soiled spots, as the fragrance may attract your cat to return to this region in the future.
//
// Praise your cat when they use the litter box when they relieve themselves. In some circumstances, you may wish to reward your cat's positive behavior with treats or playtime. You’ll be surprised how much positive reinforcement works on cats just as well as it does on people!
// """,
//       'title': "House Training a Cat : Litter Training",
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716632/u3guwbluiqqjsjur5jej.webp",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716632/u3guwbluiqqjsjur5jej.webp",
//       'category': 'Critical',
//       'date': '22 Nov 2021'
//     },
//     {
//       'username': 'Sam Haris',
//       'content': """Know The 10% Rule of Dog Treats
//
// Giving your dog too many dog treats can cause several types of health and behavioral issues. Treats should make up no more than about 10% of your dog’s daily calories.
// But how many calories are in Dog Food?
//
// Most bags of dry dog food and cans of wet food will include the caloric information. Beware of counting calories from the back of the food bag as it can be confusing. This is because manufactures use a “kcal” and “Calorie” interchangeably. A “Calorie” is technically 1,000 “calories.” A “kcal” is technically one “Calorie” or 1,000 “calories.” For example, if the label states 450 kcal per cup, it’s safe to assume they mean 450 calories per cup and not 450,000 calories per cup. (No living being can consume 450,000 calories, so use your discretion!)
//
// You can use an approximation of Dog’s Resting Energy Rate or RER to figure out how many treat calories they are permitted. (This is the approximate number of kcal a dog needs to maintain body functions while at rest. This is just a minimal, if your dog is highly energetic or is pregnant, they will require more Kcal)
//
//
// [Body weight (in kilograms) x 30] + 70 = Resting energy requirement in calories (kcal)
//
// Use this as a guide and always consult your veterinarian for advice on food and treats.
//
// Choosing Treats
//
// When it comes to giving treats, your dog’s preference holds the ultimate hand. Treats can be highly beneficial in training your dog. Some dogs prefer vegetables/fruits as treats others prefer the commercial counterparts.
//
// Here is a list of ealthy and homemade tasty treats for your pooch!
//
// 1.Peanut Butter
// 2.Bananas
// 3.Apple Slices
// 4.Carrots
// 5.Broccolis
// 6.Green Beans
// 7.Cucumber
// 8.Cooked Sweet Potatoes
// 9.Watermelon
// 10.Strawberries
// 11.Blueberries
//
// Fighting Dog Obesity
//
// Even if you don’t count calories for your own diet, it is a good idea to be aware of the caloric content of the human foods or dog treats you might be tempted to feed your dog.
//
// Obesity leads to canine health problems, such as joint disease, diabetes, and pancreatitis; we can lessen the likelihood of these problems occurring if we limit our dog’s food intake. If your dog is already overweight, talk to your veterinarian about the best weight loss plan for your dog, and the type and number of treats that will be best suited to her needs.
//
// Remember treats should only be given as per the advice of the veterinarian. Treats shouldn’t be used to completely replace your dog’s usual balanced diet. Always give treats in moderation even if they are healthy.
// """,
//       'title': "How many treaties are too many treaties? Dog treat Help!",
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716686/l3haoa0w2272p2hnhbdx.png",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716686/l3haoa0w2272p2hnhbdx.png",
//       'category': 'Critical',
//       'date': '2 Sept 2019'
//     },
//     {
//       'username': 'Sam Haris',
//       'content':
//           """Rabbits are increasingly becoming a popular choice for easy-to-care pets. But they are amongst the most abused and neglected of pets. Countless rabbits live horrible lives confined to a hutch, alone and with little or no opportunity to exercise, largely because their owners are unaware of the responsibilities that come with owning one.
//
// Do you think rabbits are a good fit for you?
// It's an essential question since there are many misconceptions about rabbits as pets, so understanding what's involved is crucial. But it's also crucial to consider the following question...
//
// Are you up to the task of caring for rabbits?
// Countless bunnies are neglected by owners who don't understand or aren't willing to devote themselves to their rabbits' needs.
//
//
// Consider the following before buying or adopting a pet rabbit:
//
// 1. Rabbits are not suitable for children.
// Rabbits are rarely affectionate; as prey animals, they are naturally wary and can bite or scratch if they feel threatened. It takes time and patience to build a relationship with a rabbit, and it must be done on the rabbit’s terms. This patience is often lacking in children.
//
// 2. Rabbits dislike being picked up and petted.
// Because rabbits are prey animals, when they are picked up, their instinct tells them they have been caught by a predator, and they typically respond angrily. The majority of responsible owners will only pick up their rabbits to inspect their health.
//
// 3. Rabbits do not thrive in cramped quarters.
// Rabbits live underground and they cover a wide area each day in their natural habitat.
// Pet rabbits require a minimum enclosure size of 3m x 2m x 1m high. They should never be kept in hutches.
//
// 4. Rabbits are unhappy when they are left alone.
// Companionship is almost as important to rabbits as food, according to studies. As social animals, rabbits are in a habit of snuggling up together and cleaning each other.
//
// 5. Rabbits are not easy to care for.
// Rabbits should be cleaned out every day and given fresh hay and bedding.. They have a ten-year lifespan, so that's a lot of cleaning! They require annual vaccines and are prone to medical problems, so expect appointments to the veterinarian!
//
//
// Rabbits are rewarding and popular pets. They can become part of the family but, as sensitive animals, are best suited to teenagers and adults. If you can’t commit to giving them what they need to live full and contented lives then rabbits are not for you.
// """,
//       'title': "Is rabbit a right choice of pet for me?",
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716955/wbzrbid7y9jllb1ohjuv.jpg",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716955/wbzrbid7y9jllb1ohjuv.jpg",
//       'category': 'Critical',
//       'date': '5 May 2020'
//     },
//     {
//       'username': 'Sam Haris',
//       'content':
//           """Benefits of cat training are immense. Training provides mental and physical stimulation as well as positive social contact. Cats are motivated on a pay-to-play basis and will participate in training games only if the rewards are worthwhile.  Cat training requires a lot of patience. Keep in mind they cannot be trained to do the tasks that dogs are bred to do. Cats will instinctively use litterbox and they rarely engage in play biting.
//
// Training is just assigning words to natural behaviors and rewarding your cat for cooperating. Use a clicker to help train your cat.  Here are 3 simple tricks you can teach your cat:
//
// 1.Come - From the moment they enter your home, cats can learn to come. Combine positive experiences with the sound of a treat cup being shaken with the word "come." To accomplish this, place treats in a cup or container, shake it, and reward your cat until he or she recognizes the sound. When your cat arrives, click and give her a treat. Gradually shorten the time between saying "come" and shaking the rewards until she responds on cue. Gradually remove the clicker and treat her on a regular basis.
//
// 2.Sit - Click and treat your cat whenever she sits naturally. When you put out the treats, you'll notice your cat sitting to cue you. Once you've figured out what she'll do, add the phrase "sit." Then use a target wand or a pointing signal to entice her into place. This stance should be rewarded with a click. Gradually stop clicking every correct response and only use the clicker and treats when necessary.
//
// 3.In the box(or cat-carrier) – Most cats will happily jump in a box or explore a bag. Having a direction for this behavior is useful when the time comes to pull out the cat carrier. In fact, pull out the cat carrier long before you ever need it, hiding treats and even feeding your cat or kitten portions of her meal in it. Click and reward your cat when he jumps into the carrier or a box. Add the cue "in the box" when your cat prompts you. Gradually increase the amount of time you spend carrying her around in her box/carrier, praising her after each ride.
//
//
// Yelling or physical punishment will only associate you with negative experiences to your cat. Swatting, spraying, or startling techniques are not helpful. They will be suspicious of you, and this will hinder your bonding. Always use positive reinforcement training techniques.
// """,
//       'title': "What is cat training, and can my cat learn tricks?",
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716453/ac9zmtwwyaf9jvumgcc6.jpg",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716453/ac9zmtwwyaf9jvumgcc6.jpg",
//       'category': 'Critical',
//       'date': '27 Mar 2021'
//     },
//     {
//       'username': 'Sam Haris',
//       'content':
//           """Wouldn’t it be a dream come true to train your pet which doesn’t involve you being strict or harsh? Where you both can enjoy the experience and deepen you bond too! Positive reinforcement training method is the answer. It can be used at any age of your pet’s life! Using positive reinforcement to train your pet means you reward the behaviors you like and ignore the behaviors you do not like. As a pet-parent you can use praise, games, walks, car rides or treats to reward good behavior. Positive reinforcement training is the best way to shape your pet’s future behavior as they learn to have consequences. A positive consequence is rewarding and praising them.
//
// Positive reinforcement is the gold standard of dog training and can easily be done at home. You should-
//
//
// 1.Instantly Praise and Reward Desired Behaviour
// Pets live in the moment, so your response should be instant. When your pet does something that you want them to do, you should reward them with both treats and affection.
// Housetrain your pet by giving them treats for every time they go outside to relieve themselves. Working on commands? Pet them each time they do what you say.
// 2.Keep it Short and Fun
// To get your pet to realize that they can achieve good things by obeying you, you must teach them positive reward training. For this reason, you should make training brief, fun, and positive - ideally finishing on a positive note.
// 3. Stock Up on Plenty of Treats
// Treats are a great way to motivate most pets. Go for soft treats you can easily break into small, pea-sized nibbles. Besides commercial pet treats, pieces of chicken breast, hot dogs, and cheese work well, too.
// 4. Make Sure Your Pet Is Enjoying Training
// You can tell if pets are enjoying skill-building sessions by reading their cues. Is your pet paying attention to you? Is your pet eager to get the treat? Then keep teaching. If they seem disinterested or distracted, try another time.
// 5. Create Trust and Understanding with Your Pet
// Teaching your pet to navigate the human world is like raising a child—you need patience. Ask yourself ‘How can I help my learner understand what I’m trying to teach them?’ Treat them with love and care. Enjoy the process.
//
// Will using treats encourage my pet to constantly beg for food?
//
// If you're feeding your pet a handout from the dinner table, they will likely stick around for more. However, if you're using treats as rewards during training, your pet will understand they are earning the treat.
//
// Be Kind. Be Patient. Be Consistent. Motivate your pet. Stay the course and always remember that the power of positive training is the right choice in all situations, no matter what the issue.
//
// """,
//       'title': "What is positive pet-rewarding training and why use it?",
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716796/mzxkhhw7miafqgunqepv.jpg",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716796/mzxkhhw7miafqgunqepv.jpg",
//       'category': 'Critical',
//       'date': '4 July 2020'
//     },
//     {
//       'username': 'Sam Haris',
//       'content':
//           """Pet parents go through the dilemma of choosing between dry and wet food. The right kind of food determines a dog’s health and happiness. But what is the difference between the two and which one to give?
//
// Both canned and dry foods meet the basic standards for nutrient levels, so both are going to provide adequate nutrients. Wet food is made by griding meat ingredients and grain in which nutrient rich gravy is added. As a result, wet food has much higher moisture content than dry food. A dry food might have around 10% moisture (max.) while a wet food might have something like 78% moisture (max.). The ingredients are virtually similar in dry food, but instead of adding gravy and canning the result, the meat combination is pulverized to form a uniform dough that can be cooked. To make kibble, the dough is baked and then extruded through specially designed holes. After drying, the kibble is sprayed with fats, oils, vitamins, and minerals before being packaged before the fats and oils deteriorate.
//
//
// Dental Health
//
// Some dry foods have substances added to the outside of the kibble to help minimize tartar build-up on the teeth, which may be good for some dogs, but these advantages may be minor unless you feed a dry meal specifically designed for dental health. Regardless of the diet, you should brush your dog's teeth on a regular basis.
//
// Mixing both types of food?
//
// There are times when feeding either one or the other may be the better choice for you or your dog. However, there are also times when mixing the two together — a feeding method known as topping — makes an especially tasty choice. It is very important to ensure you are still providing the proper daily feeding amount to prevent overfeeding. Your vet can help you inn calculating the daily caloric requirement of your dog.
//
// Wet dog food is more expensive and inconvenient than dry dog food option. Wet foods are usually more nutritious and are more strictly regulated. Both wet and dry dog diets have significant advantages and disadvantages, so deciding between the two is often a matter of dog’s dietary needs. Your veterinarian can offer advice on which type of dog food is best suited for your dog’s needs and eating habit.
// """,
//       'title': "What should I feed my dog - Wet food or Dry Food?",
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716505/pbmyzrr3fxdggobcu38i.jpg",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716505/pbmyzrr3fxdggobcu38i.jpg",
//       'category': 'Critical',
//       'date': '21 Feb 2021'
//     },
//     {
//       'username': 'Sam Haris',
//       'content': """
// Puppy Teething Timeline
//
// Birth-2 Weeks
// -No Teeth
//
// 2-4 Weeks
// -Incisors emerge, followed by premolars, molars, and canines
//
// 5-8 Weeks
// -All 28 baby teeth are expected by this time
// -at about 8 weeks, milk teeth will begin falling out
//
// 12-16 weeks
// -adult teeth start to come in pushing baby teeth out
// - provide chew toys to relieve pain
//
// 6 months and Older
// -all 42 permanent teeth should be in place
//
// Puppies have baby teeth that fall out just like human babies. Almost all puppies are born without teeth and go through a process called puppy teething. Sharp puppy teeth erupt from the gums in the jaw from birth to six months. Puppies go through teething stages during the development of their teeth, including sore gums, and eventually—the eruption of 28 baby teeth. During teething, puppies may target all kinds of unexpected objects to gnaw and chew on, like rugs, shoes, furniture, and any object, to relieve the discomfort.
//
//
// Beware of these signs during Teething!
//
// Although there is a slight variation in breeds (talk to your vet about the same), you can expect traditional growth of your puppy’s teeth. Any type of facial swelling, changes in eating habits, unexpected night awakenings, or rubbing of the face are signs of possible oral discomfort. Take your puppy to the veterinarian if you see:
//
//
//
// 1.Crooked teeth or malocclusion (misalignment of the upper and lower jaw). While some breeds have a trademark bite, unusual ones can cause chewing issues.
//
// 2.Blood Spots on your dog's toys, brown tartar on the teeth, or gums that are bleeding, inflamed, and/or sore. These are common symptoms of periodontal disease.
//
// 3.Two teeth occupying one spot in your puppy's mouth. This can cause the adult tooth to come in misaligned and crooked.
//
// 4.Broken or cracked teeth can cause your puppy pain or infection.
//
// 5.Loose adult teeth are caused by trauma to the mouth or from gum loss due to advanced periodontal disease. It can also be a sign of illness.
//
//
//
// What can you do as a pet-parent?
//
// 1.Getting Chew Toys – They are the first line of defense when it comes to teething puppies gnawing on everything in sight. Buy chew toys according to the size of your puppy’s mouth. They should neither be too big nor too small. They should also not be rock hard as they can chip the delicate puppy teeth.
//
// 2.Start a teeth-cleaning routine- It's important to begin handling your puppy's mouth while it's young so you can regularly check for any potential tooth problems. Have a positive-reinforcement approach towards brushing. Give your puppy rewards every time you clean their teeth.
//
// 3,Divert attention- If your puppy won’t stop biting give them a chew toy or train them. Teach them tricks. Redirecting the puppy to something more positive is beneficial and will stop them from nipping.
//
// 4.Don’t ignore – Don’t ignore a bite. When they bite your hand while playing, end the play and walk away. Repeat the process till they understand that biting or nipping means ‘no play time with human’. Don’t use negative techniques it will only hinder a puppy’s learning and your bond with them.
//
//
//
// Having a puppy is an adventure and a lesson. Train your puppies in a positive manner for a stronger bond and a fun time! Use treats, toys, and lots of praise when your puppy chews on their own toys rather than chewing on everyday household items. Happy Parenting!
// """,
//       'title': "Your Puppy and Teething - Explained",
//       'hearts': ' 321',
//       'userimg':
//           "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*",
//       'thumbnail':
//           "https://res.cloudinary.com/tamely-app/image/upload/w_400,h_400,c_thumb/v1638716894/pge2slwaftlvdmnptlgg.jpg",
//       'postimg':
//           "https://res.cloudinary.com/tamely-app/image/upload/v1638716894/pge2slwaftlvdmnptlgg.jpg",
//       'category': 'Critical',
//       'date': '12 feb 2020'
//     },
//   ];

  Future likedBlog(blogId) async {
    _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
    LikedBlogBody body = LikedBlogBody(blogId);

    var result = await _tamelyApi.likedBlog(body).whenComplete(() {
      _dialogService.completeDialog(DialogResponse(confirmed: true));
    });
    if (result.data != null) {
      if (result.data!.message != null) {
        print(result.data!.message!);
        _navigationService.back();
        _navigationService.back();
        _snackBarService.showSnackbar(message: result.data!.message!);
      }
    }
  }

  void goToSearchView() {
    Get.to(BlogSerachView());
  }
}
