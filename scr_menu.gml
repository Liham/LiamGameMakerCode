switch (mpos)
{
	case 0:
	{
		room_goto(rm_StartMenu);
		break;
	}
	case 1:
	{
		game_end();
		break;
	}
	default: break;
}