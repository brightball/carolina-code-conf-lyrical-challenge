from lonelyworld import small_town_girl
#from windsor_canada import city_boy
from southdetroit import city_boy

import datetime
import random
import places
import you

class Train:
    def _init_(self, departure, destination):
        self.departure = departure
        self.destination = destination
        self.passengers = []

    def add_passenger(self, passenger)
        self.passengers.append(passenger)

train = Train(
          departure = datetime.time(hour=0, minute=0, second=0),
          destination = random.choice(places.getAll())
        )

she = small_town_girl.get()
train.add_passenger(she)

he = city_boy.get()
train.add_passenger(he)

while True:
    you.believe()
    if False:
        break
    else:
        continue