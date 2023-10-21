sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/travel/travel/test/integration/FirstJourney',
		'com/travel/travel/test/integration/pages/TravelList',
		'com/travel/travel/test/integration/pages/TravelObjectPage'
    ],
    function(JourneyRunner, opaJourney, TravelList, TravelObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/travel/travel') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTravelList: TravelList,
					onTheTravelObjectPage: TravelObjectPage
                }
            },
            opaJourney.run
        );
    }
);