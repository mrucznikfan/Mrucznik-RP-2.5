//-----------------------------------------------<< Komenda >>-----------------------------------------------//
//--------------------------------------------------[ mole ]-------------------------------------------------//
//----------------------------------------------------*------------------------------------------------------//
//----[                                                                                                 ]----//
//----[         |||||             |||||                       ||||||||||       ||||||||||               ]----//
//----[        ||| |||           ||| |||                      |||     ||||     |||     ||||             ]----//
//----[       |||   |||         |||   |||                     |||       |||    |||       |||            ]----//
//----[       ||     ||         ||     ||                     |||       |||    |||       |||            ]----//
//----[      |||     |||       |||     |||                    |||     ||||     |||     ||||             ]----//
//----[      ||       ||       ||       ||     __________     ||||||||||       ||||||||||               ]----//
//----[     |||       |||     |||       |||                   |||    |||       |||                      ]----//
//----[     ||         ||     ||         ||                   |||     ||       |||                      ]----//
//----[    |||         |||   |||         |||                  |||     |||      |||                      ]----//
//----[    ||           ||   ||           ||                  |||      ||      |||                      ]----//
//----[   |||           ||| |||           |||                 |||      |||     |||                      ]----//
//----[  |||             |||||             |||                |||       |||    |||                      ]----//
//----[                                                                                                 ]----//
//----------------------------------------------------*------------------------------------------------------//

// Opis:
/*
	
*/


// Notatki skryptera:
/*
	
*/

YCMD:mole(playerid, params[], help)
{
	new string[128];
	new sendername[MAX_PLAYER_NAME];

    if(PlayerInfo[playerid][pAdmin] >= 100)
    {
		GetPlayerName(playerid, sendername, sizeof(sendername));
		if(isnull(params))
		{
			sendTipMessage(playerid, "U�yj /mole [mole text]");
			return 1;
		}
		
        format(string, sizeof(string), "CMD_Info: /mole u�yte przez %s [%d] - %s", GetNickEx(playerid), playerid, params);
		SendCommandLogMessage(string);
		Log(adminLog, INFO, "Admin %s u�y� /mole o tre�ci: %s", GetPlayerLogName(playerid), params);
		
		SendSMSMessageToAll(555, params); //mole
	}
	return 1;
}
