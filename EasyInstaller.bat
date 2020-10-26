@echo off
cls
:menu
cls
color 8



date /t

echo Computador: %computername%        Usuario: %username%
                   
echo            MENU TAREFAS
echo  ==================================
echo * 0. Instalar APPGET               * 
echo * 1. Navegadores                   * 
echo * 2. Desenvolvimento               *
echo * 3. Utilitarios                   *
echo * 4. Extensao                      *
echo * 5. Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 0 goto opcao0
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao0
    appget install appget
    goto menu
 
:opcao1
                        :menu2
                        echo            MENU DE NAVEGADORES
                        echo            ==================================
                        echo           * 1. Chrome       			     * 
                        echo           * 2. Firefox Developer     		 *
                        echo           * 3. Edge 			             *
                        echo           * 4. Sair                         * 
                        echo           * 5. Voltar ao menu ANTERIOR      * 
                        echo           * 6. INSTALAR TUDO                * 
                        echo            ==================================

                        set /p opcaoNavegador= Escolha uma opcao: 
                        echo ------------------------------
                        if %opcaoNavegador% equ chrome goto opcaoNavegador1
                        if %opcaoNavegador% equ firefox goto opcaoNavegador2
                        if %opcaoNavegador% equ edge goto opcaoNavegador3
                        if %opcaoNavegador% equ sair goto opcaoNavegador4
                        if %opcaoNavegador% equ voltar goto opcaoNavegador5
                        if %opcaoNavegador% equ instalartudo goto opcaoNavegador6
                        if %opcaoNavegador% GEQ 7 goto opcaoNavegador7
                        if %opcaoNavegador% GEQ 0 goto opcaoNavegador0


                        :opcaoNavegador1
                        appget install chrome
                        pause cls
                        goto menu2

                        :opcaoNavegador2
                        appget install firefox-developer
                        pause
                        cls
                        goto menu2

                        :opcaoNavegador3
                        appget install microsoft-edge
                        pause
                        cls
                        goto menu2

                        :opcaoNavegador4
                        cls
                        exit

                        :opcaonavegador5
                        goto menu

                        :opcaoNavegador6
                        appget install chrome
                        appget install firefox-developer
                        appget install microsoft-edge
                        pause
                        cls
                        goto menu2

                        :opcaoNavegador7
                        echo ==============================================
                        echo * Opcao Invalida! Escolha outra opcao do menu *
                        echo ==============================================
                        pause
                        cls
                        goto menu2

                        :opcaoNavegador0
                        echo ==============================================
                        echo * Opcao Invalida! Escolha outra opcao do menu *
                        echo ==============================================
                        pause
                        cls
                        goto menu2

