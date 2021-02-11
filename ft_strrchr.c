/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cbelpois <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/08 10:11:42 by cbelpois          #+#    #+#             */
/*   Updated: 2019/10/08 10:11:43 by cbelpois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	char	*str;
	char	*last;
	int		i;

	str = (char *)s;
	last = NULL;
	i = 0;
	while (str[i])
	{
		if (str[i] == c)
			last = &str[i];
		i++;
	}
	if (str[i] == c)
		return (&str[i]);
	return (last);
}
