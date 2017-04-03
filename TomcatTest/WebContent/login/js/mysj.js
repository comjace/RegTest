
    var sleep = 30, interval = null;
    window.onload = function ()
    {
        var btn = document.getElementById ('btn');
        btn.onclick = function ()
        {
            if (!interval)
            {
                this.style.backgroundColor = 'rgb(243, 182, 182)';
                this.disabled = "disabled";
                this.style.cursor = "wait";
                this.value = "重新发送 (" + sleep-- + ")";
                interval = setInterval (function ()
                {
                    if (sleep == 0)
                    {
                        if (!!interval)
                        {
                            clearInterval (interval);
                            interval = null;
                            sleep = 30;
                            btn.style.cursor = "pointer";
                            btn.removeAttribute ('disabled');
                            btn.value = "免费获取验证码";
                            btn.style.backgroundColor = '';
                        }
                        return false;
                    }
                    btn.value = "重新发送 (" + sleep-- + ")";
                }, 100);
            }
        }
    }
