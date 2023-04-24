/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print_puthexhi.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rmakinen <rmakinen@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/04 08:56:04 by rmakinen          #+#    #+#             */
/*   Updated: 2023/01/31 11:28:59 by rmakinen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	hex_len(unsigned int n)
{
	int	len;

	len = 0;
	if (n == 0)
		return (1);
	while (n >= 16)
	{
		n = n / 16;
		len++;
	}
	return (len + 1);
}

static void	ft_puthexupper(unsigned int nb)
{
	if (nb >= 16)
	{
		ft_puthex(nb / 16);
		ft_puthex(nb % 16);
	}
	else
	{
		if (nb <= 9)
		{
			ft_putchar_fd((nb + '0'), 1);
		}
		else
		{
			ft_putchar_fd((nb - 10 + 'A'), 1);
		}
	}
}

int	print_puthexhi(unsigned int x)
{
	int		len;

	len = hex_len(x);
	ft_puthexupper(x);
	return (len);
}
