#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc, char *argv[]) {
    // Check if the pedido parameter is provided
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <pedido>\n", argv[0]);
        return 1;
    }

    // Get the pedido parameter from the command-line arguments
    char pedidoParam[0x400];
    snprintf(pedidoParam, sizeof(pedidoParam), "MRB_URL=http://host.docker.internal:33088/download?pedido=%s", argv[1]);

    char mrbFile[0x400];
    snprintf(mrbFile, sizeof(mrbFile), "MRB_FILE=%s", argv[3]);
    // Define the Docker command and its arguments
    const char *dockerCommand = "docker";
    const char *args[] = {
        "docker",
        "run",
        "-d",  // Detached mode to run in the background
        "-e", "VNC_ADDR=host.docker.internal:5902",
        "-e", mrbFile,
        "-e", pedidoParam,  // Use the pedido parameter dynamically
        "-v", argv[2],
        "--add-host=host.docker.internal:host-gateway",
        "nebula",
        NULL  // Null-terminated array
    };

    // Fork a new process
    pid_t pid = fork();

    if (pid < 0) {
        // Fork failed
        perror("Failed to fork");
        return 1;
    } else if (pid == 0) {
        // In the child process: Run the Docker command
        if (execvp(dockerCommand, (char *const *)args) < 0) {
            perror("Failed to execute Docker command");
            exit(1);
        }
    } else {
        // In the parent process: Print the child process ID
        printf("Docker command started asynchronously with PID %d\n", pid);

        // Optionally, wait for the child process if you need to track its status
        int status;
        waitpid(pid, &status, WNOHANG); // Non-blocking wait
    }

    return 0;
}

