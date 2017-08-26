/* Vindsimulator for aktuelt vejr i lufthavn */

// En vindretningsvektor og cirklens position
PVector wind;
PVector position;
// Variable til data om vejret
JSONObject json;
float angle;
float windmag;
String city;
// Bredde og højde af vinduet og tekstfont
int width;
int height;
// Font til at skrive i vinduet
PFont f;

void setup() {
  city = "AAR";
  width = 800;
  height = 400;
  size(800, 400);
  // Aflæs data fra tjenesten apixu.com for byen
  String url = "https://api.apixu.com/v1/";
  url += "current.json?key=513d8003c";
  url += "8b348f1a2461629162106&q=" + city;
  json = loadJSONObject(url).
    getJSONObject("current");
  // Start cirklen i midten af vinduet.
  position = new PVector(width/2, height/2);
  // Beregn vejret ud fra data i tjenesten.
  calcWeather();
  // Sæt font til at skrive i vinduet.
  f = createFont("Arial",16,true);
  textFont(f,36);
}

void draw() {
  // Slet indholdet af vinduet.
  background(200);
  // Flyt cirklen i vindens retning.
  position.add(wind);
  // Tegn cirklen.  
  stroke(0);
  fill(51);
  ellipse(position.x, position.y, 16, 16);
  // Flyt cirklen, når den når kanten.
  if (position.x > width)  position.x = 0;
  if (position.x < 0)      position.x = width;
  if (position.y > height) position.y = 0;
  if (position.y < 0)      position.y = height;
  // Vis vindhastighed og retning i vinduet.
  String message = "By: " + city + "  Retning: ";
  message += json.getString("wind_dir");
  message += "  Hastighed: " + nfc(windmag, 2);
  message += " m/s";
  text(message, 10, 50);
}

void calcWeather() {
  // Aflæs vindretningen og konverter til radianer.
  angle = radians(90-json.getFloat("wind_degree"));
  // Aflæs vindhastigheden
  windmag = json.getFloat("wind_kph")/3.6;
  // Lav en vektor ud fra vinklen.
  wind = PVector.fromAngle(angle);
  wind.x = -wind.x;
}