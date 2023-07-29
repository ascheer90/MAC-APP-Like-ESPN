//
//  Data.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/8/23.
//

import Foundation

struct Sport: Identifiable {
    var id: Int
    var name: String
    var twitterHandle: String
    var twitterURL: String
    var scheduleURL: String
    var rosterURL: String
}

struct Team: Identifiable {
    var id: Int
    var name: String
    var school: String
    var mascot: String
    var logo: String
    var website: String
    var sports: [Sport]
}

let teams = [
    Team(id: 1, name: "Akron Zips", school: "Akron", mascot: "Zips", logo: "Akron", website: "http://gozips.com/", sports: [
        Sport(id: 2, name: "Baseball", twitterHandle: "@ZipsBB", twitterURL: "https://twitter.com/ZipsBB", scheduleURL: "https://gozips.com/sports/baseball/schedule", rosterURL: "https://gozips.com/sports/baseball/roster"),
        Sport(id: 14, name: "Men's Basketball", twitterHandle: "@ZipsMBB", twitterURL: "https://twitter.com/ZipsMBB", scheduleURL: "https://gozips.com/sports/mens-basketball/schedule", rosterURL: "https://gozips.com/sports/mens-basketball/roster"),
        Sport(id: 16, name: "Women's Basketball", twitterHandle: "@ZipsWBB", twitterURL: "https://twitter.com/ZipsWBB", scheduleURL: "https://gozips.com/sports/womens-basketball/schedule", rosterURL: "https://gozips.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@ZipsTFCC", twitterURL: "https://twitter.com/ZipsTFCC", scheduleURL: "https://gozips.com/sports/mens-cross-country/schedule", rosterURL: "https://gozips.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@ZipsTFCC", twitterURL: "https://twitter.com/ZipsTFCC", scheduleURL: "https://gozips.com/sports/womens-cross-country/schedule", rosterURL: "https://gozips.com/sports/womens-cross-country/roster"),
        Sport(id: 1, name: "Football", twitterHandle: "@ZipsFB", twitterURL: "https://twitter.com/ZipsFB", scheduleURL: "https://gozips.com/sports/football/schedule", rosterURL: "https://gozips.com/sports/football/roster"),
        Sport(id: 6, name: "Women's Lacrosse", twitterHandle: "@ZipsWLAX", twitterURL: "https://twitter.com/ZipsWLAX", scheduleURL: "https://gozips.com/sports/womens-lacrosse/schedule", rosterURL: "https://gozips.com/sports/womens-lacrosse/roster"),
        Sport(id: 7, name: "Men's Soccer", twitterHandle: "@ZipsMSoc", twitterURL: "https://twitter.com/ZipsMSoc", scheduleURL: "https://gozips.com/sports/mens-soccer/schedule", rosterURL: "https://gozips.com/sports/mens-soccer/roster"),
        Sport(id: 8, name: "Women's Soccer", twitterHandle: "@ZipsWSOC", twitterURL: "https://twitter.com/ZipsWSOC", scheduleURL: "https://gozips.com/sports/womens-soccer/schedule", rosterURL: "https://gozips.com/sports/womens-soccer/roster"),
        Sport(id: 9, name: "Softball", twitterHandle: "@ZipsSB", twitterURL: "https://twitter.com/ZipsSB", scheduleURL: "https://gozips.com/sports/softball/schedule", rosterURL: "https://gozips.com/sports/softball/roster"),
        Sport(id: 10, name: "Men's Swimming & Diving", twitterHandle: "@ZipsMSwimDive", twitterURL: "https://twitter.com/ZipsMSwimDive", scheduleURL: "https://gozips.com/sports/mens-swimming-and-diving/schedule", rosterURL: "https://gozips.com/sports/mens-swimming-and-diving/roster"),
        Sport(id: 11, name: "Women's Swimming & Diving", twitterHandle: "@ZipsWSwimDive", twitterURL: "https://twitter.com/ZipsWSwimDive", scheduleURL: "https://gozips.com/sports/womens-swimming-and-diving/schedule", rosterURL: "https://gozips.com/sports/womens-swimming-and-diving/roster"),
        Sport(id: 12, name: "Men's Tennis", twitterHandle: "@ZipsMTEN", twitterURL: "https://twitter.com/ZipsMTEN", scheduleURL: "https://gozips.com/sports/mens-tennis/schedule", rosterURL: "https://gozips.com/sports/mens-tennis/roster"),
        Sport(id: 13, name: "Women's Tennis", twitterHandle: "@ZipsWTEN", twitterURL: "https://twitter.com/ZipsWTEN", scheduleURL: "https://gozips.com/sports/womens-tennis/schedule", rosterURL: "https://gozips.com/sports/womens-tennis/roster"),
        Sport(id: 15, name: "Men's Track & Field", twitterHandle: "@ZipsTFCC", twitterURL: "https://twitter.com/ZipsTFCC", scheduleURL: "https://gozips.com/sports/mens-track-and-field/schedule", rosterURL: "https://gozips.com/sports/mens-track-and-field/roster"),
        Sport(id: 17, name: "Women's Track & Field", twitterHandle: "@ZipsTFCC", twitterURL: "https://twitter.com/ZipsTFCC", scheduleURL: "https://gozips.com/sports/womens-track-and-field/schedule", rosterURL: "https://gozips.com/sports/womens-track-and-field/roster"),
        Sport(id: 18, name: "Women's Volleyball", twitterHandle: "@ZipsVB", twitterURL: "https://twitter.com/ZipsVB", scheduleURL: "https://gozips.com/sports/womens-volleyball/schedule", rosterURL: "https://gozips.com/sports/womens-volleyball/roster"),
        Sport(id: 19, name: "Wrestling", twitterHandle: "@ZipsWrestling", twitterURL: "https://twitter.com/ZipsWrestling", scheduleURL: "https://gozips.com/sports/wrestling/schedule", rosterURL: "https://gozips.com/sports/wrestling/roster")
    ]),
    
    Team(id: 2, name: "Ball State Cardinals", school: "Ball State", mascot: "Cardinals", logo: "Ball_State", website: "https://ballstatesports.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@BallStateBB", twitterURL: "https://twitter.com/BallStateBB", scheduleURL: "https://ballstatesports.com/sports/baseball/schedule", rosterURL: "https://ballstatesports.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@BallStateMBB", twitterURL: "https://twitter.com/BallStateMBB", scheduleURL: "https://ballstatesports.com/sports/mens-basketball/schedule", rosterURL: "https://ballstatesports.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@BallStateWBB", twitterURL: "https://twitter.com/BallStateWBB", scheduleURL: "https://ballstatesports.com/sports/womens-basketball/schedule", rosterURL: "https://ballstatesports.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@BallStateTFXC", twitterURL: "https://twitter.com/BallStateTFXC", scheduleURL: "https://ballstatesports.com/sports/mens-cross-country/schedule", rosterURL: "https://ballstatesports.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@BallStateTFXC", twitterURL: "https://twitter.com/BallStateTFXC", scheduleURL: "https://ballstatesports.com/sports/womens-cross-country/schedule", rosterURL: "https://ballstatesports.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Field Hockey", twitterHandle: "@BallStateFH", twitterURL: "https://twitter.com/BallStateFH", scheduleURL: "https://ballstatesports.com/sports/field-hockey/schedule", rosterURL: "https://ballstatesports.com/sports/field-hockey/roster"),
        Sport(id: 7, name: "Football", twitterHandle: "@BallStateFB", twitterURL: "https://twitter.com/BallStateFB", scheduleURL: "https://ballstatesports.com/sports/football/schedule", rosterURL: "https://ballstatesports.com/sports/football/roster"),
        Sport(id: 8, name: "Men's Golf", twitterHandle: "@BallStateMGolf", twitterURL: "https://twitter.com/BallStateMGolf", scheduleURL: "https://ballstatesports.com/sports/mens-golf/schedule", rosterURL: "https://ballstatesports.com/sports/mens-golf/roster"),
        Sport(id: 9, name: "Women's Golf", twitterHandle: "@BallStateWGolf", twitterURL: "https://twitter.com/BallStateWGolf", scheduleURL: "https://ballstatesports.com/sports/womens-golf/schedule", rosterURL: "https://ballstatesports.com/sports/womens-golf/roster"),
        Sport(id: 10, name: "Gymnastics", twitterHandle: "@BallStateGYM", twitterURL: "https://twitter.com/BallStateGYM", scheduleURL: "https://ballstatesports.com/sports/gymnastics/schedule", rosterURL: "https://ballstatesports.com/sports/gymnastics/roster"),
        Sport(id: 11, name: "Men's Soccer", twitterHandle: "@BallStateMSOC", twitterURL: "https://twitter.com/BallStateMSOC", scheduleURL: "https://ballstatesports.com/sports/mens-soccer/schedule", rosterURL: "https://ballstatesports.com/sports/mens-soccer/roster"),
        Sport(id: 12, name: "Women's Soccer", twitterHandle: "@BallStateWSOC", twitterURL: "https://twitter.com/BallStateWSOC", scheduleURL: "https://ballstatesports.com/sports/womens-soccer/schedule", rosterURL: "https://ballstatesports.com/sports/womens-soccer/roster"),
        Sport(id: 13, name: "Softball", twitterHandle: "@BallStateSB", twitterURL: "https://twitter.com/BallStateSB", scheduleURL: "https://ballstatesports.com/sports/softball/schedule", rosterURL: "https://ballstatesports.com/sports/softball/roster"),
        Sport(id: 14, name: "Men's Swimming & Diving", twitterHandle: "@BallStateMSwim", twitterURL: "https://twitter.com/BallStateMSwim", scheduleURL: "https://ballstatesports.com/sports/mens-swimming-diving/schedule", rosterURL: "https://ballstatesports.com/sports/mens-swimming-diving/roster"),
        Sport(id: 15, name: "Women's Swimming & Diving", twitterHandle: "@BallStateWSwim", twitterURL: "https://twitter.com/BallStateWSwim", scheduleURL: "https://ballstatesports.com/sports/womens-swimming-diving/schedule", rosterURL: "https://ballstatesports.com/sports/womens-swimming-diving/roster"),
        Sport(id: 16, name: "Men's Tennis", twitterHandle: "@BallStateMTNS", twitterURL: "https://twitter.com/BallStateMTNS", scheduleURL: "https://ballstatesports.com/sports/mens-tennis/schedule", rosterURL: "https://ballstatesports.com/sports/mens-tennis/roster"),
        Sport(id: 17, name: "Women's Tennis", twitterHandle: "@BallStateWTNS", twitterURL: "https://twitter.com/BallStateWTNS", scheduleURL: "https://ballstatesports.com/sports/womens-tennis/schedule", rosterURL: "https://ballstatesports.com/sports/womens-tennis/roster"),
        Sport(id: 18, name: "Men's Track & Field", twitterHandle: "@BallStateTFXC", twitterURL: "https://twitter.com/BallStateTFXC", scheduleURL: "https://ballstatesports.com/sports/mens-track-field/schedule", rosterURL: "https://ballstatesports.com/sports/mens-track-field/roster"),
        Sport(id: 19, name: "Women's Track & Field", twitterHandle: "@BallStateTFXC", twitterURL: "https://twitter.com/BallStateTFXC", scheduleURL: "https://ballstatesports.com/sports/womens-track-field/schedule", rosterURL: "https://ballstatesports.com/sports/womens-track-field/roster"),
        Sport(id: 20, name: "Women's Volleyball", twitterHandle: "@BallStateWVB", twitterURL: "https://twitter.com/BallStateWVB", scheduleURL: "https://ballstatesports.com/sports/womens-volleyball/schedule", rosterURL: "https://ballstatesports.com/sports/womens-volleyball/roster")
        ]),
    
    Team(id: 3, name: "Bowling Green Falcons", school: "Bowling Green", mascot: "Falcons", logo: "Bowling_Green", website: "https://bgsufalcons.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@BGSU_Baseball", twitterURL: "https://twitter.com/BGSU_Baseball", scheduleURL: "https://bgsufalcons.com/sports/baseball/schedule", rosterURL: "https://bgsufalcons.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@BGSUMBB", twitterURL: "https://twitter.com/BGSUMBB", scheduleURL: "https://bgsufalcons.com/sports/mens-basketball/schedule", rosterURL: "https://bgsufalcons.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@BGSUwbb", twitterURL: "https://twitter.com/BGSUwbb", scheduleURL: "https://bgsufalcons.com/sports/womens-basketball/schedule", rosterURL: "https://bgsufalcons.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@BG_XCTrack", twitterURL: "https://twitter.com/BG_XCTrack", scheduleURL: "https://bgsufalcons.com/sports/mens-cross-country/schedule", rosterURL: "https://bgsufalcons.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@BG_XCTrack", twitterURL: "https://twitter.com/BG_XCTrack", scheduleURL: "https://bgsufalcons.com/sports/womens-cross-country/schedule", rosterURL: "https://bgsufalcons.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Football", twitterHandle: "@BG_Football", twitterURL: "https://twitter.com/BG_Football", scheduleURL: "https://bgsufalcons.com/sports/football/schedule", rosterURL: "https://bgsufalcons.com/sports/football/roster"),
        Sport(id: 7, name: "Men's Golf", twitterHandle: "@BGMensGolf", twitterURL: "https://twitter.com/BGMensGolf", scheduleURL: "https://bgsufalcons.com/sports/mens-golf/schedule", rosterURL: "https://bgsufalcons.com/sports/mens-golf/roster"),
        Sport(id: 8, name: "Women's Golf", twitterHandle: "@BGWomensgolf", twitterURL: "https://twitter.com/BGSUwomensgolf", scheduleURL: "https://bgsufalcons.com/sports/womens-golf/schedule", rosterURL: "https://bgsufalcons.com/sports/womens-golf/roster"),
            Sport(id: 9, name: "Gymnastics", twitterHandle: "@bgsuwgym", twitterURL: "https://twitter.com/bgsuwgym", scheduleURL: "https://bgsufalcons.com/sports/gymnastics/schedule", rosterURL: "https://bgsufalcons.com/sports/gymnastics/roster"),
            Sport(id: 10, name: "Men's Ice Hockey", twitterHandle: "@BGFalconHockey", twitterURL: "https://twitter.com/BGFalconHockey", scheduleURL: "https://bgsufalcons.com/sports/mens-ice-hockey/schedule", rosterURL: "https://bgsufalcons.com/sports/mens-ice-hockey/roster"),
            Sport(id: 11, name: "Men's Soccer", twitterHandle: "@BGSUmenssoccer", twitterURL: "https://twitter.com/BGSUmenssoccer", scheduleURL: "https://bgsufalcons.com/sports/mens-soccer/schedule", rosterURL: "https://bgsufalcons.com/sports/mens-soccer/roster"),
            Sport(id: 12, name: "Women's Soccer", twitterHandle: "@bgsuwsoc", twitterURL: "https://twitter.com/bgsuwsoc", scheduleURL: "https://bgsufalcons.com/sports/womens-soccer/schedule", rosterURL: "https://bgsufalcons.com/sports/womens-soccer/roster"),
            Sport(id: 13, name: "Softball", twitterHandle: "@BGSUSoftball", twitterURL: "https://twitter.com/BGSUSoftball", scheduleURL: "https://bgsufalcons.com/sports/softball/schedule", rosterURL: "https://bgsufalcons.com/sports/softball/roster"),
            Sport(id: 14, name: "Men's Swimming & Diving", twitterHandle: "@FalconSwimDive", twitterURL: "https://twitter.com/FalconSwimDive", scheduleURL: "https://bgsufalcons.com/sports/mens-swimming-diving/schedule", rosterURL: "https://bgsufalcons.com/sports/mens-swimming-diving/roster"),
            Sport(id: 15, name: "Women's Swimming & Diving", twitterHandle: "@FalconSwimDive", twitterURL: "https://twitter.com/FalconSwimDive", scheduleURL: "https://bgsufalcons.com/sports/womens-swimming-diving/schedule", rosterURL: "https://bgsufalcons.com/sports/womens-swimming-diving/roster"),
            Sport(id: 17, name: "Women's Tennis", twitterHandle: "@BGSUTennis", twitterURL: "https://twitter.com/BGSUwtennis", scheduleURL: "https://bgsufalcons.com/sports/womens-tennis/schedule", rosterURL: "https://bgsufalcons.com/sports/womens-tennis/roster"),
            Sport(id: 18, name: "Men's Track & Field", twitterHandle: "@BG_XCTrack", twitterURL: "https://twitter.com/BG_XCTrack", scheduleURL: "https://bgsufalcons.com/sports/mens-track-field/schedule", rosterURL: "https://bgsufalcons.com/sports/mens-track-field/roster"),
            Sport(id: 19, name: "Women's Track & Field", twitterHandle: "@BG_XCTrack", twitterURL: "https://twitter.com/BG_XCTrack", scheduleURL: "https://bgsufalcons.com/sports/womens-track-field/schedule", rosterURL: "https://bgsufalcons.com/sports/womens-track-field/roster"),
            Sport(id: 20, name: "Women's Volleyball", twitterHandle: "@BGSUVolleyball", twitterURL: "https://twitter.com/BGSUVolleyball", scheduleURL: "https://bgsufalcons.com/sports/womens-volleyball/schedule", rosterURL: "https://bgsufalcons.com/sports/womens-volleyball/roster")
    ]),
    Team(id: 4, name: "Buffalo Bulls", school: "Buffalo", mascot: "Bulls", logo: "Buffalo", website: "https://ubbulls.com", sports: [
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@UBmenshoops", twitterURL: "https://twitter.com/UBmenshoops", scheduleURL: "https://ubbulls.com/sports/mens-basketball/schedule", rosterURL: "https://ubbulls.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@UBwomenshoops", twitterURL: "https://twitter.com/UBwomenshoops", scheduleURL: "https://ubbulls.com/sports/womens-basketball/schedule", rosterURL: "https://ubbulls.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@UB_XCTF", twitterURL: "https://twitter.com/UB_XCTF", scheduleURL: "https://ubbulls.com/sports/mens-cross-country/schedule", rosterURL: "https://ubbulls.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@UB_XCTF", twitterURL: "https://twitter.com/UB_XCTF", scheduleURL: "https://ubbulls.com/sports/womens-cross-country/schedule", rosterURL: "https://ubbulls.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Football", twitterHandle: "@UBFootball", twitterURL: "https://twitter.com/UBFootball", scheduleURL: "https://ubbulls.com/sports/football/schedule", rosterURL: "https://ubbulls.com/sports/football/roster"),
        Sport(id: 7, name: "Women's Rowing", twitterHandle: "@UBWomensRowing", twitterURL: "https://twitter.com/UBWomensRowing", scheduleURL: "https://ubbulls.com/sports/womens-rowing/schedule", rosterURL: "https://ubbulls.com/sports/womens-rowing/roster"),
        Sport(id: 9, name: "Women's Soccer", twitterHandle: "@UBWomensSoccer", twitterURL: "https://twitter.com/UBWomensSoccer", scheduleURL: "https://ubbulls.com/sports/womens-soccer/schedule", rosterURL: "https://ubbulls.com/sports/womens-soccer/roster"),
        Sport(id: 10, name: "Softball", twitterHandle: "@UBBullssoftball", twitterURL: "https://twitter.com/UBBullssoftball", scheduleURL: "https://ubbulls.com/sports/softball/schedule", rosterURL: "https://ubbulls.com/sports/softball/roster"),
        Sport(id: 11, name: "Men's Swimming & Diving", twitterHandle: "@UBSwimDive", twitterURL: "https://twitter.com/UBSwimDive", scheduleURL: "https://ubbulls.com/sports/mens-swimming-and-diving/schedule", rosterURL: "https://ubbulls.com/sports/mens-swimming-and-diving/roster"),
        Sport(id: 12, name: "Women's Swimming & Diving", twitterHandle: "@UBSwimDive", twitterURL: "https://twitter.com/UBSwimDive", scheduleURL: "https://ubbulls.com/sports/womens-swimming-and-diving/schedule", rosterURL: "https://ubbulls.com/sports/womens-swimming-and-diving/roster"),
        Sport(id: 13, name: "Men's Tennis", twitterHandle: "@UBmenstennis", twitterURL: "https://twitter.com/UBmenstennis", scheduleURL: "https://ubbulls.com/sports/mens-tennis/schedule", rosterURL: "https://ubbulls.com/sports/mens-tennis/roster"),
        Sport(id: 14, name: "Women's Tennis", twitterHandle: "@ubwomentennis", twitterURL: "https://twitter.com/ubwomentennis", scheduleURL: "https://ubbulls.com/sports/womens-tennis/schedule", rosterURL: "https://ubbulls.com/sports/womens-tennis/roster"),
        Sport(id: 15, name: "Men's Track & Field", twitterHandle: "@UB_XCTF", twitterURL: "https://twitter.com/UB_XCTF", scheduleURL: "https://ubbulls.com/sports/mens-track-and-field/schedule", rosterURL: "https://ubbulls.com/sports/mens-track-and-field/roster"),
        Sport(id: 16, name: "Women's Track & Field", twitterHandle: "@UB_XCTF", twitterURL: "https://twitter.com/UB_XCTF", scheduleURL: "https://ubbulls.com/sports/womens-track-and-field/schedule", rosterURL: "https://ubbulls.com/sports/womens-track-and-field/roster"),
        Sport(id: 17, name: "Women's Volleyball", twitterHandle: "@ubvolleyball", twitterURL: "https://twitter.com/ubvolleyball", scheduleURL: "https://ubbulls.com/sports/womens-volleyball/schedule", rosterURL: "https://ubbulls.com/sports/womens-volleyball/roster")
    ]),
    Team(id: 5, name: "Central Michigan Chippewas", school: "Central Michigan", mascot: "Chippewas", logo: "Central_Michigan", website: "https://cmuchippewas.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@CMUBaseball", twitterURL: "https://twitter.com/CMUBaseball", scheduleURL: "https://cmuchippewas.com/sports/baseball/schedule", rosterURL: "https://cmuchippewas.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@CMUMensBBall", twitterURL: "https://twitter.com/CMUMensBBall", scheduleURL: "https://cmuchippewas.com/sports/mens-basketball/schedule", rosterURL: "https://cmuchippewas.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@CMUWBBall", twitterURL: "https://twitter.com/CMUWBBall", scheduleURL: "https://cmuchippewas.com/sports/womens-basketball/schedule", rosterURL: "https://cmuchippewas.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@CMUTrack", twitterURL: "https://twitter.com/CMUTrack", scheduleURL: "https://cmuchippewas.com/sports/mens-cross-country/schedule", rosterURL: "https://cmuchippewas.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@CMUTrack", twitterURL: "https://twitter.com/CMUTrack", scheduleURL: "https://cmuchippewas.com/sports/womens-cross-country/schedule", rosterURL: "https://cmuchippewas.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Football", twitterHandle: "@CMU_Football", twitterURL: "https://twitter.com/CMU_Football", scheduleURL: "https://cmuchippewas.com/sports/football/schedule", rosterURL: "https://cmuchippewas.com/sports/football/roster"),
        Sport(id: 7, name: "Men's Golf", twitterHandle: "@CMUMensGolf", twitterURL: "https://twitter.com/CMUMensGolf", scheduleURL: "https://cmuchippewas.com/sports/mens-golf/schedule", rosterURL: "https://cmuchippewas.com/sports/mens-golf/roster"),
        Sport(id: 8, name: "Women's Golf", twitterHandle: "@CMUWGolf", twitterURL: "https://twitter.com/CMUWGolf", scheduleURL: "https://cmuchippewas.com/sports/womens-golf/schedule", rosterURL: "https://cmuchippewas.com/sports/womens-golf/roster"),
        Sport(id: 8, name: "Gymnastics", twitterHandle: "@CMUGymnastics", twitterURL: "https://twitter.com/CMUGymnastics", scheduleURL: "https://cmuchippewas.com/sports/womens-gymnastics/schedule", rosterURL: "https://cmuchippewas.com/sports/womens-gymnastics/roster"),
              Sport(id: 10, name: "Men's Track & Field", twitterHandle: "@CMUTrack", twitterURL: "https://twitter.com/CMUTrack", scheduleURL: "https://cmuchippewas.com/sports/mens-track-and-field/schedule", rosterURL: "https://cmuchippewas.com/sports/mens-track-and-field/roster"),
              Sport(id: 11, name: "Women's Track & Field", twitterHandle: "@CMUTrack", twitterURL: "https://twitter.com/CMUTrack", scheduleURL: "https://cmuchippewas.com/sports/womens-track-and-field/schedule", rosterURL: "https://cmuchippewas.com/sports/womens-track-and-field/roster"),
              Sport(id: 12, name: "Softball", twitterHandle: "@CMUSoftball", twitterURL: "https://twitter.com/CMUSoftball", scheduleURL: "https://cmuchippewas.com/sports/softball/schedule", rosterURL: "https://cmuchippewas.com/sports/softball/roster"),
              Sport(id: 13, name: "Women's Soccer", twitterHandle: "@CMU_W_Soccer", twitterURL: "https://twitter.com/CMU_W_Soccer", scheduleURL: "https://cmuchippewas.com/sports/womens-soccer/schedule", rosterURL: "https://cmuchippewas.com/sports/womens-soccer/roster"),
              Sport(id: 14, name: "Women's Tennis", twitterHandle: "@CMUWomensTennis", twitterURL: "https://twitter.com/CMUWomensTennis", scheduleURL: "https://cmuchippewas.com/sports/womens-tennis/schedule", rosterURL: "https://cmuchippewas.com/sports/womens-tennis/roster"),
              Sport(id: 15, name: "Volleyball", twitterHandle: "@CMUVolleyball", twitterURL: "https://twitter.com/CMUVolleyball", scheduleURL: "https://cmuchippewas.com/sports/womens-volleyball/schedule", rosterURL: "https://cmuchippewas.com/sports/womens-volleyball/roster")
        ]),

    Team(id: 6, name: "Eastern Michigan Eagles", school: "Eastern Michigan", mascot: "Eagles", logo: "Eastern_Michigan", website: "https://emueagles.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@EMU_Baseball", twitterURL: "https://twitter.com/EMU_Baseball", scheduleURL: "https://emueagles.com/sports/baseball/schedule", rosterURL: "https://emueagles.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@EMUHoops", twitterURL: "https://twitter.com/EMUHoops", scheduleURL: "https://emueagles.com/sports/mens-basketball/schedule", rosterURL: "https://emueagles.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@EMUWBB", twitterURL: "https://twitter.com/EMUWBB", scheduleURL: "https://emueagles.com/sports/womens-basketball/schedule", rosterURL: "https://emueagles.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@EMU_XC_TF", twitterURL: "https://twitter.com/EMU_XC_TF", scheduleURL: "https://emueagles.com/sports/mens-cross-country/schedule", rosterURL: "https://emueagles.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@EMU_XC_TF", twitterURL: "https://twitter.com/EMU_XC_TF", scheduleURL: "https://emueagles.com/sports/womens-cross-country/schedule", rosterURL: "https://emueagles.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Football", twitterHandle: "@EMUFB", twitterURL: "https://twitter.com/EMUFB", scheduleURL: "https://emueagles.com/sports/football/schedule", rosterURL: "https://emueagles.com/sports/football/roster"),
        Sport(id: 7, name: "Men's Golf", twitterHandle: "@EMUGolf", twitterURL: "https://twitter.com/EMUGolf", scheduleURL: "https://emueagles.com/sports/mens-golf/schedule", rosterURL: "https://emueagles.com/sports/mens-golf/roster"),
        Sport(id: 8, name: "Women's Golf", twitterHandle: "@EMUWomensGolf", twitterURL: "https://twitter.com/EMUWomensGolf", scheduleURL: "https://emueagles.com/sports/womens-golf/schedule", rosterURL: "https://emueagles.com/sports/womens-golf/roster"),
        Sport(id: 9, name: "Gymnastics", twitterHandle: "@EMUGym", twitterURL: "https://twitter.com/EMUGym", scheduleURL: "https://emueagles.com/sports/gymnastics/schedule", rosterURL: "https://emueagles.com/sports/gymnastics/roster"),
        Sport(id: 11, name: "Women's Soccer", twitterHandle: "@EMUWomensSoccer", twitterURL: "https://twitter.com/EMUWomensSoccer", scheduleURL: "https://emueagles.com/sports/womens-soccer/schedule", rosterURL: "https://emueagles.com/sports/womens-soccer/roster"),
        Sport(id: 12, name: "Softball", twitterHandle: "@EMUSoftball", twitterURL: "https://twitter.com/EMUSoftball", scheduleURL: "https://emueagles.com/sports/softball/schedule", rosterURL: "https://emueagles.com/sports/softball/roster"),
        Sport(id: 13, name: "Men's Swimming & Diving", twitterHandle: "@EMUSwimDive", twitterURL: "https://twitter.com/EMUSwimDive", scheduleURL: "https://emueagles.com/sports/mens-swimming-diving/schedule", rosterURL: "https://emueagles.com/sports/mens-swimming-diving/roster"),
        Sport(id: 14, name: "Women's Swimming & Diving", twitterHandle: "@EMUSwimDive", twitterURL: "https://twitter.com/EMUSwimDive", scheduleURL: "https://emueagles.com/sports/womens-swimming-diving/schedule", rosterURL: "https://emueagles.com/sports/womens-swimming-diving/roster"),
        Sport(id: 15, name: "Men's Tennis", twitterHandle: "@EMU_MTennis", twitterURL: "https://twitter.com/EMU_MTennis", scheduleURL: "https://emueagles.com/sports/mens-tennis/schedule", rosterURL: "https://emueagles.com/sports/mens-tennis/roster"),
        Sport(id: 16, name: "Women's Tennis", twitterHandle: "@EMUWTennis", twitterURL: "https://twitter.com/EMUWTennis", scheduleURL: "https://emueagles.com/sports/womens-tennis/schedule", rosterURL: "https://emueagles.com/sports/womens-tennis/roster"),
        Sport(id: 17, name: "Men's Track & Field", twitterHandle: "@EMU_XC_TF", twitterURL: "https://twitter.com/EMU_XC_TF", scheduleURL: "https://emueagles.com/sports/mens-track-and-field/schedule", rosterURL: "https://emueagles.com/sports/mens-track-and-field/roster"),
        Sport(id: 18, name: "Women's Track & Field", twitterHandle: "@EMU_XC_TF", twitterURL: "https://twitter.com/EMU_XC_TF", scheduleURL: "https://emueagles.com/sports/womens-track-and-field/schedule", rosterURL: "https://emueagles.com/sports/womens-track-and-field/roster"),
        Sport(id: 19, name: "Women's Volleyball", twitterHandle: "@EMUVolleyball", twitterURL: "https://twitter.com/EMUVolleyball", scheduleURL: "https://emueagles.com/sports/womens-volleyball/schedule", rosterURL: "https://emueagles.com/sports/womens-volleyball/roster")
        ]),
    
    Team(id: 7, name: "Kent State Golden Flashes", school: "Kent State", mascot: "Golden Flashes", logo: "Kent_State", website: "https://kentstatesports.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@KentStBaseball", twitterURL: "https://twitter.com/KentStBaseball", scheduleURL: "https://kentstatesports.com/sports/baseball/schedule", rosterURL: "https://kentstatesports.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@KentStMBB", twitterURL: "https://twitter.com/KentStMBB", scheduleURL: "https://kentstatesports.com/sports/mens-basketball/schedule", rosterURL: "https://kentstatesports.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@KentStWBB", twitterURL: "https://twitter.com/KentStWBB", scheduleURL: "https://kentstatesports.com/sports/womens-basketball/schedule", rosterURL: "https://kentstatesports.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@KentStTrackXC", twitterURL: "https://twitter.com/KentStTrackXC", scheduleURL: "https://kentstatesports.com/sports/mens-cross-country/schedule", rosterURL: "https://kentstatesports.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@KentStTrackXC", twitterURL: "https://twitter.com/KentStTrackXC", scheduleURL: "https://kentstatesports.com/sports/womens-cross-country/schedule", rosterURL: "https://kentstatesports.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Field Hockey", twitterHandle: "@KentStFH", twitterURL: "https://twitter.com/KentStFH", scheduleURL: "https://kentstatesports.com/sports/field-hockey/schedule", rosterURL: "https://kentstatesports.com/sports/field-hockey/roster"),
        Sport(id: 7, name: "Football", twitterHandle: "@KentStFootball", twitterURL: "https://twitter.com/KentStFootball", scheduleURL: "https://kentstatesports.com/sports/football/schedule", rosterURL: "https://kentstatesports.com/sports/football/roster"),
        Sport(id: 8, name: "Men's Golf", twitterHandle: "@KentStGolf", twitterURL: "https://twitter.com/KentStGolf", scheduleURL: "https://kentstatesports.com/sports/mens-golf/schedule", rosterURL: "https://kentstatesports.com/sports/mens-golf/roster"),
        Sport(id: 9, name: "Women's Golf", twitterHandle: "@KentStWGolf", twitterURL: "https://twitter.com/KentStWGolf", scheduleURL: "https://kentstatesports.com/sports/womens-golf/schedule", rosterURL: "https://kentstatesports.com/sports/womens-golf/roster"),
        Sport(id: 10, name: "Gymnastics", twitterHandle: "@KentStGym", twitterURL: "https://twitter.com/KentStGym", scheduleURL: "https://kentstatesports.com/sports/gymnastics/schedule", rosterURL: "https://kentstatesports.com/sports/gymnastics/roster"),
        Sport(id: 11, name: "Softball", twitterHandle: "@KentStSoftball", twitterURL: "https://twitter.com/KentStSoftball", scheduleURL: "https://kentstatesports.com/sports/softball/schedule", rosterURL: "https://kentstatesports.com/sports/softball/roster"),
        Sport(id: 12, name: "Women's Soccer", twitterHandle: "@KentStSoccer", twitterURL: "https://twitter.com/KentStSoccer", scheduleURL: "https://kentstatesports.com/sports/womens-soccer/schedule", rosterURL: "https://kentstatesports.com/sports/womens-soccer/roster"),
        Sport(id: 13, name: "Men's Track & Field", twitterHandle: "@KentStTrackXC", twitterURL: "https://twitter.com/KentStTrackXC", scheduleURL: "https://kentstatesports.com/sports/mens-track-and-field/schedule", rosterURL: "https://kentstatesports.com/sports/mens-track-and-field/roster"),
        Sport(id: 14, name: "Women's Track & Field", twitterHandle: "@KentStTrackXC", twitterURL: "https://twitter.com/KentStTrackXC", scheduleURL: "https://kentstatesports.com/sports/womens-track-and-field/schedule", rosterURL: "https://kentstatesports.com/sports/womens-track-and-field/roster"),
        Sport(id: 15, name: "Volleyball", twitterHandle: "@KentStVball", twitterURL: "https://twitter.com/KentStVball", scheduleURL: "https://kentstatesports.com/sports/volleyball/schedule", rosterURL: "https://kentstatesports.com/sports/volleyball/roster"),
        Sport(id: 16, name: "Wrestling", twitterHandle: "@KentStWrestling", twitterURL: "https://twitter.com/KentStWrestling", scheduleURL: "https://kentstatesports.com/sports/wrestling/schedule", rosterURL: "https://kentstatesports.com/sports/wrestling/roster")
    ]),
    
    Team(id: 8, name: "Miami RedHawks", school: "Miami", mascot: "RedHawks", logo: "Miami_OH", website: "https://miamiredhawks.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@MiamiOHBaseball", twitterURL: "https://twitter.com/MiamiOHBaseball", scheduleURL: "https://miamiredhawks.com/sports/baseball/schedule", rosterURL: "https://miamiredhawks.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@MiamiOH_BBall", twitterURL: "https://twitter.com/MiamiOH_BBall", scheduleURL: "https://miamiredhawks.com/sports/mens-basketball/schedule", rosterURL: "https://miamiredhawks.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@MiamiOH_WBB", twitterURL: "https://twitter.com/MiamiOH_WBB", scheduleURL: "https://miamiredhawks.com/sports/womens-basketball/schedule", rosterURL: "https://miamiredhawks.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@MiamiOH_XCTF", twitterURL: "https://twitter.com/MiamiOH_XCTF", scheduleURL: "https://miamiredhawks.com/sports/mens-cross-country/schedule", rosterURL: "https://miamiredhawks.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@MiamiOH_XCTF", twitterURL: "https://twitter.com/MiamiOH_XCTF", scheduleURL: "https://miamiredhawks.com/sports/womens-cross-country/schedule", rosterURL: "https://miamiredhawks.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Football", twitterHandle: "@MiamiOHFootball", twitterURL: "https://twitter.com/MiamiOHFootball", scheduleURL: "https://miamiredhawks.com/sports/football/schedule", rosterURL: "https://miamiredhawks.com/sports/football/roster"),
        Sport(id: 7, name: "Men's Golf", twitterHandle: "@MiamiOH_Golf", twitterURL: "https://twitter.com/MiamiOH_Golf", scheduleURL: "https://miamiredhawks.com/sports/mens-golf/schedule", rosterURL: "https://miamiredhawks.com/sports/mens-golf/roster"),
        Sport(id: 8, name: "Women's Golf", twitterHandle: "@MiamiOH_WGolf", twitterURL: "https://twitter.com/MiamiOH_WGolf", scheduleURL: "https://miamiredhawks.com/sports/womens-golf/schedule", rosterURL: "https://miamiredhawks.com/sports/womens-golf/roster"),
        Sport(id: 9, name: "Field Hockey", twitterHandle: "@MiamiOH_FH", twitterURL: "https://twitter.com/MiamiOH_FH", scheduleURL: "https://miamiredhawks.com/sports/field-hockey/schedule", rosterURL: "https://miamiredhawks.com/sports/field-hockey/roster"),
        Sport(id: 10, name: "Women's Soccer", twitterHandle: "@MiamiOH_Soccer", twitterURL: "https://twitter.com/MiamiOH_Soccer", scheduleURL: "https://miamiredhawks.com/sports/womens-soccer/schedule", rosterURL: "https://miamiredhawks.com/sports/womens-soccer/roster"),
        Sport(id: 11, name: "Softball", twitterHandle: "@MiamiOH_SB", twitterURL: "https://twitter.com/MiamiOH_SB", scheduleURL: "https://miamiredhawks.com/sports/softball/schedule", rosterURL: "https://miamiredhawks.com/sports/softball/roster"),
        Sport(id: 12, name: "Men's Swimming & Diving", twitterHandle: "@MiamiOHSwimDive", twitterURL: "https://twitter.com/MiamiOHSwimDive", scheduleURL: "https://miamiredhawks.com/sports/mens-swimming-and-diving/schedule", rosterURL: "https://miamiredhawks.com/sports/mens-swimming-and-diving/roster"),
        Sport(id: 13, name: "Women's Swimming & Diving", twitterHandle: "@MiamiOHSwimDive", twitterURL: "https://twitter.com/MiamiOHSwimDive", scheduleURL: "https://miamiredhawks.com/sports/womens-swimming-and-diving/schedule", rosterURL: "https://miamiredhawks.com/sports/womens-swimming-and-diving/roster"),
        Sport(id: 14, name: "Men's Tennis", twitterHandle: "@MiamiOH_Tennis", twitterURL: "https://twitter.com/MiamiOH_Tennis", scheduleURL: "https://miamiredhawks.com/sports/mens-tennis/schedule", rosterURL: "https://miamiredhawks.com/sports/mens-tennis/roster"),
        Sport(id: 15, name: "Women's Tennis", twitterHandle: "@MiamiOH_WTennis", twitterURL: "https://twitter.com/MiamiOH_WTennis", scheduleURL: "https://miamiredhawks.com/sports/womens-tennis/schedule", rosterURL: "https://miamiredhawks.com/sports/womens-tennis/roster"),
        Sport(id: 16, name: "Men's Track & Field", twitterHandle: "@MiamiOH_XCTF", twitterURL: "https://twitter.com/MiamiOH_XCTF", scheduleURL: "https://miamiredhawks.com/sports/mens-track-and-field/schedule", rosterURL: "https://miamiredhawks.com/sports/mens-track-and-field/roster"),
        Sport(id: 17, name: "Women's Track & Field", twitterHandle: "@MiamiOH_XCTF", twitterURL: "https://twitter.com/MiamiOH_XCTF", scheduleURL: "https://miamiredhawks.com/sports/womens-track-and-field/schedule", rosterURL: "https://miamiredhawks.com/sports/womens-track-and-field/roster"),
        Sport(id: 18, name: "Volleyball", twitterHandle: "@MiamiOH_VBall", twitterURL: "https://twitter.com/MiamiOH_VBall", scheduleURL: "https://miamiredhawks.com/sports/volleyball/schedule", rosterURL: "https://miamiredhawks.com/sports/volleyball/roster"),
    ]),
    
    Team(id: 9, name: "Northern Illinois Huskies", school: "Northern Illinois", mascot: "Huskies", logo: "Northern_Illinois", website: "https://niuhuskies.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@NIU_Baseball", twitterURL: "https://twitter.com/NIU_Baseball", scheduleURL: "https://niuhuskies.com/sports/baseball/schedule", rosterURL: "https://niuhuskies.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@GoHuskiesMBB", twitterURL: "https://twitter.com/GoHuskiesMBB", scheduleURL: "https://niuhuskies.com/sports/mens-basketball/schedule", rosterURL: "https://niuhuskies.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@GoHuskiesWBB", twitterURL: "https://twitter.com/GoHuskiesWBB", scheduleURL: "https://niuhuskies.com/sports/womens-basketball/schedule", rosterURL: "https://niuhuskies.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@NIUXCTrack", twitterURL: "https://twitter.com/NIUXCTrack", scheduleURL: "https://niuhuskies.com/sports/mens-cross-country/schedule", rosterURL: "https://niuhuskies.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@NIUXCTrack", twitterURL: "https://twitter.com/NIUXCTrack", scheduleURL: "https://niuhuskies.com/sports/womens-cross-country/schedule", rosterURL: "https://niuhuskies.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Football", twitterHandle: "@NIU_Football", twitterURL: "https://twitter.com/NIU_Football", scheduleURL: "https://niuhuskies.com/sports/football/schedule", rosterURL: "https://niuhuskies.com/sports/football/roster"),
        Sport(id: 7, name: "Men's Golf", twitterHandle: "@NIU_Mgolf", twitterURL: "https://twitter.com/NIU_Mgolf", scheduleURL: "https://niuhuskies.com/sports/mens-golf/schedule", rosterURL: "https://niuhuskies.com/sports/mens-golf/roster"),
        Sport(id: 8, name: "Women's Golf", twitterHandle: "@NIU_Wgolf", twitterURL: "https://twitter.com/NIU_Wgolf", scheduleURL: "https://niuhuskies.com/sports/womens-golf/schedule", rosterURL: "https://niuhuskies.com/sports/womens-golf/roster"),
        Sport(id: 9, name: "Gymnastics", twitterHandle: "@Niugymnastics", twitterURL: "https://twitter.com/Niugymnastics", scheduleURL: "https://niuhuskies.com/sports/gymnastics/schedule", rosterURL: "https://niuhuskies.com/sports/gymnastics/roster"),
        Sport(id: 10, name: "Men's Soccer", twitterHandle: "@NIUMSoccer", twitterURL: "https://twitter.com/NIUMSoccer", scheduleURL: "https://niuhuskies.com/sports/mens-soccer/schedule", rosterURL: "https://niuhuskies.com/sports/mens-soccer/roster"),
        Sport(id: 11, name: "Women's Soccer", twitterHandle: "@NIUWomensSoccer", twitterURL: "https://twitter.com/NIUWomensSoccer", scheduleURL: "https://niuhuskies.com/sports/womens-soccer/schedule", rosterURL: "https://niuhuskies.com/sports/womens-soccer/roster"),
        Sport(id: 12, name: "Softball", twitterHandle: "@NIUSoftball", twitterURL: "https://twitter.com/NIUSoftball", scheduleURL: "https://niuhuskies.com/sports/softball/schedule", rosterURL: "https://niuhuskies.com/sports/softball/roster"),
        Sport(id: 13, name: "Men's Tennis", twitterHandle: "@NIUMensTennis", twitterURL: "https://twitter.com/NIUMensTennis", scheduleURL: "https://niuhuskies.com/sports/mens-tennis/schedule", rosterURL: "https://niuhuskies.com/sports/mens-tennis/roster"),
        Sport(id: 14, name: "Women's Tennis", twitterHandle: "@NIUWomensTennis", twitterURL: "https://twitter.com/NIUWomensTennis", scheduleURL: "https://niuhuskies.com/sports/womens-tennis/schedule", rosterURL: "https://niuhuskies.com/sports/womens-tennis/roster"),
        Sport(id: 15, name: "Men's Track & Field", twitterHandle: "@NIUXCTrack", twitterURL: "https://twitter.com/NIUXCTrack", scheduleURL: "https://niuhuskies.com/sports/mens-track-and-field/schedule", rosterURL: "https://niuhuskies.com/sports/mens-track-and-field/roster"),
        Sport(id: 16, name: "Women's Track & Field", twitterHandle: "@NIUXCTrack", twitterURL: "https://twitter.com/NIUXCTrack", scheduleURL: "https://niuhuskies.com/sports/womens-track-and-field/schedule", rosterURL: "https://niuhuskies.com/sports/womens-track-and-field/roster"),
        Sport(id: 17, name: "Women's Volleyball", twitterHandle: "@NIUVOLLEYBALL", twitterURL: "https://twitter.com/NIUVOLLEYBALL", scheduleURL: "https://niuhuskies.com/sports/womens-volleyball/schedule", rosterURL: "https://niuhuskies.com/sports/womens-volleyball/roster")
    ]),
    
    Team(id: 10, name: "Ohio Bobcats", school: "Ohio", mascot: "Bobcats", logo: "Ohio", website: "https://ohiobobcats.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@Ohio_Baseball", twitterURL: "https://twitter.com/Ohio_Baseball", scheduleURL: "https://ohiobobcats.com/sports/baseball/schedule", rosterURL: "https://ohiobobcats.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@OhioMBasketball", twitterURL: "https://twitter.com/OhioMBasketball", scheduleURL: "https://ohiobobcats.com/sports/mens-basketball/schedule", rosterURL: "https://ohiobobcats.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@OhioWBasketball", twitterURL: "https://twitter.com/OhioWBasketball", scheduleURL: "https://ohiobobcats.com/sports/womens-basketball/schedule", rosterURL: "https://ohiobobcats.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@Ohio_T_and_F", twitterURL: "https://twitter.com/Ohio_T_and_F", scheduleURL: "https://ohiobobcats.com/sports/mens-cross-country/schedule", rosterURL: "https://ohiobobcats.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@Ohio_T_and_F", twitterURL: "https://twitter.com/Ohio_T_and_F", scheduleURL: "https://ohiobobcats.com/sports/womens-cross-country/schedule", rosterURL: "https://ohiobobcats.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Field Hockey", twitterHandle: "@OhioFieldHockey", twitterURL: "https://twitter.com/OhioFieldHockey", scheduleURL: "https://ohiobobcats.com/sports/field-hockey/schedule", rosterURL: "https://ohiobobcats.com/sports/field-hockey/roster"),
        Sport(id: 7, name: "Football", twitterHandle: "@OhioFootball", twitterURL: "https://twitter.com/OhioFootball", scheduleURL: "https://ohiobobcats.com/sports/football/schedule", rosterURL: "https://ohiobobcats.com/sports/football/roster"),
        Sport(id: 8, name: "Men's Golf", twitterHandle: "@OhioBobcatMGolf", twitterURL: "https://twitter.com/OhioBobcatMGolf", scheduleURL: "https://ohiobobcats.com/sports/mens-golf/schedule", rosterURL: "https://ohiobobcats.com/sports/mens-golf/roster"),
        Sport(id: 9, name: "Women's Golf", twitterHandle: "@OhioBobcatWGolf", twitterURL: "https://twitter.com/OhioBobcatWGolf", scheduleURL: "https://ohiobobcats.com/sports/womens-golf/schedule", rosterURL: "https://ohiobobcats.com/sports/womens-golf/roster"),
        Sport(id: 10, name: "Soccer", twitterHandle: "@OhioWSoccer", twitterURL: "https://twitter.com/OhioWSoccer", scheduleURL: "https://ohiobobcats.com/sports/womens-soccer/schedule", rosterURL: "https://ohiobobcats.com/sports/womens-soccer/roster"),
        Sport(id: 11, name: "Softball", twitterHandle: "@OhioBobcatSB", twitterURL: "https://twitter.com/OhioBobcatSB", scheduleURL: "https://ohiobobcats.com/sports/softball/schedule", rosterURL: "https://ohiobobcats.com/sports/softball/roster"),
        Sport(id: 12, name: "Men's Swimming & Diving", twitterHandle: "@Ohio_Swim_Dive", twitterURL: "https://twitter.com/Ohio_Swim_Dive", scheduleURL: "https://ohiobobcats.com/sports/mens-swimming-diving/schedule", rosterURL: "https://ohiobobcats.com/sports/mens-swimming-diving/roster"),
        Sport(id: 13, name: "Women's Swimming & Diving", twitterHandle: "@Ohio_Swim_Dive", twitterURL: "https://twitter.com/Ohio_Swim_Dive", scheduleURL: "https://ohiobobcats.com/sports/womens-swimming-diving/schedule", rosterURL: "https://ohiobobcats.com/sports/womens-swimming-diving/roster"),
        Sport(id: 14, name: "Women's Track & Field", twitterHandle: "@Ohio_T_and_F", twitterURL: "https://twitter.com/Ohio_T_and_F", scheduleURL: "https://ohiobobcats.com/sports/womens-track-and-field/schedule", rosterURL: "https://ohiobobcats.com/sports/womens-track-and-field/roster"),
        Sport(id: 15, name: "Volleyball", twitterHandle: "@Ohio_Volleyball", twitterURL: "https://twitter.com/Ohio_Volleyball", scheduleURL: "https://ohiobobcats.com/sports/womens-volleyball/schedule", rosterURL: "https://ohiobobcats.com/sports/womens-volleyball/roster"),
    ]),

    Team(id: 11, name: "Toledo Rockets", school: "Toledo", mascot: "Rockets", logo: "Toledo", website: "https://utrockets.com", sports: [
        Sport(id: 1, name: "Baseball", twitterHandle: "@ToledoBaseball", twitterURL: "https://twitter.com/ToledoBaseball", scheduleURL: "https://utrockets.com/sports/baseball/schedule", rosterURL: "https://utrockets.com/sports/baseball/roster"),
        Sport(id: 2, name: "Men's Basketball", twitterHandle: "@ToledoMBB", twitterURL: "https://twitter.com/ToledoMBB", scheduleURL: "https://utrockets.com/sports/mens-basketball/schedule", rosterURL: "https://utrockets.com/sports/mens-basketball/roster"),
        Sport(id: 3, name: "Women's Basketball", twitterHandle: "@ToledoWBB", twitterURL: "https://twitter.com/ToledoWBB", scheduleURL: "https://utrockets.com/sports/womens-basketball/schedule", rosterURL: "https://utrockets.com/sports/womens-basketball/roster"),
        Sport(id: 4, name: "Men's Cross Country", twitterHandle: "@ToledoXCTF", twitterURL: "https://twitter.com/ToledoXCTF", scheduleURL: "https://utrockets.com/sports/mens-cross-country/schedule", rosterURL: "https://utrockets.com/sports/mens-cross-country/roster"),
        Sport(id: 5, name: "Women's Cross Country", twitterHandle: "@ToledoXCTF", twitterURL: "https://twitter.com/ToledoXCTF", scheduleURL: "https://utrockets.com/sports/womens-cross-country/schedule", rosterURL: "https://utrockets.com/sports/womens-cross-country/roster"),
        Sport(id: 6, name: "Football", twitterHandle: "@ToledoFB", twitterURL: "https://twitter.com/ToledoFB", scheduleURL: "https://utrockets.com/sports/football/schedule", rosterURL: "https://utrockets.com/sports/football/roster"),
        Sport(id: 7, name: "Men's Golf", twitterHandle: "@ToledoMensGolf", twitterURL: "https://twitter.com/ToledoMensGolf", scheduleURL: "https://utrockets.com/sports/mens-golf/schedule", rosterURL: "https://utrockets.com/sports/mens-golf/roster"),
        Sport(id: 8, name: "Women's Golf", twitterHandle: "@ToledoWomensGolf", twitterURL: "https://twitter.com/ToledoWomensGolf", scheduleURL: "https://utrockets.com/sports/womens-golf/schedule", rosterURL: "https://utrockets.com/sports/womens-golf/roster"),
        Sport(id: 9, name: "Women's Soccer", twitterHandle: "@ToledoSoccer", twitterURL: "https://twitter.com/ToledoSoccer", scheduleURL: "https://utrockets.com/sports/womens-soccer/schedule", rosterURL: "https://utrockets.com/sports/womens-soccer/roster"),
        Sport(id: 10, name: "Softball", twitterHandle: "@ToledoSoftball", twitterURL: "https://twitter.com/ToledoSoftball", scheduleURL: "https://utrockets.com/sports/softball/schedule", rosterURL: "https://utrockets.com/sports/softball/roster"),
        Sport(id: 11, name: "Men's Tennis", twitterHandle: "@ToledoMTennis", twitterURL: "https://twitter.com/ToledoMTennis", scheduleURL: "https://utrockets.com/sports/mens-tennis/schedule", rosterURL: "https://utrockets.com/sports/mens-tennis/roster"),
        Sport(id: 12, name: "Women's Tennis", twitterHandle: "@ToledoWTennis", twitterURL: "https://twitter.com/ToledoWTennis", scheduleURL: "https://utrockets.com/sports/womens-tennis/schedule", rosterURL: "https://utrockets.com/sports/womens-tennis/roster"),
        Sport(id: 13, name: "Men's Track & Field", twitterHandle: "@ToledoXCTF", twitterURL: "https://twitter.com/ToledoXCTF", scheduleURL: "https://utrockets.com/sports/mens-track-and-field/schedule", rosterURL: "https://utrockets.com/sports/mens-track-and-field/roster"),
        Sport(id: 14, name: "Women's Track & Field", twitterHandle: "@ToledoXCTF", twitterURL: "https://twitter.com/ToledoXCTF", scheduleURL: "https://utrockets.com/sports/womens-track-and-field/schedule", rosterURL: "https://utrockets.com/sports/womens-track-and-field/roster"),
        Sport(id: 15, name: "Women's Volleyball", twitterHandle: "@Toledo_VB", twitterURL: "https://twitter.com/Toledo_VB", scheduleURL: "https://utrockets.com/sports/womens-volleyball/schedule", rosterURL: "https://utrockets.com/sports/womens-volleyball/roster")
    ]),
    Team(id: 12, name: "Western Michigan Broncos", school: "Western Michigan", mascot: "Broncos", logo: "Western_Michigan", website: "https://wmubroncos.com", sports: [
        Sport(
                id: 1,
                name: "Baseball",
                twitterHandle: "@WMUBaseball",
                twitterURL: "https://twitter.com/WMUBaseball",
                scheduleURL: "https://wmubroncos.com/sports/baseball/schedule",
                rosterURL: "https://wmubroncos.com/sports/baseball/roster"
            ),
        Sport(
                id: 2,
                name: "Men's Basketball",
                twitterHandle: "@WMUMBB",
                twitterURL: "https://twitter.com/WMUMBB",
                scheduleURL: "https://wmubroncos.com/sports/mens-basketball/schedule",
                rosterURL: "https://wmubroncos.com/sports/mens-basketball/roster"
            ),
        Sport(
                id: 3,
                name: "Women's Basketball",
                twitterHandle: "@WMU_WBB",
                twitterURL: "https://twitter.com/WMU_WBB",
                scheduleURL: "https://wmubroncos.com/sports/womens-basketball/schedule",
                rosterURL: "https://wmubroncos.com/sports/womens-basketball/roster"
            ),
        Sport(
                id: 4,
                name: "Men's Cross Country",
                twitterHandle: "@WMU_TFXC",
                twitterURL: "https://twitter.com/WMU_TFXC",
                scheduleURL: "https://wmubroncos.com/sports/mens-cross-country/schedule",
                rosterURL: "https://wmubroncos.com/sports/mens-cross-country/roster"
            ),
        Sport(
                id: 5,
                name: "Women's Cross Country",
                twitterHandle: "@WMU_TFXC",
                twitterURL: "https://twitter.com/WMU_TFXC",
                scheduleURL: "https://wmubroncos.com/sports/womens-cross-country/schedule",
                rosterURL: "https://wmubroncos.com/sports/womens-cross-country/roster"
            ),
        Sport(
                id: 6,
                name: "Football",
                twitterHandle: "@WMU_Football",
                twitterURL: "https://twitter.com/WMU_Football",
                scheduleURL: "https://wmubroncos.com/sports/football/schedule",
                rosterURL: "https://wmubroncos.com/sports/football/roster"
            ),
        Sport(
                id: 7,
                name: "Men's Golf",
                twitterHandle: "@WMUMensGolf",
                twitterURL: "https://twitter.com/WMUMensGolf",
                scheduleURL: "https://wmubroncos.com/sports/mens-golf/schedule",
                rosterURL: "https://wmubroncos.com/sports/mens-golf/roster"
            ),
        Sport(
                        id: 8,
                        name: "Women's Golf",
                        twitterHandle: "@WMUWomensGolf",
                        twitterURL: "https://twitter.com/WMUWomensGolf",
                        scheduleURL: "https://wmubroncos.com/sports/womens-golf/schedule",
                        rosterURL: "https://wmubroncos.com/sports/womens-golf/roster"
                    ),
        Sport(
                        id: 9,
                        name: "Men's Soccer",
                        twitterHandle: "@WMUMensSoccer",
                        twitterURL: "https://twitter.com/WMUMensSoccer",
                        scheduleURL: "https://wmubroncos.com/sports/mens-soccer/schedule",
                        rosterURL: "https://wmubroncos.com/sports/mens-soccer/roster"
                    ),
        Sport(
                        id: 10,
                        name: "Women's Soccer",
                        twitterHandle: "@WMUWomensSoccer",
                        twitterURL: "https://twitter.com/WMUWomensSoccer",
                        scheduleURL: "https://wmubroncos.com/sports/womens-soccer/schedule",
                        rosterURL: "https://wmubroncos.com/sports/womens-soccer/roster"
                    ),
        Sport(
                        id: 11,
                        name: "Softball",
                        twitterHandle: "@WMUSoftball",
                        twitterURL: "https://twitter.com/WMUSoftball",
                        scheduleURL: "https://wmubroncos.com/sports/softball/schedule",
                        rosterURL: "https://wmubroncos.com/sports/softball/roster"
                    ),
        Sport(
                        id: 12,
                        name: "Men's Tennis",
                        twitterHandle: "@WMUMensTennis",
                        twitterURL: "https://twitter.com/WMUMensTennis",
                        scheduleURL: "https://wmubroncos.com/sports/mens-tennis/schedule",
                        rosterURL: "https://wmubroncos.com/sports/mens-tennis/roster"
                    ),
        Sport(
                        id: 13,
                        name: "Women's Tennis",
                        twitterHandle: "@WMUWomensTennis",
                        twitterURL: "https://twitter.com/WMUWomensTennis",
                        scheduleURL: "https://wmubroncos.com/sports/womens-tennis/schedule",
                        rosterURL: "https://wmubroncos.com/sports/womens-tennis/roster"
                    ),

        Sport(
                        id: 14,
                        name: "Men's Track & Field",
                        twitterHandle: "@WMUTrack",
                        twitterURL: "https://twitter.com/WMUTrack",
                        scheduleURL: "https://wmubroncos.com/sports/mens-track-and-field/schedule",
                        rosterURL: "https://wmubroncos.com/sports/mens-track-and-field/roster"
                    ),
        Sport(
                        id: 15,
                        name: "Women's Track & Field",
                        twitterHandle: "@WMUTrack",
                        twitterURL: "https://twitter.com/WMUTrack",
                        scheduleURL: "https://wmubroncos.com/sports/womens-track-and-field/schedule",
                        rosterURL: "https://wmubroncos.com/sports/womens-track-and-field/roster"
                    ),
        Sport(
            id: 16,
            name: "Volleyball",
            twitterHandle: "@WMUVolleyball",
            twitterURL: "https://twitter.com/WMUVolleyball",
            scheduleURL: "https://wmubroncos.com/sports/womens-volleyball/schedule",
            rosterURL: "https://wmubroncos.com/sports/womens-volleyball/roster"
        )
        ]
)]
