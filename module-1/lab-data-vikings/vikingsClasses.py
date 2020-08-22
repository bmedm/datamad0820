import random 
# Soldier


class Soldier:
    def __init__(self,health, strength):
        self.health=health
        self.strength= strength
    def attack(self):
        return self.strength
    def receiveDamage(self,damage):
        self.health= self.health-damage
      

    pass

# Viking


class Viking (Soldier):
    def __init__(self,name, health, strength):
        super().__init__(health, strength)
        self.name = name
    def receiveDamage (self, damage):
        self.damage= damage
        self.health=self.health-damage
        if self.health<=0:
            return f"{self.name} has died in act of combat"
        else:
            return f"{self.name} has received {self.damage} points of damage"    
    def battleCry(self):
        return "Odin Owns You All!"

    pass

# Saxon

class Saxon(Soldier):
    def receiveDamage(self, damage):
        self.damage= damage
        self.health=self.health-damage
        if self.health <=0:
            return f"A Saxon has died in combat"
        else:
            return f"A Saxon has received {self.damage} points of damage" 
    pass

# War
class War:
    def __init__(self):
        self.vikingArmy=[]
        self.saxonArmy=[]
    def addViking(self, viking):
        self.vikingArmy.append(viking)
    def addSaxon(self, saxon):
        self.saxonArmy.append(saxon)
    def vikingAttack(self):
        viking= random.choice(self.vikingArmy)
        saxon= random.choice(self.saxonArmy)
        dam =saxon.receiveDamage(viking.strength)
        if saxon.health <= 0:
            index_viking=self.vikingArmy.index(viking)
            self.saxonArmy.pop(index_viking)
        return dam
    def saxonAttack(self):
        viking= random.choice(self.vikingArmy)
        saxon= random.choice(self.saxonArmy)
        dam =viking.receiveDamage(saxon.strength)
        if viking.health <= 0:
            index_saxon=self.saxonArmy.index(saxon)
            self.vikingArmy.pop(index_saxon)
        return dam
    def showStatus(self):
        if len(self.saxonArmy)==0:
            return "Vikings have won the war of the century!"
        elif len(self.vikingArmy)== 0:
            return "Saxons have fought for their lives and survive another day..."
        else:
            return "Vikings and Saxons are still in the thick of battle."
        

        
