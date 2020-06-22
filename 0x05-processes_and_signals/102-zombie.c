#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>

int infinite_while(void);

/**
 * main - main function
 * Return: 0
 */
int main(void)
{
	pid_t my_pid;
	int i;

	for (i = 0 ; i < 5 ; i++)
	{
		my_pid = fork();

		if (my_pid > 0)
			printf("Zombie process created, PID: %d\n", my_pid);
		else
			exit(0);
	}
	infinite_while();

	return (EXIT_SUCCESS);
}

/**
 * infinite_while - loop
 * Return: 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
