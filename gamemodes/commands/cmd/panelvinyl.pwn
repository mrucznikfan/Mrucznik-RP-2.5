//-----------------------------------------------<< Komenda >>-----------------------------------------------//
//----------------------------------------------[ panelvinyl ]----------------------------------------------//
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
	Skrypt pozwalaj�cy zarz�dza� vinyl-clubem
*/


// Notatki skryptera:
/*
	
*/

YCMD:panelvinyl(playerid, params[], help)
{
	if(IsPlayerConnected(playerid))
	{
        if(GetPlayerFraction(playerid) == FRAC_SN && PlayerInfo[playerid][pRank] >= 6)
        {
            sendTipMessage(playerid, "Witamy w panelu zarz�dzania Vinyl-Club");
            ShowPlayerDialogEx(playerid, 6999, DIALOG_STYLE_TABLIST, "Laptop Lidera", "Open/Close\nUstal cene Norm.\nUstal cene VIP\nUstal cene napoi\nUstal nazwe napoi", "Wybierz", "Odrzu�");
        }
        else
        {
            sendErrorMessage(playerid, "Nie jeste� z San News, nie mo�esz zarz�dza� vinylem!");
        }
    }
	return 1;
}
