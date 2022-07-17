{ config, nixpkgs, ... }:
{
  security = {
    sudo.wheelNeedsPassword = false;
    rtkit.enable = true;
  };

  services.openssh.enable = true;
  services.openssh.passwordAuthentication = false;
  services.opensshd.enable = true;
  users.users.root.openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCpQBfim54pBdMAHJyYrrOpgma5EEE0GxVs92ax+WzJNIoXsuaQUVxQ8adzO7lIxwIrYQKt8uciKmsUJWRMSEKsmo6fgFUD767+d68+oz/IJitUnYHsPYfo0vsQGsiGkGi+goZ9UoLnmmOkbrGcasKrVqyM0zyd9X2cWa2CYnVU3BTa0r6+2cMBnUVI5ZigdaNm9jDiPJMMCYB60YI8A3bGZr6iNvfUSJ9p3ZTUshGzLO7ubJEZdUaa1YVOyZhZNz/u3eiBN9I+F49pV8EOazAFS5XZpkH8qxxl1fKKhNMtpYxx4UolesvfCf19qxf8ElNL2x70GPxhZApZ+IW0Ia2FwGmBYJq82Rd44fUHs+qK81a97auvj+fHCf+7wVLIoKTjg3sbOnVCCOe9/tYbzy/W+Bxbp1mCkvvfCirGX+P8VovbTGliwBAFwFBTNXqxlB363Fu9hmJxVUae1llMba7/FDcydgRsDSw4sNm/1lvyBrd4Fkh5CHfZFh3GGgVBpfXarYovq4TdmyuDEAqOVXJSiBUXhhhb3K40hJfNirgyO4+4C8S2VlpyWNMGGr5vDUzOKK8f1iEWiwItTg+vMTjqikuEaug+V4ZyaJiCI/p9M27+EC6K3VGLxhY4GyyMfzxbaq+08/2fmBv38izF0q7J1xJT0wvAj+bC6caZdYzIAw== (none)" ];
}