:opcao2

                        :menuDev
                        echo            MENU DE DESENVOLVIMENTO
                        echo            =========================================================================================================================
                        echo            BANCO DE DADOS              IDE                         VERSIONAMENTO           SERVIDORES              OUTROS
                        echo            =========================================================================================================================
                        echo            Mongodb                     Visual Stu. code            Git                     FileZilla CLIENT        Sair
                        echo            Mysql                       Netbeans                    GitHub                  FileZilla SERVER        Voltar ao Menu anterior
                        echo            Pgadmin                     Brackets                    Docker Windows          WampServer              INSTALAR TUDO
                        echo            SSMS                        Arduino                     GitKraken                                       Ruby    
                        echo            SQLSERVER                   Virtual BOX                                                                 NodeJs     
                        echo            ApexLog                     BootStrap Studio                                                            Insomnia    
                        echo                                                                                                                    Postman    
                        echo                                                                                                                    Anydesk
                        echo                                                                                                                    TeamViewer
                        echo                                                                                                                    Winrar
                        echo                                                                                                                    TEXMaker 

                        echo            ==================================

                        set /p opcaoDev= Escolha uma opcao: 
                        echo ------------------------------
                        if %opcaoDev% equ insomnia goto opcaoDev1
                        if %opcaoDev% equ postman goto opcaoDev2
                        if %opcaoDev% equ visual goto opcaoDev3
                        if %opcaoDev% equ mysql goto opcaoDev4
                        if %opcaoDev% equ pgadmin goto opcaoDev5
                        if %opcaoDev% equ brackets goto opcaoDev6
                        if %opcaoDev% equ git goto opcaoDev7
                        if %opcaoDev% equ github goto opcaoDev8
                        if %opcaoDev% equ docker goto opcaoDev9
                        if %opcaoDev% equ astah goto opcaoDev10
                        if %opcaoDev% equ nodejs goto opcaoDev11
                        if %opcaoDev% equ postbird goto opcaoDev12
                        if %opcaoDev% equ teamviewer goto opcaoDev13
                        if %opcaoDev% equ textmaker goto opcaoDev14
                        if %opcaoDev% equ netbeans goto opcaoDev15
                        if %opcaoDev% equ wampserver goto opcaoDev16
                        if %opcaoDev% equ client goto opcaoDev17
                        if %opcaoDev% equ server goto opcaoDev18
                        if %opcaoDev% equ mongodb goto opcaoDev19
                        if %opcaoDev% equ virtual goto opcaoDev20
                        if %opcaoDev% equ winrar goto opcaoDev21
                        if %opcaoDev% equ arduino goto opcaoDev22
                        if %opcaoDev% equ ruby goto opcaoDev23
                        if %opcaoDev% equ sair goto opcaoDev24
                        if %opcaoDev% equ voltar goto opcaoDev25
                        
                        if %opcaoDev% equ instalartudo goto opcaoDev26
                        //if %opcaoDev% GEQ 27 goto opcaoDev27
                        //if %opcaoDev% GEQ 0 goto opcaoDev27
                        if %opcaoDev% equ anydesk goto opcaoDev28
                        if %opcaoDev% equ gitkraken goto opcaoDev29
                        if %opcaoDev% equ ssms goto opcaoDev30
                        if %opcaoDev% equ sqlserver goto opcaoDev31
                        if %opcaoDev% equ bootstrap goto opcaoDev32
                        if %opcaoDev% equ apexlog goto opcaoDev33

                        
                        :opcaoDev1
                        appget install insomnia
                        pause
                        cls
                        goto menuDev
                        

                        :opcaoDev2
                        appget install postman
                        pause
                        cls
                        goto menuDev

                       :opcaoDev3
                        appget install visual-studio-code
                        pause
                        cls
                        goto menuDev

                        :opcaoDev4
                        appget install mysql-workbench
                        pause
                        cls
                        goto menuDev

                        :opcaoDev5

                        appget install pgadmin-4
                        start /wait programas/postgresql-12.3-1-windows-x64.exe
                        pause
                        cls
                        goto menuDev

                        :opcaoDev6
                        appget install brackets
                        pause
                        cls
                        goto menuDev

                        :opcaoDev7
                        appget install git
                        pause
                        cls
                        goto menuDev

                        :opcaoDev8
                        appget install github
                        pause
                        cls
                        goto menuDev

                        :opcaoDev9
                        appget install docker-community
                        pause
                        cls
                        goto menuDev

                        :opcaoDev10
                        start /wait programas/astah-uml-8_2_0-b743f7-jre-64bit-setup.exe
                        pause
                        cls
                        goto menuDev

                        :opcaoDev11
                        appget install node
                        pause
                        cls
                        goto menuDev

                        :opcaoDev12
                        appget install postbird
                        pause
                        cls
                        goto menuDev

                        :opcaoDev13
                        appget install teamviewer
                        pause
                        cls
                        goto menuDev

                        :opcaoDev14
                        appget install texmaker
                        pause
                        cls
                        goto menuDev

                        :opcaoDev15
                        start /wait programas/jdk-8u251-windows-x64.exe
                        start /wait programas/jdk-14.0.1_windows-x64_bin.exe
                        start /wait programas/netbeans-8.2-windows.exe
                        pause
                        cls
                        goto menuDev

                        :opcaoDev16
                        start /wait programas/wampserver3_x64_apache2.4.17_mysql5.7.9_php5.6.16_php7.0.0.exe
                        pause
                        cls
                        goto menuDev

                        :opcaoDev17
                        appget install filezilla
                        pause
                        cls
                        goto menuDev

                        :opcaoDev18
                        appget install filezilla-server
                        pause
                        cls
                        goto menuDev

                        :opcaoDev19
                        appget install mongodb
                        pause
                        cls
                        goto menuDev

                        :opcaoDev20
                        appget install virtualbox
                        pause
                        cls
                        goto menuDev

                        :opcaoDev21
                        appget install winrar 
                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev22
                        appget install arduino
                        pause cls
                        goto menuDev
                        
                        :opcaoDev23
                        appget install ruby
                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev24
                        cls
                        exit
                         

                        :opcaoDev25
                        goto menu


                        :opcaoDev26
                        appget install insomnia
                        appget install postman
                        appget install visual-studio-code    
                        appget install mysql-workbench
                        appget install brackets
                        appget install git
                        appget install github
                        appget install postbird
                        appget install teamviewer
                        appget install texmaker
                        appget install filezilla
                        appget install filezilla-server
                        appget install mongodb
                        appget install virtualbox
                        appget install winrar 
                        appget install arduino
                        appget install node
                        appget install ruby
                        start /wait programas/postgresql-12.3-1-windows-x64.exe
                        start /wait programas/astah-uml-8_2_0-b743f7-jre-64bit-setup.exe
                        start /wait programas/jdk-8u251-windows-x64.exe
                        start /wait programas/jdk-14.0.1_windows-x64_bin.exe
                        start /wait programas/netbeans-8.2-windows.exe
                        start /wait programas/wampserver3_x64_apache2.4.17_mysql5.7.9_php5.6.16_php7.0.0.exe
                        appget install docker-community
                        start /wait programas/GitKrakenSetup.exe
                        appget install anydesk
                        start /wait programas/SSMS-Setup-ENU.exe
                        start /wait programas/SQLEXPRADV_x64_ENU.exe


                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev27
                        echo ==============================================
                        echo * Opcao Invalida! Escolha outra opcao do menu *
                        echo ==============================================
                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev28
                        appget install anydesk
                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev29
                        start /wait programas/GitKrakenSetup.exe
                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev30
                        start /wait programas/SSMS-Setup-ENU.exe
                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev31
                        start /wait programas/SQLEXPRADV_x64_ENU.exe
                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev32
                        start /wait programas/BootstrapStudio/Bootstrap_Studio_Downloadly.ir.exe
                        Copy  programas\BootstrapStudio\Crack\app.asar c:\Users\%username%\AppData\Local\Programs\bstudio\resources\
                        Copy  programas\BootstrapStudio\Crack\sources c:\Users\%username%\AppData\Local\Programs\bstudio\resources\  
                        pause
                        cls
                        goto menuDev
                        
                        :opcaoDev33
                        start /wait programas/ApexSQL/ApexSQLLog_Downloadly.exe
                        Copy programas\ApexSQL\Crack\ApexSQL.Activation.dll C:\Program Files\ApexSQL\ApexSQL Log\
                       
                 
                        pause cls
                        goto menuDev
                        



