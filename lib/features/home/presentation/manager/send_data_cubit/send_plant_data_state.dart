abstract class SendPlantDataState{
  const SendPlantDataState();
}
class SendPlantDataInitialState extends SendPlantDataState{}
class SendPlantDataLoadingState extends SendPlantDataState{}
class SendPlantDataSuccess extends SendPlantDataState{}
class SendPlantDataFailure extends SendPlantDataState{}