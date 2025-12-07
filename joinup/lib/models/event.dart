class Event {
  final String title;
  final String subtitle;
  final String image;

  Event({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

final List<Event> mockEvents = [
  Event(
    title: "Titolo Evento",
    subtitle: "Sottotitolo Evento",
    image: "https://picsum.photos/500/900?1",
  ),
  Event(
    title: "Altro Evento",
    subtitle: "Sottotitolo 2",
    image: "https://picsum.photos/500/900?2",
  ),
];