:opcao3
                        :menuUti
                        echo            MENU DE UTILITARIOS
                        echo            ==================================
                        echo           * 1. MEGA SYNC       			 * 
                        echo           * 2. 4K YOUTUBE TO MP3     		 *
                        echo           * 3. ADOBE READER 	             *
                        echo           * 4. Utorrent                     *
                        echo           * 5. Spotify                      * 
                        echo           * 6. LightShot                    * 
                        echo           * 7. OneDrive                      * 
                        echo           * 8. Office                        * 
                        echo           * 9. Voltar ao menu ANTERIOR       * 
                        echo           * 10. INSTALAR TUDO                * 
                        echo           * 11. SAIR                         * 
                        echo           * 12. Data Access Engine           *
                        echo           * 13. Sublime Text                 * 

                        echo            ==================================
                        
                        set /p opcaoUti= Escolha uma opcao: 
                        echo ------------------------------
                        if %opcaoUti% equ mega goto opcaoUti1
                        if %opcaoUti% equ 4k goto opcaoUti2
                        if %opcaoUti% equ adobe goto opcaoUti3
                        if %opcaoUti% equ utorrent goto opcaoUti4
                        if %opcaoUti% equ spotify goto opcaoUti5
                        if %opcaoUti% equ lightshot goto opcaoUti6
                        if %opcaoUti% equ onedrive goto opcaoUti7
                        if %opcaoUti% equ office goto opcaoUti8
                        
                        
                        if %opcaoUti% equ voltar goto opcaoUti9
                        if %opcaoUti% equ instalartudo goto opcaoUti10
                        if %opcaoUti% equ sair goto opcaoUti11

                        if %opcaoUti% equ data goto opcaoUti12
                        if %opcaoUti% equ data goto opcaoUti13

                        
                        
                        :opcaoUti1
                        appget install megasync
                        pause cls
                        goto menuUti
                        
                        :opcaoUti2
                        appget install 4k-youtube-to-mp3
                        pause cls
                        goto menuUti
                        
                        :opcaoUti3
                        appget install adobe-reader
                        pause cls
                        goto menuUti
                        
                        :opcaoUti4
                        start /wait programas/uTorrent.exe
                        pause cls
                        goto menuUti
                        
                        :opcaoUti5
                        appget install spotify
                        pause cls
                        goto menuUti
                        
                        :opcaoUti6
                        appget install lightshot
                        pause cls
                        goto menuUti
                        
                        :opcaoUti7
                        start /wait programas/OneDriveSetup.exe
                        goto menuUti

                         
                        :opcaoUti8
                        start /wait programas/OfficeSetup.exe
                        goto menuUti
                        
                        :opcaoUti9
                        goto menu
                        
                        :opcaoUti10
                        appget install megasync
                        appget install adobe-reader
                        appget install 4k-youtube-to-mp3
                        start /wait programas/uTorrent.exe
                        appget install spotify
                        appget install lightshot
                        start /wait programas/OfficeSetup.exe
                        start /wait programas/OneDriveSetup.exe
                        appget install sublime-text
                        
                        pause cls
                        goto menuUti
                        
                       :opcaoUti11
                        cls
                        exit

                        :opcaoUti12
                        start /wait programas/accessdatabaseengine_X64 /passive
                        goto menuUti
                        
                        :opcaoUti12
                        appget install sublime-text
                        goto menuUti


                        
