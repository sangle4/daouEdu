package com.fw;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/*
 * 기존 IOMS에 있는 FormatString 클래스 파일 임.
 * 2011.12.1 size 이내만  return
 */
public class FormatString
{
	static FormatString _INSTANCE = null;
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	public static FormatString getInstance()
	{
		if(_INSTANCE == null)
		{
			_INSTANCE = new FormatString();
		}
		
		return _INSTANCE;
	}

	public String format(String type, int size, String _idata)
	{
		StringBuffer sb_buff = new StringBuffer();
		String idata;
		
		if (size >= _idata.getBytes().length)
		{
			idata = _idata;
		}
		else
		{
			idata = new String(_idata.getBytes(), 0, size);
		}

		try
		{
			switch (type.charAt(0))
			{
				case	'X' :		// STRING

					for (int i = 0 ; i < size ; i++)
					{
						sb_buff.append(' ');
					}

					try
					{
						if (idata != null)
						{
							byte[]	bstr = idata.getBytes();
							
							sb_buff.replace(0, bstr.length, idata);
						}
					}
					catch (StringIndexOutOfBoundsException ex) {
						log.error("format[1] : " + ex);
					}

					break;

				case	'9' :		// NUMERIC

					for (int i = 0 ; i < size ; i++)
					{
						sb_buff.append('0');
					}

					try
					{
						if (idata != null)
						{
							sb_buff.replace(size - idata.length(), size, idata);
						}
					}
					catch (StringIndexOutOfBoundsException ex)
					{
						log.error("format[2] : " + ex);
					}

					break;

				case	'R' :		// Right

					for (int i = 0 ; i < size ; i++)
					{
						sb_buff.append(' ');
					}

					try
					{
						if (idata != null)
						{
							sb_buff.replace(size - idata.length(), size, idata);
						}
					}
					catch (StringIndexOutOfBoundsException ex)
					{
						log.error("format[1] : " + ex);
					}

					break;
			
				case	'L' :		// Left

					for (int i = 0 ; i < size ; i++)
					{
						sb_buff.append(' ');
					}

					try
					{
						if (idata != null)
						{
							byte[]	bstr = idata.getBytes();
							sb_buff.replace(0, bstr.length, idata);
						}
					}
					catch (StringIndexOutOfBoundsException ex)
					{
						log.error("format[1] : " + ex);
					}

					break;

				case	'C' :	// Changed comma value
					int		comma;
					int		stpos, strpos;
					byte[]	bstr = idata.getBytes();

					comma = bstr.length/3;
					stpos = bstr.length%3;

					if (stpos == 0)
					{
						stpos = 3;
						comma--;
					}

					Integer[] pos = new Integer[comma+1];
					pos[0] = new Integer(stpos);
					for (int i = 0 ; i < comma ; i++)
						pos[i+1] = new Integer(3);

					strpos = 0;
					for (int i = 0 ; i < pos.length-1 ; i++)
					{
						sb_buff.append(idata.substring(strpos, strpos+pos[i].intValue()));
						strpos += pos[i].intValue();
						sb_buff.append(',');
					}
					sb_buff.append(idata.substring(strpos, strpos+pos[comma].intValue()));

					break;

				case	'T' :	// hhmiss => hh:mi:ss
					sb_buff.append(idata.substring(0, 2));
					sb_buff.append(':');
					sb_buff.append(idata.substring(2, 4));
					sb_buff.append(':');
					sb_buff.append(idata.substring(4));
					break;

				case	'Y' :	// yyyymmdd => yyyy/mm/dd
					sb_buff.append(idata.substring(0, 4));
					sb_buff.append('/');
					sb_buff.append(idata.substring(4, 6));
					sb_buff.append('/');
					sb_buff.append(idata.substring(6));
					break;
			}
		}
		catch (IndexOutOfBoundsException ex)
		{
			log.error("format[3] : " + ex);
		}

		return (sb_buff.toString());
	}

	public String toString (int number)
	{
		Integer	i_temp = new Integer(number);
		
		return (i_temp.toString());
	}
	
	public Integer toInteger(String s)
	{
		int		start, len = 0;
		StringBuffer sb_buff = new StringBuffer("");
		
		start = 0;
		
		if (s.charAt(0) == '-')
		{
			sb_buff.append('-');
			start++;
			
			len++;
		}
		
		for (int i = start ; i < s.length() ; i++)
		{
			if (s.charAt(i) >= '0' && s.charAt(i) <= '9')
			{
				sb_buff.append(s.charAt(i));
				len++;
			}
		}
		
		if (len > 0)
		{
			return (new Integer(sb_buff.toString()));
		}
		else
		{
			return null;
		}
	}

	public Double toDouble(String s)
	{
		int		start, len = 0;
		StringBuffer sb_buff = new StringBuffer("");
		
		start = 0;
		
		if (s.charAt(0) == '-')
		{
			sb_buff.append('-');
			start++;
			
			len++;
		}
		
		for (int i = start ; i < s.length() ; i++)
		{
			if (s.charAt(i) == '.' || (s.charAt(i) >= '0' && s.charAt(i) <= '9'))
			{
				sb_buff.append(s.charAt(i));
				len++;
			}
		}
		
		if (len > 0)
		{
			return (new Double(sb_buff.toString()));
		}
		else
		{
			return null;
		}
	}
}
