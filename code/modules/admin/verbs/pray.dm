/mob/verb/pray(msg as text)
	set category = "IC"
	set name = "Pray"

	if(say_disabled)	//This is here to try to identify lag problems
		usr << "<span class='warning'>Speech is currently admin-disabled.</span>"
		return

	msg = sanitize(msg)
	if(!msg)	return

	if(usr.client)
		if(usr.client.prefs.muted & MUTE_PRAY)
			usr << "<span class='warning'>You cannot pray (muted).</span>"
			return
		if(src.client.handle_spam_prevention(msg,MUTE_PRAY))
			return

	var/image/cross = image('icons/obj/storage.dmi',"bible")
	msg = "<span class='notice'>\icon[cross] <b><font color=purple>PRAY: </font>[key_name(src, 1)] (<A HREF='?_src_=holder;adminmoreinfo=\ref[src]'>?</A>) (<A HREF='?_src_=holder;adminplayeropts=\ref[src]'>PP</A>) (<A HREF='?_src_=vars;Vars=\ref[src]'>VV</A>) (<A HREF='?_src_=holder;subtlemessage=\ref[src]'>SM</A>) ([admin_jump_link(src, src)]) (<A HREF='?_src_=holder;secretsadmin=check_antagonist'>CA</A>) (<A HREF='?_src_=holder;adminspawncookie=\ref[src]'>SC</a>):</b> [msg]</span>"

	for(var/client/C in admins)
		if(R_ADMIN & C.holder.rights)
			if(C.prefs.toggles & CHAT_PRAYER)
				C << msg
	usr << "Your prayers have been received by the gods."

	feedback_add_details("admin_verb","PR") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!
	//log_admin("HELP: [key_name(src)]: [msg]")

/proc/Centcomm_announce(var/msg, var/mob/Sender, var/iamessage)
	var/msg_cciaa = "<span class='notice'><b><font color=orange>[uppertext(current_map.boss_short)][iamessage ? " IA" : ""]:</font>[key_name(Sender, 1)] (<A HREF='?_src_=holder;CentcommReply=\ref[Sender]'>RPLY</A>):</b> [msg]</span>"
	var/msg_admin = "<span class='notice'><b><font color=orange>[uppertext(current_map.boss_short)][iamessage ? " IA" : ""]:</font>[key_name(Sender, 1)] (<A HREF='?_src_=holder;adminplayeropts=\ref[Sender]'>PP</A>) (<A HREF='?_src_=vars;Vars=\ref[Sender]'>VV</A>) (<A HREF='?_src_=holder;subtlemessage=\ref[Sender]'>SM</A>) ([admin_jump_link(Sender, src)]) (<A HREF='?_src_=holder;secretsadmin=check_antagonist'>CA</A>) (<A HREF='?_src_=holder;BlueSpaceArtillery=\ref[Sender]'>BSA</A>) (<A HREF='?_src_=holder;CentcommReply=\ref[Sender]'>RPLY</A>):</b> [msg]</span>"

	var/cciaa_present = 0
	var/cciaa_afk = 0

	for(var/client/C in admins)
		if(R_ADMIN & C.holder.rights)
			C << msg_admin
		else if (R_CCIAA & C.holder.rights)
			cciaa_present++
			if (C.is_afk())
				cciaa_afk++

			C << msg_cciaa

	discord_bot.send_to_cciaa("Emergency message from the station: `[msg]`, sent by [Sender]!")

	var/discord_msg = "[cciaa_present] agents online."
	if (cciaa_present)
		if ((cciaa_present - cciaa_afk) <= 0)
			discord_msg += " **All AFK!**"
		else
			discord_msg += " [cciaa_afk] AFK."

	discord_bot.send_to_cciaa(discord_msg)
	post_webhook_event(WEBHOOK_CCIAA_EMERGENCY_MESSAGE, list("message"=msg, "sender"="[Sender]", "cciaa_present"=cciaa_present, "cciaa_afk"=cciaa_afk))

/proc/Syndicate_announce(var/msg, var/mob/Sender)
	msg = "<span class='notice'><b><font color=crimson>ILLEGAL:</font>[key_name(Sender, 1)] (<A HREF='?_src_=holder;adminplayeropts=\ref[Sender]'>PP</A>) (<A HREF='?_src_=vars;Vars=\ref[Sender]'>VV</A>) (<A HREF='?_src_=holder;subtlemessage=\ref[Sender]'>SM</A>) ([admin_jump_link(Sender, src)]) (<A HREF='?_src_=holder;secretsadmin=check_antagonist'>CA</A>) (<A HREF='?_src_=holder;BlueSpaceArtillery=\ref[Sender]'>BSA</A>) (<A HREF='?_src_=holder;SyndicateReply=\ref[Sender]'>RPLY</A>):</b> [msg]</span>"
	for(var/client/C in admins)
		if(R_ADMIN & C.holder.rights)
			C << msg