:opcao4
                        :menuExt
                        echo            MENU DE EXTENSAO
                        echo            ==================================
                        echo           * 1. VS CODE     			     * 
                        echo           * 2. Configuração Inicial GIT   	 * 

                        echo           * 9. Voltar ao menu ANTERIOR       * 
                        echo           * 10. SAIR                         * 
                        echo            ==================================
                        
                        set /p opcaoExt= Escolha uma opcao: 
                        echo ------------------------------
                        if %opcaoExt% equ 1 goto opcaoExt1
                        if %opcaoExt% equ 2 goto opcaoExt2

                        :opcaoExt1
                            code --install-extension christian-kohler.path-intellisense code --install-extension Dart-Code.dart-code code --install-extension Dart-Code.flutter code --install-extension esbenp.prettier-vscode code --install-extension felixfbecker.php-intellisense code --install-extension ms-vscode-remote.remote-wsl code --install-extension Nash.awesome-flutter-snippets code --install-extension svipas.code-autocomplete code --install-extension TabNine.tabnine-vscode code --install-extension techer.open-in-browser
                        pause cls
                        goto menuExt

                        :opcaoExt2
                        git config --global user.name "Adolfo Poiatti"
                        git config --global user.email adolfo.poiatti@fatec.sp.gov.br 
                        pause cls
                        goto menuExt
                        



                        
                        pause cls
                        goto menuExt
                        
                        :menuExt9
                        goto menu

                        :menuExt10
                        cls
                        exit
                       
            
                        