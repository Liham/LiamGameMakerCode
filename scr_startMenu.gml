switch (startmpos)
{
	case 0:
	{
		room_goto(rm_RNDM);
		break;
	}
	case 1:
	{
		room_goto(rm_WeaponMenu)
		break;
	}
	/*case 2:
	{
		break;
	}*/
	case 2:
	{
		room_goto(rm_MainMenu);
		break;
	}
	default: break;
}