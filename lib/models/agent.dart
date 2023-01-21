

import 'address.dart';
import 'agent_category.dart';

class Agent {
  const Agent({
    this.name,
    this.agentCategory,
    this.graduationYear,
    this.patients,
    this.address,
    this.rate,
    this.likes,
    this.comments,
    this.pngPhotoUrl,
    this.photoUrl,
  });

  final String? name;
  final AgentCategory? agentCategory;
  final int? patients;
  final double? rate;
  final int? likes;
  final int? graduationYear;
  final int? comments;
  final String? pngPhotoUrl;
  final String? photoUrl;
  final Address? address;


  static const  drRichard = Agent(
    name: 'Мумака',
    photoUrl:
        'https://i.pravatar.cc/300',
    agentCategory: AgentCategory.kCardiologist,
    comments: 120,
    patients: 310,
    likes: 220,
    address: Address.sanFransisco,
    graduationYear: 2010,
    rate: 4.5,
  );

  static const drLiliana = Agent(
    name: 'Абубакар',
    photoUrl:
        'https://i.pravatar.cc/300',
    agentCategory: AgentCategory.kDermatologist,
    comments: 120,
    patients: 310,
    likes: 220,
    address: Address.sanFransisco,
    graduationYear: 2010,
    rate: 4.5,
  );
  static const drJulissa = Agent(
    name: 'Додик',
    photoUrl:
        'https://i.pravatar.cc/300',
    agentCategory: AgentCategory.kPediatrician,
    comments: 120,
    patients: 310,
    likes: 220,
    address: Address.sanFransisco,
    graduationYear: 2010,
    rate: 4.5,
  );

  static const drEdward = Agent(
    name: 'Уссинга',
    photoUrl:
        'https://i.pravatar.cc/300',
    agentCategory: AgentCategory.kSurgeon,
    comments: 120,
    patients: 310,
    likes: 220,
    address: Address.sanFransisco,
    graduationYear: 2010,
    rate: 4.5,
  );
  static const drGuido = Agent(
    name: 'Коанусбек',
    photoUrl:
        'https://i.pravatar.cc/300',
    agentCategory: AgentCategory.kCardiologist,
    comments: 120,
    patients: 310,
    likes: 220,
    address: Address.sanFransisco,
    graduationYear: 2010,
    rate: 4.5,
  );

  static const listTopDoctor = [
    Agent(
      name: 'Мастурбек',
      agentCategory: AgentCategory.kSurgeon,
      comments: 203,
      pngPhotoUrl: 'https://i.pravatar.cc/300',
      address: Address.brownwood,
      graduationYear: 2009,
      likes: 359,
      rate: 4.7,
      patients: 402,
    ),
    Agent(
      name: 'Хаджи-мага',
      agentCategory: AgentCategory.kUrologist,
      comments: 193,
      pngPhotoUrl:
          'https://i.pravatar.cc/300',
      address: Address.brownwood,
      graduationYear: 2000,
      likes: 301,
      rate: 4.5,
      patients: 320,
    ),
    Agent(
      name: 'Ваня',
      agentCategory: AgentCategory.kCardiologist,
      comments: 210,
      graduationYear: 2012,
      pngPhotoUrl:
          'https://i.pravatar.cc/300',
      address: Address.brownwood,
      likes: 324,
      rate: 4.6,
      patients: 352,
    ),
    Agent(
      name: 'Роберт',
      agentCategory: AgentCategory.kEndocrinologist,
      comments: 173,
      pngPhotoUrl:
          'https://i.pravatar.cc/300',
      address: Address.brownwood,
      graduationYear: 2010,
      likes: 239,
      rate: 4.8,
      patients: 298,
    )
  ];
}
