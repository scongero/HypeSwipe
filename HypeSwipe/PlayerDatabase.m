//
//  PlayerDatabase.m
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import "PlayerDatabase.h"
#import "Player.h"
@interface PlayerDatabase()



@end

@implementation PlayerDatabase

NSArray *players;
NSArray *teams;
NSArray *numbers;
NSArray *positions;
NSArray *projectedFantasyScores;
NSArray *fantasyTeams;
NSArray *playerImages;
NSArray *teamRanks;
NSArray *friendTeams;
NSArray *friendTeamScores;
NSMutableArray *playerClass;

//Dictionary
NSMutableDictionary *playerDictionary;
NSMutableDictionary *unswipedPlayerDatabase;
NSMutableDictionary *swipedPlayerDatabase;


-(void)addPlayer:(Player *)player toDatabase:(PlayerDatabase *)playerDatabase
{
    
}

+(Player *)drawNextPlayer
{
    int count =0;
    for (Player *player in [PlayerDatabase playerClass])
    {
        if (player.hyped)
        {
            [swipedPlayerDatabase setObject:player forKey:player.name];
        }
        else
        {
            [unswipedPlayerDatabase setObject:player forKey:player.name];
            count++;
            return player;

        }
    }
    if (count==0)
    {
        NSLog(@"All players swiped");
    }
    return nil;
}

+ (NSArray *)players
{
    if (!players)
    {
        players = @[@"Peyton Manning", @"C.J. Spiller", @"Reggie Bush", @"A.J. Green", @"Antonio Brown", @"Brandon Myers", @"Darren Sproles", @"Matthew Stafford", @"Johnathan Franklin", @"Mark Ingram", @"Tavon Austin", @"Cecil Shorts", @"Rob Gronkowski", @"Blair Walsh", @"Andrew Luck", @"Ray Rice", @"Ronnie Hillman", @"Larry Fitzgerald", @"Mike Wallace", @"Antonio Gates", @"Torrey Smith", @"Andy Dalton", @"Ahmad Bradshaw", @"Bryce Brown", @"Steven Jackson", @"Eddie Lacy", @"Bernard Pierce", @"Greg Zuerlein", @"Colin Kaepernick", @"Jason Snelling", @"Alfred Morris", @"Stevie Johnson", @"Denarius Moore", @"Jimmy Graham", @"Giovani Bernard", @"Philip Rivers", @"Lamar Miller", @"Knowshon Moreno", @"Jordy Nelson", @"Hakeemm Nicks", @"Mike Williams", @"Sebastian Janikowski", @"Russell Wilson", @"Stevan Ridley", @"Marshawn Lynch", @"Julio Jones", @"Reggie Wayne", @"Jason Witten", @"Frank Gore", @"Eli Manning", @"BenJarvus Green-Ellis", @"Willis McGahee", @"James Starks", @"Miles Austin", @"Brian Hartline", @"Matt Bryant", @"Terrelle Pryor", @"Adrian Foster", @"DeMarco Murray", @"Demaryius Thomas", @"Vincent Jackson", @"Martellus Bennett", @"Fred Jackson", @"Jay Cutler", @"Aaron Rodgers", @"Rashard Mendenhall", @"James Jones", @"Sidney Rice", @"Kyle Rudolph", @"Matt Prater", @"Drew Brees", @"Darren McFadden", @"Adrian Peterson", @"Eddie Royal", @"Brandon Marshall", @"Jordan Cameron", @"Marques Colston", @"DeAngelo Williams", @"Danny Woodhead", @"Alshon Jeffery", @"Greg Jennings", @"Steve Smith", @"Greg Olsen", @"Stephen Gostkowski", @"Matt Ryan", @"Joique Bell", @"Bilal Powell", @"Calvin Johnson", @"DeAndre Hopkins", @"Zach Miller", @"Anquan Boldin", @"Joe Flacco", @"Shane Vereen", @"Roddy White", @"Kendall Wright", @"Tony Gonzalez", @"Phil Dawson", @"Tom Brady", @"Chris Johnson", @"LeSean McCoy", @"Pierre Garcon", @"Victor Cruz", @"Vernon Davis", @"DeSean Jackson", @"Alex Smith", @"Michael Vick", @"Ryan Matthews", @"Percy Harvin", @"Santonio Holmes", @"Owen Daniels", @"Alex Henery", @"Robert Griffin III", @"Maurice Jones-Drew", @"Doug Martin", @"Dez Bryant", @"Wes Welker", @"Coby Fleener", @"Eric Decker", @"Cam Newton", @"Le'Veon Bell", @"Danny Amendola", @"Justin Blackmon", @"Julian Edelman", @"Jermichael Finley", @"Justin Tucker", @"Tony Romo", @"Matt Forte", @"Jamaal Charles", @"Andre Johnson", @"Josh Gordon", @"Julius Thomas", @"Trent Richardson", @"Ben Tate", @"David Wilson", @"Dwayne Bowe", @"Randall Cobb", @"T.Y. Hilton", @"Jared Cook", @"Dan Bailey"];
    }
    return players;
}


