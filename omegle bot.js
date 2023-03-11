function executeOmegle()
    {
        let btn = document.querySelector('.disconnectbtn')
        let messageBox = document.querySelector('.chatmsg')
        let sendBtn = document.querySelector('.sendbtn')
        btn.click()
        messageBox.innerHTML="hello"
        sendBtn.click()
    }
setInterval(executeOmegle,2000)