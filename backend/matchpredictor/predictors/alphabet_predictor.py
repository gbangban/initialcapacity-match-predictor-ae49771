from matchpredictor.matchresults.result import Fixture, Outcome
from matchpredictor.predictors.predictor import Prediction, Predictor


class AlphabetPredictor(Predictor):
    def predict(self, fixture: Fixture) -> Prediction:        
        home_name, away_name = fixture.home_team.name, fixture.away_team.name
        outcome = Outcome.HOME if home_name < away_name else Outcome.AWAY
        return Prediction(outcome)