+ (NSArray *)teams
{
    if(!teams)
    {
        teams = @[@"DEN", @"BUF", @"DET", @"CIN", @"PIT", @"NYG", @"NO", @"DET", @"GB", @"NO", @"STL", @"JAX", @"NE", @"MIN", @"IND", @"BAL", @"DEN", @"ARI", @"MIA", @"SD", @"BAL", @"CIN", @"IND", @"PHI", @"ATL", @"GB", @"BAL", @"STL", @"SF", @"ATL", @"WAS", @"BUF", @"OAK", @"NO", @"CIN", @"SD", @"MIA", @"DEN", @"GB", @"NYG", @"TB", @"OAK", @"SEA", @"NE", @"SEA", @"ATL", @"IND", @"DAL", @"SF", @"NYG", @"CIN", @"CLE", @"GB", @"DAL", @"MIA", @"ATL", @"OAK", @"HOU", @"DAL", @"DEN", @"TB", @"CHI", @"BUF", @"CHI", @"GB", @"ARI", @"GB", @"SEA", @"MIN", @"DEN", @"NO", @"OAK", @"MIN", @"SD", @"CHI", @"CLE", @"NO", @"CAR", @"SD", @"CHI", @"MIN", @"CAR", @"CAR", @"NE", @"ATL", @"DET", @"NYJ", @"DET", @"HOU", @"SEA", @"SF", @"BAL", @"NE", @"ATL", @"TEN", @"ATL", @"SF", @"NE", @"TEN", @"PHI", @"WAS", @"NYG", @"SF", @"PHI", @"KC", @"PHI", @"SD", @"SEA", @"NYJ", @"HOU", @"PHI", @"WAS", @"JAX", @"TB", @"DAL", @"DEN", @"IND", @"DEN", @"CAR", @"PIT", @"NE", @"JAX", @"NE", @"GB", @"BAL", @"DAL", @"CHI", @"KC", @"HOU", @"CLE", @"DEN", @"IND", @"HOU", @"NYG", @"KC", @"GB", @"IND", @"STL", @"DAL"];
    }
    return teams;
}

+ (NSArray *)numbers
{
    if (!numbers)
    {
        numbers =  @[@"18", @"28", @"21", @"18", @"84", @"83", @"43", @"9", @"23", @"22", @"11", @"84", @"87", @"3", @"12", @"27", @"21", @"11", @"11", @"85", @"82", @"14", @"44", @"34", @"39", @"27", @"30", @"4", @"7", @"44", @"46", @"13", @"17", @"80", @"25", @"17", @"26", @"27", @"87", @"88", @"19", @"11", @"3", @"22", @"24", @"11", @"87", @"82", @"21", @"10", @"42", @"23", @"44", @"19", @"82", @"3", @"2", @"23", @"29", @"88", @"83", @"83", @"22", @"6", @"12", @"28", @"89", @"18", @"82", @"5", @"9", @"20", @"28", @"11", @"15", @"84", @"12", @"34", @"39", @"17", @"15", @"89", @"88", @"3", @"2", @"35", @"29", @"81", @"10", @"86", @"81", @"5", @"34", @"84", @"13", @"88", @"9", @"12", @"28", @"25", @"88", @"80", @"85", @"10", @"11", @"7", @"24", @"11", @"10", @"81", @"6", @"10", @"32", @"22", @"88", @"83", @"80", @"87", @"1", @"26", @"80", @"14", @"11", @"88", @"9", @"9", @"22", @"25", @"80", @"12", @"80", @"34", @"44", @"22", @"82", @"18", @"13", @"89", @"5"];
    }
    return numbers;
}

