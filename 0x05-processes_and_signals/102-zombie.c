#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>

int infinite_while(void);

int main(void)
{
	pid_t my_pid;
	int i;

	for (i = 0 ; i < 5 ; i++)
	{
		my_pid = fork();

		if (my_pid)
			printf("Zombie process created, PID: %d", my_pid);
		else
			exit(0);
	}
	infinite_while();

	return (EXIT_SUCCESS);
}

int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}