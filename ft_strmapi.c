/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cbelpois <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/06 13:14:28 by cbelpois          #+#    #+#             */
/*   Updated: 2019/11/06 13:14:31 by cbelpois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	int		counter;
	char	*str;

	counter = 0;
	if (s == NULL || f == NULL)
		return (NULL);
	while (s[counter])
		++counter;
	if (!(str = (char*)malloc(counter + 1 * sizeof(char))))
		return (NULL);
	counter = 0;
	while (s[counter])
	{
		str[counter] = f(counter, s[counter]);
		++counter;
	}
	str[counter] = '\0';
	return (str);
}