+ (NSArray *)positions
{
    if (!positions)
    {
        positions = @[@"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"RB", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"WR", @"QB", @"RB", @"RB", @"RB", @"RB", @"RB", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"RB", @"QB", @"RB", @"RB", @"WR", @"WR", @"WR", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"RB", @"QB", @"RB", @"RB", @"RB", @"WR", @"WR", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"RB", @"QB", @"QB", @"RB", @"WR", @"WR", @"TE", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"WR", @"RB", @"RB", @"WR", @"WR", @"WR", @"TE", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"WR", @"QB", @"RB", @"WR", @"WR", @"TE", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"WR", @"QB", @"QB", @"RB", @"WR", @"WR", @"TE", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"WR", @"QB", @"RB", @"WR", @"WR", @"WR", @"TE", @"K", @"QB", @"RB", @"RB", @"WR", @"WR", @"TE", @"RB", @"RB", @"RB", @"WR", @"WR", @"WR", @"TE", @"K"];
    }
    return positions;
}

+ (NSArray *)projectedFantasyScores
{
    if (!projectedFantasyScores)
    {
        projectedFantasyScores = @[@"27.72", @"19.50", @"10.20", @"23.30", @"11.30", @"4.90", @"18.30", @"17.86", @"-", @"0.00", @"9.90", @"13.70", @"17.90", @"7.00", @"19.50", @"11.30", @"4.00", @"14.40", @"4.50", @"7.40", @"7.50", @"8.28", @"0.00", @"9.40", @"0.00", @"-", @"5.10", @"8.00", @"19.60", @"8.60", @"22.20", @"1.10", @"15.30", @"19.40", @"13.50", @"14.16", @"4.00", @"13.50", @"-", @"4.60", @"9.90", @"8.00", @"20.58", @"7.90", @"13.70", @"16.70", @"10.60", @"15.50", @"16.20", @"9.72", @"6.90", @"8.80", @"-", @"0.00", @"5.20", @"10.00", @"0.00", @"8.20", @"7.80", @"13.40", @"12.00", @"6.90", @"8.00", @"17.98", @"-", @"9.90", @"-", @"13.60", @"3.70", @"7.00", @"14.42", @"12.50", @"22.80", @"4.70", @"16.70", @"12.10", @"5.30", @"-", @"16.70", @"3.60", @"12.80", @"-", @"-", @"5.00", @"12.84", @"7.80", @"11.00", @"15.20", @"7.80", @"2.80", @"16.80", @"15.46", @"0.00", @"9.50", @"3.50", @"7.20", @"8.00", @"24.24", @"7.00", @"22.10", @"4.00", @"8.60", @"6.50", @"10.50", @"20.22", @"20.50", @"11.10", @"0.00", @"6.90", @"4.00", @"14.00", @"10.92", @"5.70", @"9.20", @"10.40", @"22.00", @"9.60", @"11.10", @"-", @"11.60", @"8.10", @"0.00", @"7.70", @"-", @"7.00", @"12.44", @"12.10", @"12.10", @"10.90", @"13.00", @"14.90", @"7.50", @"4.00", @"7.90", @"11.80", @"-", @"12.30", @"6.50", @"10.00"];
    }
    return projectedFantasyScores;
}

+ (NSArray *)fantasyTeams
{
    if (!fantasyTeams)
    {
        fantasyTeams = @[@"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"You emBoldin Me", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Not2Schaubby", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"Geno 911!", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"MatStafordInfection", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"I Pitta The Fool", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"My Vick In A Box", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Free Hernandez", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"Football is my Forte", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"WhatWould Jones-Drew?", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", @"Landry Day", ];
    }
    return fantasyTeams;
}

+ (NSMutableArray *)playerClass
{
    if (!playerClass)
    {
        NSMutableArray *playerArray = [[NSMutableArray alloc]init];
        for (int i = 0; i < [[self players] count];i++)
        {
            Player *aPlayer = [[Player alloc] init];
            [playerArray addObject:(Player *)aPlayer];
        }
        playerClass = playerArray;
    }
    
    return playerClass;
}

+ (NSArray *)playerImages
{
    if (!playerImages)
    {
        playerImages = @[@"Peyton.png", @"CJ.png", @"Bush.png", @"Green.png", @"Brown1.png", @"Myers.png", @"Sproles.png", @"Stafford.png", @"Franklin.png", @"Ingram.png", @"Austin1.png", @"Shorts.png", @"Gronkowski.png", @"Walsh.png", @"Luck.png", @"Rice.png", @"Hillman.png", @"Fitzgerald.png", @"Wallace.png", @"Gates.png", @"Smith1.png", @"Dalton.png", @"Bradshaw.png", @"Brown2.png", @"Jackson1.png", @"Lacy.png", @"Pierce.png", @"Zuerlein.png", @"Kaepernick.png", @"Snelling.png", @"Morris.png", @"Johnson1.png", @"Moore.png", @"Graham.png", @"Bernard.png", @"Rivers.png", @"Miller.png", @"Moreno.png", @"Nelson.png", @"Nicks.png", @"Williams.png", @"Janikowski.png", @"Wilson1.png", @"Ridley.png", @"Lynch.png", @"Jones.png", @"Wayne.png", @"Witten.png", @"Gore.png", @"Manning.png", @"Green-Ellis.png", @"McGahee.png", @"Starks.png", @"Austin2.png", @"Harline.png", @"Bryant1.png", @"Pryor.png", @"Foster.png", @"Murray.png", @"Thomas.png", @"Jackson2.png", @"Bennett.png", @"F_Jackson.png", @"Cutler.png", @"Rodgers.png", @"Mendenhall.png", @"James Jones.png", @"Sidney Rice.png", @"Kyle Rudolph.png", @"Prater.png", @"Brees.png", @"McFadden.png", @"Peterson.png", @"Royal.png", @"Marshall.png", @"Cameron.png", @"Colston.png", @"Williams.png", @"Woodhead.png", @"Jeffery.png", @"Jennings.png", @"Smith.png", @"Olsen.png", @"Gostkowski.png", @"Ryan.png", @"Bell.png", @"Powell.png", @"Johnson2.png", @"Hopkins.png", @"Miller.png", @"Boldin.png", @"Flacco.png", @"Vereen.png", @"White.png", @"Wright.png", @"Gonzalez.png", @"Dawson.png", @"Brady.png", @"Johnson3.png", @"McCoy.png", @"Garcon.png", @"Cruz.png", @"Davis.png", @"Jackson3.png", @"Smith2.png", @"Vick.png", @"Matthews.png", @"Harvin.png", @"Holmes.png", @"Daniels.png", @"Henery.png", @"GriffinIII.png", @"Jones-Drew.png", @"Matin.png", @"Bryant2.png", @"Welker.png", @"Fleener.png", @"Decker.png", @"Newton.png", @"Bell.png", @"Amendola.png", @"Blackmon.png", @"Edelman.png", @"Finley.png", @"Tucker.png", @"Romo.png", @"Forte.png", @"Charles.png", @"Johnson4.png", @"Gordon.png", @"Thomas.png", @"Richardson.png", @"Tate.png", @"Wilson2.png", @"Bowe.png", @"Cobb.png", @"Hilton.png", @"Cook.png", @"Bailey"];
    }
    return playerImages;
}

+ (NSArray *)teamRanks
{
    if (!teamRanks)
    {
        teamRanks = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
    }
    return teamRanks;
}

+ (NSArray *)friendTeams
{
    if (!friendTeams)
    {
        friendTeams = @[@"You emBoldin Me", @"Not2Schaubby", @"Geno 911!", @"MatStafordInfection", @"I Pitta The Fool", @"My Vick In A Box", @"Free Hernandez", @"Football is my Forte", @"WhatWould Jones-Drew?", @"Landry Day"];
    }
    return friendTeams;
}

+ (NSArray *)friendTeamScores
{
    if (!friendTeamScores)
    {
        friendTeamScores = @[@"134", @"105", @"99", @"76", @"63", @"61", @"48", @"40", @"27", @"12"];
    }
    return friendTeamScores;
}


+(NSMutableDictionary *)playerDictionary
{
    if(!playerDictionary)
    {
        NSMutableDictionary *tempDictionary = [[NSMutableDictionary alloc] init];

        for (int i = 0; i < [[self players] count]; i++)
        {
            Player *currentPlayer = [[self playerClass] objectAtIndex:i];
            
            currentPlayer.team = [[self teams]objectAtIndex:i];
            currentPlayer.name = [[self players]objectAtIndex:i];
            currentPlayer.number = [[self numbers]objectAtIndex:i];
            currentPlayer.position = [[self positions]objectAtIndex:i];
            currentPlayer.projectedFantasyScore = [[self projectedFantasyScores] objectAtIndex:i];
            currentPlayer.playerImage = [[self playerImages] objectAtIndex:i];
            currentPlayer.fantasyTeam = [[self fantasyTeams] objectAtIndex:i];
            
            [tempDictionary setObject:(Player*)currentPlayer forKey:[players objectAtIndex:i]];
        }
        playerDictionary = tempDictionary;
    }
    
    
    return playerDictionary;
}
+(NSMutableDictionary *)unswipedPlayerDatabase
{
    return unswipedPlayerDatabase;
}
+(NSMutableDictionary *)swipedPlayerDatabase
{
    return swipedPlayerDatabase;
}










@end
