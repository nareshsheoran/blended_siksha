


import 'package:blended_siksha/courses/model/neet_ug_all_subject_model.dart';
import 'package:blended_siksha/courses/model/neet_ug_completed_model.dart';
import 'package:blended_siksha/courses/model/neet_ug_exceptional_educator_model.dart';
import 'package:blended_siksha/courses/model/neet_ug_first_model.dart';
import 'package:blended_siksha/courses/model/neet_ug_free_class_model.dart';
import 'package:blended_siksha/courses/model/neet_ug_question_bank_model.dart';
import 'package:blended_siksha/courses/model/neet_ug_recently_started_model.dart';
import 'package:blended_siksha/courses/model/neet_upcoming_lectures_model.dart';
import 'package:scoped_model/scoped_model.dart';

class DashboardViewModel extends Model {
  List<NeetUgFirstModel> neetUgModelList = [];
  List<NeetFreeClassesModel> neetFreeClassesModelList = [];
  List<NeetExceptionalEducatorsModel> neetExceptionalEducatorsModelList = [];
  List<NeetAllSubjectModel> neetAllSubjectModelList = [];
  List<NeetRecentlyStartedModel> neetRecentlyStartedModelList = [];
  List<NeetCompletedModel> neetCompletedModelList = [];
  List<NeetQuestionBankModel> neetQuestionBankModelList = [];
  List<NeetUpcomingLecturesModel> neetUpcomingLecturesModelList = [];

  DashboardViewModel() {
    loadNeetUGFirstList();
    loadNeetFreeClassesList();
    loadNeetExceptionalEducatorsList();
    loadNeetAllSubjectList();
    loadNeetRecentlyStartedList();
    loadNeetAllSubjectList();
    loadNeetQuestionBankList();
    loadNeetCompletedList();
    loadNeetQuestionBankList();
  }

  void loadNeetUGFirstList() {
    neetUgModelList = [
      NeetUgFirstModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg', name: 'NEET Phy'),
      NeetUgFirstModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg', name: 'NEET Chem'),
      NeetUgFirstModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg', name: 'NEET Bio'),
      NeetUgFirstModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg', name: 'NEET Bio'),
      NeetUgFirstModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg', name: 'NEET Bio'),
    ];
    notifyListeners();
  }

  void loadNeetExceptionalEducatorsList() {
    neetExceptionalEducatorsModelList = [
      NeetExceptionalEducatorsModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          name: 'Brijesh Jindal',
          subject: 'Physical Chemistry'),
      NeetExceptionalEducatorsModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          name: 'Brijesh Jindal',
          subject: 'Physical Chemistry'),
      NeetExceptionalEducatorsModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          name: 'Brijesh Jindal',
          subject: 'Physical Chemistry'),
      NeetExceptionalEducatorsModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          name: 'Brijesh Jindal',
          subject: 'Physical Chemistry'),
      NeetExceptionalEducatorsModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          name: 'Brijesh Jindal',
          subject: 'Physical Chemistry'),
    ];
    notifyListeners();
  }

  void loadNeetFreeClassesList() {
    neetFreeClassesModelList = [
      NeetFreeClassesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetFreeClassesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetFreeClassesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
    ];
    notifyListeners();
  }

  void loadNeetAllSubjectList() {
    neetAllSubjectModelList = [
      NeetAllSubjectModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetAllSubjectModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetAllSubjectModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy')
    ];
    notifyListeners();
  }

  void loadNeetRecentlyStartedList() {
    neetRecentlyStartedModelList = [
      NeetRecentlyStartedModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetRecentlyStartedModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetRecentlyStartedModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetRecentlyStartedModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
    ];
    notifyListeners();
  }

  void loadNeetCompletedList() {
    neetCompletedModelList = [
      NeetCompletedModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetCompletedModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetCompletedModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
      NeetCompletedModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          title: 'PHYSICS',
          subtitle: "Super Strategy Session on Special Lenses",
          time: '48 min, By Shanker Roy'),
    ];
    notifyListeners();
  }

  void loadNeetQuestionBankList() {
    neetQuestionBankModelList = [
      NeetQuestionBankModel(img: 'https://wallpapercave.com/wp/hQuSTGC.jpg'),
      NeetQuestionBankModel(img: 'https://wallpapercave.com/wp/hQuSTGC.jpg'),
      NeetQuestionBankModel(img: 'https://wallpapercave.com/wp/hQuSTGC.jpg'),
      NeetQuestionBankModel(img: 'https://wallpapercave.com/wp/hQuSTGC.jpg'),
      NeetQuestionBankModel(img: 'https://wallpapercave.com/wp/hQuSTGC.jpg'),
    ];
    notifyListeners();
  }
}
