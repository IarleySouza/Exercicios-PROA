let timer;
    let seconds = 0;

    function startTimer() {
      // Inicia o cronômetro apenas se não houver um já em execução
      if (!timer) {
        timer = setInterval(function() {
          seconds++;
          document.getElementById('timer').innerText = seconds;
        }, 1000);
      }
    }

    function stopTimer() {
      // Para o cronômetro
      clearInterval(timer);
      timer = null; // Para poder iniciar de novo
    }

    function resetTimer() {
      // Para e reseta o cronômetro
      clearInterval(timer);
      timer = null;
      seconds = 0;
      document.getElementById('timer').innerText = seconds;
    }