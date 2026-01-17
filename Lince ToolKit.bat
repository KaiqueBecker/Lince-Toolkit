@echo off

chcp 65001
color 0E

:: === Verifica se é administrador ===
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Solicitando permissao de administrador...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:menu
cls
echo.
echo ===========================================================
echo              TERMO DE USO E RESPONSABILIDADE
echo ===========================================================
echo.
echo 1 - Ao aceitar, você concorda que o software pode danificar seu computador ao executar
echo     configurações avançadas, como por exemplo o comando "Defender Killer" antes de
echo     prosseguir, recomendo criar um ponto de restauração para que você possa ficar
echo     seguro ao ativar ações avançadas
echo.
echo 2 - Proíbido modificar o programa ou implementar ação maliciosa!
echo.
echo 3 - Antes de compartilhar dê meus créditos pelo programa ;)
echo.
echo 4 - Backup recomendado!
echo.
echo.
set /p temp="Pressione Enter para aceitar os termos"

cls
echo.
echo.
set "text=Lince Toolkit v1.6"
setlocal enabledelayedexpansion
set "output="

:: efeito letra por letra com atraso visível
for /l %%i in (1,1,20) do (
    set "output=!text:~0,%%i!"
    cls
    echo.
    echo.
    echo.                 !output!
    :: atraso curto: 50ms
    ping 127.0.0.1 -n 1 -w 500 >nul
)
endlocal

:: efeito de brilho/fade
for %%C in (0a 0b 0e 0f 0e 0b 0a) do (
    color %%C
    ping 127.0.0.1 -n 1 -w 500 >nul
)

timeout /t 3 >nul
cls

