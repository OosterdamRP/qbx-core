local Translations = {
    error = {
        not_online = 'Speler is niet online',
        wrong_format = 'Onjuiste opmaak',
        missing_args = 'Niet elk argument is ingevuld (x, y, z)',
        missing_args2 = 'Alle argumenten moeten worden ingevuld!',
        no_access = 'Geen toegang tot dit commando',
        company_too_poor = 'Je werkgever is arm',
        item_not_exist = 'Item bestaat niet',
        too_heavy = 'Inventaris is te vol',
        duplicate_license = 'Dubbele Rockstar-licentie gevonden',
        no_valid_license  = 'Geen geldige Rockstar-licentie gevonden',
        not_whitelisted = 'Je staat niet op de whitelist voor deze server'
    },
    success = {},
    info = {
        received_paycheck = 'Je hebt je salaris van $%{value} ontvangen',
        job_info = 'Baan: %{value} | Rang: %{value2} | In dienst: %{value3}',
        gang_info = 'Gang: %{value} | Rang: %{value2}',
        on_duty = 'Je bent nu in dienst!',
        off_duty = 'Je bent nu uit dienst!',
        checking_ban = 'Hallo %s. We controleren of je verbannen bent.',
        join_server = 'Welkom %s bij {Server Name}.',
        checking_whitelisted = 'Hallo %s. We controleren of je op de whitelist staat.',
        exploit_banned = 'Je bent verbannen wegens cheaten.Bekijk onze Discord voor meer informatie: %{discord}',
        exploit_dropped = 'Je bent gekickt voor Exploiten',
    },
    command = {
        tp = {
            help = 'TP Naar speler of coördinaten (Alleen Admin)',
            params = {
                x = { name = 'id/x', help = 'ID van speler of X positie'},
                y = { name = 'y', help = 'Y positie'},
                z = { name = 'z', help = 'Z positie'},
            },
        },
        tpm = { help = 'TP Naar Marker (Alleen Admin)' },
        togglepvp = { help = 'Schakel PVP op de server in (Alleen Admin)' },
        addpermission = {
            help = 'Geef speler machtigingen (Alleen Admin)',
            params = {
                id = { name = 'id', help = 'ID van speler' },
                permission = { name = 'permission', help = 'Toestemmingsniveau' },
            },
        },
        removepermission = {
            help = 'Verwijder spelermachtigingen (Alleen Admin)',
            params = {
                id = { name = 'id', help = 'ID van speler' },
                permission = { name = 'permission', help = 'Toestemmingsniveau' },
            },
        },
        openserver = { help = 'Open de server voor iedereen (Alleen Admin)' },
        closeserver = {
            help = 'Sluit de server voor mensen zonder machtigingen (Alleen Admin)',
            params = {
                reason = { name = 'reason', help = 'Reden van sluiting (optioneel)' },
            },
        },
        car = {
            help = 'Spawn-voertuig (Alleen Admin)',
            params = {
                model = { name = 'model', help = 'Model name of the vehicle' },
            },
        },
        dv = { help = 'Voertuig verwijderen (Alleen Admin)' },
        givemoney = {
            help = 'Geef een speler geld (Alleen Admin)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        setmoney = {
            help = 'Stel het geldbedrag van de speler in (Alleen Admin)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Soort geld (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Hoeveelheid geld' },
            },
        },
        job = { help = 'Controleer uw baan' },
        setjob = {
            help = 'Stel een spelerstaak in (Alleen Admin)',
            params = {
                id = { name = 'id', help = 'Speler ID' },
                job = { name = 'job', help = 'Baan naam' },
                grade = { name = 'grade', help = 'Baan Rang' },
            },
        },
        gang = { help = 'Controleer je bende' },
        setgang = {
            help = 'Stel een spelersbende in (Alleen Admin)',
            params = {
                id = { name = 'id', help = 'Speler ID' },
                gang = { name = 'gang', help = 'Gang naam' },
                grade = { name = 'grade', help = 'Gang Rang' },
            },
        },
        ooc = { help = 'OOC Chatbericht' },
        me = {
            help = 'Toon lokaal bericht',
            params = {
                message = { name = 'message', help = 'Bericht om te verzenden' }
            },
        },
    },
}


if GetConvar('qb_locale', 'en') == 'nl' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