:menu2
cls
echo.
echo  88     88 88b 88  dP""b8 888888   888888  dP"Yb   dP"Yb  88     88  dP 88 888888 
echo  88     88 88Yb88 dP   `" 88__       88   dP   Yb dP   Yb 88     88odP  88   88   
echo  88  .o 88 88 Y88 Yb      88""       88   Yb   dP Yb   dP 88  .o 88"Yb  88   88   
echo  88ood8 88 88  Y8  YboodP 888888     88    YbodP   YbodP  88ood8 88  Yb 88   88   v1.6
echo.
echo [1] Central de Segurança
echo [2] Lista de Ferramentas
echo [3] Personalizar Sistema
echo [4] Central Avançada
echo [5] Ativador
echo.
echo Digite a palavra "help" para mais informações
echo.
set /p escolha=Selecione uma opção:

if "%escolha%"=="1" goto seguranca
if "%escolha%"=="2" goto ferramentas
if "%escolha%"=="3" goto Custom
if "%escolha%"=="4" goto Advanced
if "%escolha%"=="5" goto ativar_windows
if "%escolha%"=="help" goto Help

:: Se digitou algo inválido
echo.
echo Opção invalida!
pause
goto menu2

:Help
cls
echo.
echo Muito obrigado por utilizar meu kit de ferramentas para Windows!
echo.
echo Este programa foi desenvolvido com muito cuidado, para que você tenha acesso completo a qualquer ferramenta do sistema!
echo com ele você pode fazer o que quiser em seu computador
echo.
echo ================================
echo   Como utilizar o programa?
echo ================================
echo.
echo Execute o programa e Selecione as opções digitando o número correspondente, todos os comandos possuem um indicativo de sua devida função
echo comandos marcados como Ataque podem danificar sua máquina, então tome cuidado!
echo.
echo ================================
echo   O Ativador é eterno?
echo ================================
echo Sim, o seu computador ficara ativado para sempre com minha modificação de Chave do Windows, entretanto adicionei outras
echo opções de ativação como uma temporaria, execute a de seu gosto!
echo.
echo ======================================
echo  O que é resetar o navegador?
echo ======================================
echo. 
echo Ele elimina absolutamente tudo do seu navegador, histórico, senhas salvas
echo downloads, extensões e etc, deixando ele completamente
echo livre de ameaças de um hacker, faça isso e execute o limpar cache para uma maior segurança!
echo.
echo ============================================
echo    Copilado junto dos programas
echo.
echo - Advanced Task Mannager
echo - WPD Tools
echo ============================================
echo.
echo ============================================
echo   Este programa foi desenvolvido pelo Lince
echo   Versão 1.6
echo   Atualizado na data 14/01/2026
echo ============================================
echo.
powershell [Console]::Beep(658, 125); [Console]::Beep(1320, 500); [Console]::Beep(990, 250); [Console]::Beep(1056, 250); [Console]::Beep(1188, 250); [Console]::Beep(1320, 125); [Console]::Beep(1188, 125); [Console]::Beep(1056, 250); [Console]::Beep(990, 250); [Console]::Beep(880, 500); [Console]::Beep(880, 250); [Console]::Beep(1056, 250); [Console]::Beep(1320, 500); [Console]::Beep(1188, 250); [Console]::Beep(1056, 250); [Console]::Beep(990, 750); [Console]::Beep(1056, 250); [Console]::Beep(1188, 500); [Console]::Beep(1320, 500); [Console]::Beep(1056, 500); [Console]::Beep(880, 500); [Console]::Beep(880, 500); sleep -m 250; [Console]::Beep(1188, 500); [Console]::Beep(1408, 250); [Console]::Beep(1760, 500); [Console]::Beep(1584, 250); [Console]::Beep(1408, 250); [Console]::Beep(1320, 750); [Console]::Beep(1056, 250); [Console]::Beep(1320, 500); [Console]::Beep(1188, 250); [Console]::Beep(1056, 250); [Console]::Beep(990, 500); [Console]::Beep(990, 250); [Console]::Beep(1056, 250); [Console]::Beep(1188, 500); [Console]::Beep(1320, 500); [Console]::Beep(1056, 500); [Console]::Beep(880, 500); [Console]::Beep(880, 500); sleep -m 500; [Console]::Beep(1320, 500); [Console]::Beep(990, 250); [Console]::Beep(1056, 250); [Console]::Beep(1188, 250); [Console]::Beep(1320, 125); [Console]::Beep(1188, 125); [Console]::Beep(1056, 250); [Console]::Beep(990, 250); [Console]::Beep(880, 500); [Console]::Beep(880, 250); [Console]::Beep(1056, 250); [Console]::Beep(1320, 500); [Console]::Beep(1188, 250); [Console]::Beep(1056, 250); [Console]::Beep(990, 750); [Console]::Beep(1056, 250); [Console]::Beep(1188, 500); [Console]::Beep(1320, 500); [Console]::Beep(1056, 500); [Console]::Beep(880, 500); [Console]::Beep(880, 500); sleep -m 250; [Console]::Beep(1188, 500); [Console]::Beep(1408, 250); [Console]::Beep(1760, 500); [Console]::Beep(1584, 250); [Console]::Beep(1408, 250); [Console]::Beep(1320, 750); [Console]::Beep(1056, 250); [Console]::Beep(1320, 500); [Console]::Beep(1188, 250); [Console]::Beep(1056, 250); [Console]::Beep(990, 500); [Console]::Beep(990, 250); [Console]::Beep(1056, 250); [Console]::Beep(1188, 500); [Console]::Beep(1320, 500); [Console]::Beep(1056, 500); [Console]::Beep(880, 500); [Console]::Beep(880, 500); sleep -m 500; [Console]::Beep(660, 1000); [Console]::Beep(528, 1000); [Console]::Beep(594, 1000); [Console]::Beep(495, 1000); [Console]::Beep(528, 1000); [Console]::Beep(440, 1000); [Console]::Beep(419, 1000); [Console]::Beep(495, 1000); [Console]::Beep(660, 1000); [Console]::Beep(528, 1000); [Console]::Beep(594, 1000); [Console]::Beep(495, 1000); [Console]::Beep(528, 500); [Console]::Beep(660, 500); [Console]::Beep(880, 1000); [Console]::Beep(838, 2000); [Console]::Beep(660, 1000); [Console]::Beep(528, 1000); [Console]::Beep(594, 1000); [Console]::Beep(495, 1000); [Console]::Beep(528, 1000); [Console]::Beep(440, 1000); [Console]::Beep(419, 1000); [Console]::Beep(495, 1000); [Console]::Beep(660, 1000); [Console]::Beep(528, 1000); [Console]::Beep(594, 1000); [Console]::Beep(495, 1000); [Console]::Beep(528, 500); [Console]::Beep(660, 500); [Console]::Beep(880, 1000); [Console]::Beep(838, 2000);
exit

:seguranca
cls
echo ===============================
echo     CENTRAL DE SEGURANÇA
echo ===============================
echo.
echo Reparo e Integridade do Sistema
echo.
echo [1]  Reparar arquivos do sistema (SFC)
echo [2]  Verificar erros no disco (CHKDSK)
echo [3]  Verificar Integridade do sistema (DISM)
echo [4]  Verificar erros de driver
echo [5]  Criar ponto de restauração
echo.
echo Segurança nativa do Windows
echo.
echo [6]  Escanear sistema com Windows Defender
echo [7]  Atualizar Windows Defender
echo [8]  Verificar Updates com Windows Update
echo [9]  Status do Windows Defender
echo.
echo Inicialização do Sistema
echo.
echo [10] Programas de inicialização
echo [11] Processos ativos
echo [12] Usuários do sistema
echo [13] Tarefas agendadas
echo.
echo Proteção de Internet
echo.
echo [14] Desligar adaptadores de Internet
echo [15] Status do Windows Firewall
echo [16] Ativar o Windows Firewall
echo [17] Visualizar Conexoes de IP
echo [18] Visualizar Portas abertas
echo [19] IP por PID (Em breve)
echo [20] Analisar Cache DNS ativo
echo.
echo Logs de Erro
echo.
echo [21] Logs de segurança
echo [22] Eventos criticos
echo [23] Falhas de login
echo [24] Processos SYSTEM
echo [25] Reset Firewall
echo [26] Regras Firewall
echo.
echo [27] Voltar
echo.
set "escolha="
set /p "escolha=Escolha uma opcao: "

if "%escolha%"=="1"  call :exec "Executar SFC?" "sfc /scannow"
if "%escolha%"=="2"  call :exec "Executar CHKDSK?" "chkdsk"
if "%escolha%"=="3"  call :exec "Executar DISM?" "DISM /Online /Cleanup-Image /RestoreHealth"
if "%escolha%"=="4"  call :exec "Verificar drivers?" "driverquery /v"

if "%escolha%"=="5"  call :exec "Criar ponto de restauracao?" ^
"powershell -Command ""Checkpoint-Computer -Description 'Ponto_de_Seguranca' -RestorePointType MODIFY_SETTINGS"""

if "%escolha%"=="6"  call :exec "Escanear com Defender?" "powershell Start-MpScan -ScanType FullScan"
if "%escolha%"=="7"  call :exec "Atualizar Defender?" "powershell Update-MpSignature"

if "%escolha%"=="8"  call :exec "Buscar updates?" ^
"powershell -Command ""Import-Module PSWindowsUpdate -ErrorAction SilentlyContinue; Get-WindowsUpdate -Install -AcceptAll -IgnoreReboot"""

if "%escolha%"=="9"  call :exec "Status do Defender?" "powershell Get-MpComputerStatus"

if "%escolha%"=="10" call :exec "Listar inicialização?" ^
"powershell -Command ""Get-CimInstance Win32_StartupCommand"""

if "%escolha%"=="11" call :exec "Listar processos?" "tasklist /v"
if "%escolha%"=="12" call :exec "Listar usuarios?" "net user"
if "%escolha%"=="13" call :exec "Ver tarefas?" "schtasks"

if "%escolha%"=="14" (
    call :netpanel
)

if "%escolha%"=="15" call :exec "Ver Firewall?" "netsh advfirewall show allprofiles"
if "%escolha%"=="16" call :exec "Ativar Firewall?" "netsh advfirewall set allprofiles state on"

if "%escolha%"=="17" call :exec "Ver conexoes?" "netstat -ano"

if "%escolha%"=="18" call :exec "Ver portas?" ^ "netstat -ano"

if "%escolha%"=="19" call :exec "Ver ip por PID?" "Get-NetTCPConnection -OwningProcess 4321"

if "%escolha%"=="20" call :exec "Cache DNS?" "ipconfig /displaydns"

if "%escolha%"=="21" call :exec "Abrir logs?" "eventvwr"
if "%escolha%"=="22" call :exec "Eventos criticos?" "wevtutil qe System /c:10 /f:text"
if "%escolha%"=="23" call :exec "Falhas login?" ^
"wevtutil qe Security /q:*[System[(EventID=4625)]] /f:text"

if "%escolha%"=="24" call :exec "Processos SYSTEM?" ^
"tasklist /v /fi ""USERNAME eq SYSTEM"""

if "%escolha%"=="25" call :exec "Resetar Firewall?" "netsh advfirewall reset"
if "%escolha%"=="26" call :exec "Regras Firewall?" "netsh advfirewall firewall show rule name=all"

if "%escolha%"=="27" goto menu2

=========================
goto continuar_seguranca
:netpanel
cls
echo ==============================
echo      Gerenciamento de Rede
echo ==============================
echo.
echo [1] Ver interfaces de rede
echo [2] Desligar interface
echo [3] Reativar interface
echo [4] Voltar
echo.
set /p netopt=Escolha uma opção: 

if "%netopt%"=="1" (
    cls
    echo Listando interfaces de rede...
    netsh interface show interface
    echo.
    pause
    goto netpanel
)

if "%netopt%"=="2" (
    cls
    set /p iface=Digite o nome da interface a desligar: 
    netsh interface set interface name="%iface%" admin=disable
    echo Interface "%iface%" desligada!
    pause
    goto netpanel
)

if "%netopt%"=="3" (
    cls
    set /p iface=Digite o nome da interface a reativar: 
    netsh interface set interface name="%iface%" admin=enable
    echo Interface "%iface%" reativada!
    pause
    goto netpanel
)

if "%netopt%"=="4" (
    goto seguranca
)

echo Opcao invalida!
timeout /t 2 >nul
goto netpanel

:: ===============================
:: FUNÇÃO EXEC
:: ===============================
:exec
cls
echo %~1
echo.
choice /m "Deseja continuar"
if errorlevel 2 goto seguranca
echo.
echo Executando comando...
echo.
%~2
echo.
pause
goto seguranca

echo Opção invalida!
pause
goto seguranca

:ferramentas
cls
echo.
echo =======================
echo  Lista de Ferramentas
echo =======================
echo.
echo [1] Gerenciador de tarefas
echo [2] Visualizador de eventos
echo [3] Editor de registro
echo [4] Mixer de Audio Windows 7
echo [5] Monitor de Recursos do Windows
echo [6] Gerenciamento do computador
echo [7] Gerenciador de Dispositivos
echo [8] Visualizar informacoes do Sistema
echo [9] Abrir informacoes sobre DirectX
echo.
echo [10] Voltar
echo.
set /p escolha=Selecione uma opção:

if "%escolha%"=="1" start taskmgr
if "%escolha%"=="2" start eventvwr
if "%escolha%"=="3" start regedit
if "%escolha%"=="4" start sndvol
if "%escolha%"=="5" start resmon
if "%escolha%"=="6" start compmgmt.msc
if "%escolha%"=="7" start devmgmt.msc
if "%escolha%"=="8" start ms-settings:about
if "%escolha%"=="9" start dxdiag
if "%escolha%"=="10" goto menu2

goto ferramentas

:Custom
cls
echo.
echo =======================
echo  Personalizar Sistema
echo =======================
echo.
echo Barra de Tarefas e Menu iniciar
echo.
echo [1] Alinhar barra de tarefas a esquerda
echo [2] Desativar sugestões de pesquisa
echo [3] Remover caixa de pesquisa da barra de tarefas
echo [4] Desativar transparência de cores
echo.
echo Explorador de Arquivos
echo.
echo [5] Mudar para modo escuro
echo [6] Eliminar pastas do explorador de arquivos
echo [7] Desativar sombras das janelas
echo [8] Desativar bordas arredondadas (W11)
echo [9] Abrir o Explorador diretamente em Meu Computador
echo [10] Ocultar arquivos e programas usados recentemente
echo.
echo Outras opções
echo.
echo [11] Interface avancada com botao direito
echo [12] Plano de energia
echo [13] Menu de personalização do Windows
echo [14] Efeitos visuais
echo.
echo [15] Configurações Recomendadas
echo.
echo [16] Voltar
echo.
set /p escolha=Selecione uma opção:

if "%escolha%"=="1" goto Barra_de_tarefas_a_esquerda
if "%escolha%"=="2" goto desativar_sugestoes
if "%escolha%"=="3" goto remover_caixa_pesquisa
if "%escolha%"=="4" goto desativar_transparencia
if "%escolha%"=="5" goto modo_escuro
if "%escolha%"=="6" goto eliminar_pastas
if "%escolha%"=="7" goto desativar_sombras
if "%escolha%"=="8" goto desativar_bordas
if "%escolha%"=="9" goto explorador_meu_computador
if "%escolha%"=="10" goto ocultar_recentes
if "%escolha%"=="11" goto interface_direito
if "%escolha%"=="12" goto plano_energia
if "%escolha%"=="13" goto interface
if "%escolha%"=="14" goto efeitos_visuais
if "%escolha%"=="15" goto Total
if "%escolha%"=="16" goto menu2

:Barra_de_tarefas_a_esquerda
cls
echo.
echo Esta opcão alinha a barra de tarefas do Windows ao lado esquerdo.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAl /t REG_DWORD /d 0 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:desativar_sugestoes
cls
echo.
echo Esta opção desativa as sugestões de pesquisa na internet.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:remover_caixa_pesquisa
cls
echo.
echo Esta opção remove a caixa de pesquisa da barra de tarefas.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    powershell -Command "Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'SearchboxTaskbarMode' -Value 0"
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneShowAll" /t REG_DWORD /d 0 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:desativar_transparencia
cls
echo.
echo Esta opção desativa a transparência de janelas e menus do Windows.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:modo_escuro
cls
echo.
echo Esta opção ira ativar o modo escuro no Windows para apps e sistema.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:eliminar_pastas
cls
echo.
echo Esta opção desativa pastas usadas com frequência e arquivos na nuvem no Explorador.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShowFrequent /t REG_DWORD /d 0 /f
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCloudFilesInQuickAccess /t REG_DWORD /d 0 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:desativar_sombras
cls
echo.
echo Esta opção desativa as sombras das janelas do Windows.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableShadow /t REG_DWORD /d 0 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:desativar_bordas
cls
echo.
echo Esta opção remove bordas arredondadas das janelas do Windows 11
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKCU\Software\Microsoft\Windows\Dwm" /v EnableRoundedCornersOnWindows /t REG_DWORD /d 0 /f
    reg add "HKCU\Software\Microsoft\Windows\Dwm" /v RoundedCornerRadius /t REG_DWORD /d 0 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:explorador_meu_computador
cls
echo.
echo Esta opção faz o Explorador abrir diretamente em Meu Computador.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:ocultar_recentes
cls
echo.
echo Esta opção desativa a exibição de arquivos e programas usados recentemente.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackDocs /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackProgs /t REG_DWORD /d 0 /f
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:interface_direito
cls
echo.
echo Esta opção remove o item Abrir em um novo processo do menu de contexto.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
    taskkill /f /im explorer.exe >nul
    start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:plano_energia
cls
echo.
echo Esta opção abre as configurações de energia do Windows.
echo Aqui voce pode escolher entre economizar energia ou desempenho maximo.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    start powercfg.cpl
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:interface
cls
echo.
echo Esta opção abre as configuracoes de interface do Windows.
echo Você podera alterar cores, fontes e outros detalhes visuais.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    start ms-settings:personalization
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:efeitos_visuais
cls
echo.
echo Esta opção abre a janela de opções de desempenho.
echo Voce podera ajustar efeitos visuais como animacoes e sombras.
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
    SystemPropertiesPerformance
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:Total
cls
echo =============================
echo  Customização Recomendada!
echo =============================
echo.
echo Criei uma seleção de configurações definitivas para o Windows 10 e 11
echo Ao prosseguir você irá habilitar todo o meu Pack de definições do Windows
echo.
set /p resp=Deseja continuar? S para sim / N para nao:
if /i "%resp%"=="S" (
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAl /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f
powershell -Command "Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'SearchboxTaskbarMode' -Value 0"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneShowAll" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShowFrequent /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCloudFilesInQuickAccess /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableShadow /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\Dwm" /v EnableRoundedCornersOnWindows /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\Dwm" /v RoundedCornerRadius /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackDocs /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackProgs /t REG_DWORD /d 0 /f
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
powercfg -setactive SCHEME_MIN
bcdedit /set {current} numproc 0
taskkill /f /im explorer.exe >nul
start explorer.exe
    echo Concluido!
    timeout /t 2 >nul
) else (
    echo Operação cancelada.
    timeout /t 1 >nul
)
goto Custom

:Advanced
cls
echo.
echo ==============================
echo  Central Avançada (Cuidado!)
echo ==============================
echo.
echo Desinstalar / Desativar recursos
echo.
echo [1] Desinstalar Microsoft Edge
echo [2] Desabilitar Scam de midias portáteis
echo [3] Desabilitar desligamento do computador após erro critico
echo [4] Formatar Navegadores
echo.
echo Destruir Sistema
echo.
echo [5] Windows Defender Killer
echo [6] Desativar Gerenciador de Tarefas
echo [7] Desativar UAC (Permissão de ADM)
echo.
echo [8] Voltar
echo.
set /p escolha=Selecione uma opção:

if "%escolha%"=="1" goto edge
if "%escolha%"=="2" goto scam
if "%escolha%"=="3" goto off_off
if "%escolha%"=="4" goto navegador
if "%escolha%"=="5" goto killer
if "%escolha%"=="6" goto desativar_gerenciador_tarefas
if "%escolha%"=="7" goto desativar_UAC
if "%escolha%"=="8" goto menu2

:scam
cls
echo ============================================
echo  Escaneamento do Defender em Midias Portateis
echo ============================================
echo.
echo [1] Ativar desativação do escaneamento
echo [2] Reativar escaneamento (padrão)
echo [3] Voltar
echo.
set /p opt=Escolha uma opção: 

if "%opt%"=="1" goto scam_ativar
if "%opt%"=="2" goto scam_desativar
if "%opt%"=="3" goto Advanced

echo Opção invalida!
timeout /t 2 >nul
goto scam

:: ===============================
:scam_ativar
cls
echo Desativando escaneamento do Defender em mídias removiveis...
echo.

:: Desativar AutoRun
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" ^
/v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f

:: Desativar escaneamento do Defender
powershell -Command "Set-MpPreference -DisableRemovableDriveScanning 1"

echo.
echo Função ATIVADA com sucesso!
pause
goto scam

:: ===============================
:scam_desativar
cls
echo Reativando escaneamento padrão do Defender...
echo.

:: Restaurar AutoRun (valor padrao recomendado)
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" ^
/v NoDriveTypeAutoRun /t REG_DWORD /d 145 /f

:: Reativar escaneamento do Defender
powershell -Command "Set-MpPreference -DisableRemovableDriveScanning 0"

echo.
echo Função DESATIVADA (padrao restaurado)!
pause
goto scam

:edge
cls
echo.
echo Desinstalar Edge?
echo.
echo O que voce deseja fazer? (S/N)
choice /c SN /n /m "Pressione S para sim ou N para não"

if errorlevel 2 goto desativar
if errorlevel 1 goto ativar

:ativar
echo Executando o comando...
@echo off
echo Fechando processos do Microsoft Edge...
taskkill /F /IM msedge.exe
taskkill /F /IM msedgewebview2.exe

echo Excluindo pastas relacionadas ao Edge...
timeout /t 2 >nul

rem Excluir pasta principal do Edge (WindowsApps)
takeown /F "C:\Program Files (x86)\Microsoft\Edge" /R /D Y
icacls "C:\Program Files (x86)\Microsoft\Edge" /grant Administrators:F /T
rd /s /q "C:\Program Files (x86)\Microsoft\Edge"

rem Excluir Edge de outros diretórios do sistema
takeown /F "C:\Program Files (x86)\Microsoft\EdgeUpdate" /R /D Y
icacls "C:\Program Files (x86)\Microsoft\EdgeUpdate" /grant Administrators:F /T
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate"

takeown /F "C:\Program Files\Microsoft\Edge" /R /D Y
icacls "C:\Program Files\Microsoft\Edge" /grant Administrators:F /T
rd /s /q "C:\Program Files\Microsoft\Edge"

takeown /F "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge" /R /D Y
icacls "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge" /grant Administrators:F /T
rd /s /q "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge"

echo Limpeza concluída! O Edge foi removido.
pause
goto Advanced

:desativar
rem processo cancelado
pause
goto Advanced

:off_off
cls
echo.
echo Com isso seu computador não ira desligar/reiniciar com um erro critico no sistema operacional
echo.
echo O que voce deseja fazer? (S/N)
choice /c SN /n /m "Pressione S para sim ou N para nao"

if errorlevel 2 goto desativar
if errorlevel 1 goto ativar

:ativar
echo Executando o comando...
reg add "HKLM\System\CurrentControlSet\Control\CrashControl" /v AutoReboot /t REG_DWORD /d 0 /f
pause
goto Advanced

:desativar
echo Executando o comando...
reg add "HKLM\System\CurrentControlSet\Control\CrashControl" /v AutoReboot /t REG_DWORD /d 1 /f
goto Advanced

:navegador
cls
echo =========================================
echo         LIMPEZA DE NAVEGADORES
echo =========================================
echo 1 - Google Chrome
echo 2 - Mozilla Firefox
echo 3 - Brave
echo 4 - Opera
echo 5 - Todos
echo 0 - Sair
echo =========================================
set /p opcao=Selecione uma opcao:

if "%opcao%"=="1" goto chrome
if "%opcao%"=="2" goto firefox
if "%opcao%"=="3" goto brave
if "%opcao%"=="4" goto opera
if "%opcao%"=="5" goto todos
if "%opcao%"=="0" Advanced
goto Advanced

:chrome
echo Limpando Google Chrome...
taskkill /f /im chrome.exe >nul 2>&1
rmdir /s /q "%LOCALAPPDATA%\Google\Chrome"
rmdir /s /q "%APPDATA%\Google\Chrome"
goto fim

:firefox
echo Limpando Mozilla Firefox...
taskkill /f /im firefox.exe >nul 2>&1
rmdir /s /q "%APPDATA%\Mozilla"
rmdir /s /q "%LOCALAPPDATA%\Mozilla"
goto fim

:brave
echo Limpando Brave...
taskkill /f /im brave.exe >nul 2>&1
rmdir /s /q "%LOCALAPPDATA%\BraveSoftware"
rmdir /s /q "%APPDATA%\BraveSoftware"
goto fim

:opera
echo Limpando Opera...
taskkill /f /im opera.exe >nul 2>&1
rmdir /s /q "%APPDATA%\Opera Software"
rmdir /s /q "%LOCALAPPDATA%\Opera Software"
goto fim
:todos
echo Limpando todos os navegadores...
call :chrome
call :firefox
call :brave
call :opera
goto fim

:fim
echo.
echo Concluido!
pause
goto navegador

:killer
cls
echo ========================
echo Windows Defender Killer
echo ========================
echo.
echo Antes de proseguir, tenha certeza de desabilitar a opção "Proteção contra violações" nas configurações do Defender
echo.
echo [1] Abrir configurações do Windows Defender
echo [2] Matar o Windows Defender
echo [3] Re-Viver Windows Defender
echo [0] Voltar
echo.
echo Seu Computador ficará totalmente vulnerável se desativar a segurança nativa do Sistema!
echo.
set /p opcao=Selecione uma opção:

if "%opcao%"=="1" goto abrir
if "%opcao%"=="2" goto matar
if "%opcao%"=="3" goto revive
if "%opcao%"=="0" goto Advanced


:abrir
start windowsdefender://threatsettings
goto killer

:matar
echo Executando o comando...
@echo off
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f

@echo off
echo Desativando o Windows Defender permanentemente...

rem Configuração para desativar o serviço do Defender
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiVirus /t REG_DWORD /d 1 /f

rem Configurações adicionais de proteção em tempo real
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f

rem Finalizando processos do Defender
taskkill /im "MsMpEng.exe" /f
taskkill /im "NisSrv.exe" /f

rem Desativar o serviço do Defender
sc stop WinDefend
sc config WinDefend start= disabled

rem Aviso ao usuário
echo Windows Defender foi desativado permanentemente. Reinicie o PC para confirmar as mudanças.
pause
msg * O Windows Defender está desativado permanentemente!
goto killer

:revive
echo Executando o comando...
@echo off
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /f
pause
msg * O Windows Defender esta ativado!
goto killer

:desativar_gerenciador_tarefas
cls
echo.
echo Não será mais possível executar o gerenciador de tarefas do Windows
echo.
echo [1] Encerrar ferramenta nativa
echo [2] Re-ativar ferramenta nativa
echo [0] Voltar
echo.
set /p opcao=Selecione uma opção:

if "%opcao%"=="1" goto encerrar_ferramenta_nativa
if "%opcao%"=="2" goto reativar_ferramenta_nativa
if "%opcao%"=="0" goto Advanced

:encerrar_ferramenta_nativa
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
pause
goto desativar_gerenciador_tarefas

:reativar_ferramenta_nativa
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 0 /f
pause
goto desativar_gerenciador_tarefas

:desativar_UAC
cls
echo.
echo Qualquer programa que exija administrador para ser executado abrirá sem o aviso do UAC
echo.
echo [1] Encerrar UAC
echo [2] Re-ativar UAC
echo [0] Voltar
echo.
set /p opcao=Selecione uma opção:

if "%opcao%"=="1" goto Encerrar_UAC
if "%opcao%"=="2" goto Reativar_UAC
if "%opcao%"=="0" goto Advanced

:Encerrar_UAC
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
echo.
echo Reinicie o computador para aplicar a configuração!
echo.
pause
goto desativar_UAC

:Reativar_UAC
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f
echo.
echo Reinicie o computador para aplicar a configuração!
echo.
pause
goto desativar_UAC

:ativar_windows
cls
echo =========================
echo  Ativadores da Microsoft
echo =========================
echo.
echo Ativador para todas as versões do Windows
echo Ativador para todas as versões do Microsoft Office
echo.
echo Deseja abrir a interface do Ativador?
set /p resp=Deseja continuar? S para sim / N para nao: 
if /i "%resp%"=="S" (
powershell -Command "iex (curl.exe -s --doh-url https://1.1.1.1/dns-query https://get.activated.win | Out-String)"
) else (
    echo Operacao cancelada.
    timeout /t 1 >nul
)

goto menu2