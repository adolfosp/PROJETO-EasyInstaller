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
                        if %opcaoNavegador% equ 1 goto opcaoNavegador1
                        if %opcaoNavegador% equ 2 goto opcaoNavegador2
                        if %opcaoNavegador% equ 3 goto opcaoNavegador3
                        if %opcaoNavegador% equ 4 goto opcaoNavegador4
                        if %opcaoNavegador% equ 5 goto opcaoNavegador5
                        if %opcaoNavegador% equ 6 goto opcaoNavegador6
                        if %opcaoNavegador% GEQ 7 goto opcaoNavegador7
                        if %opcaoNavegador% GEQ 0 goto opcaoNavegador0


                        :opcaoNavegador1
                        appget install chrome
                        pause
                        goto menu2

                        :opcaoNavegador2
                        appget install firefox-developer
                        pause
                        goto menu2

                        :opcaoNavegador3
                        appget install microsoft-edge
                        pause
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
                        goto menu2

                        :opcaoNavegador7
                        echo ==============================================
                        echo * Opcao Invalida! Escolha outra opcao do menu *
                        echo ==============================================
                        pause
                        goto menu2

                        :opcaoNavegador0
                        echo ==============================================
                        echo * Opcao Invalida! Escolha outra opcao do menu *
                        echo ==============================================
                        pause
                        goto menu2

:opcao2

                        :menuDev
                        echo            MENU DE DESENVOLVIMENTO
                        echo            ==================================
                        echo           * 1. Insomnia       	       10. Astah           19.MongoDB                  * 
                        echo           * 2. PostMan                11.NodeJS - NPM     20.Virtual BOX              *
                        echo           * 3. Visual Studio Code     12.Postbird         21.Winrar                   *
                        echo           * 4. Mysql Workbench        13.TeamViewer       22.Arduino                  * 
                        echo           * 5. PgAdmin                14.TEXMaker         23. Ruby                    *    
                        echo           * 6. Brackets               15.Netbeans         24. Sair                    * 
                        echo           * 7. Git                    16.WampServer       25. Voltar ao Menu Anterior * 
                        echo           * 8. Git Hub                17.FileZilla CLIENT 26. INSTALAR TUDO           * 
                        echo           * 9. Docker Windows         18.FileZilla SERVER                             * 

                        echo            ==================================

                        set /p opcaoDev= Escolha uma opcao: 
                        echo ------------------------------
                        if %opcaoDev% equ 1 goto opcaoDev1
                        if %opcaoDev% equ 2 goto opcaoDev2
                        if %opcaoDev% equ 3 goto opcaoDev3
                        if %opcaoDev% equ 4 goto opcaoDev4
                        if %opcaoDev% equ 5 goto opcaoDev5
                        if %opcaoDev% equ 6 goto opcaoDev6
                        if %opcaoDev% equ 7 goto opcaoDev7
                        if %opcaoDev% equ 8 goto opcaoDev8
                        if %opcaoDev% equ 9 goto opcaoDev9
                        if %opcaoDev% equ 10 goto opcaoDev10
                        if %opcaoDev% equ 11 goto opcaoDev11
                        if %opcaoDev% equ 12 goto opcaoDev12
                        if %opcaoDev% equ 13 goto opcaoDev13
                        if %opcaoDev% equ 14 goto opcaoDev14
                        if %opcaoDev% equ 15 goto opcaoDev15
                        if %opcaoDev% equ 16 goto opcaoDev16
                        if %opcaoDev% equ 17 goto opcaoDev17
                        if %opcaoDev% equ 18 goto opcaoDev18
                        if %opcaoDev% equ 19 goto opcaoDev19
                        if %opcaoDev% equ 20 goto opcaoDev20
                        if %opcaoDev% equ 21 goto opcaoDev21
                        if %opcaoDev% equ 22 goto opcaoDev22
                        if %opcaoDev% equ 23 goto opcaoDev23
                        if %opcaoDev% equ 24 goto opcaoDev24
                        if %opcaoDev% equ 25 goto opcaoDev25
                        if %opcaoDev% equ 26 goto opcaoDev26
                        if %opcaoDev% GEQ 27 goto opcaoDev27
                        if %opcaoDev% GEQ 0 goto opcaoDev27

                        :opcaoDev1
                        appget install insomnia
                        pause
                        goto menuDev

                        :opcaoDev2
                        appget install postman
                        pause
                        goto menuDev

                       :opcaoDev3
                        appget install visual-studio-code
                        pause
                        goto menuDev

                        :opcaoDev4
                        appget install mysql-workbench
                        pause
                        goto menuDev

                        :opcaoDev5

                        appget install pgadmin-4
                        start /wait programas/postgresql-12.3-1-windows-x64.exe
                        pause
                        goto menuDev

                        :opcaoDev6
                        appget install brackets
                        pause
                        goto menuDev

                        :opcaoDev7
                        appget install git
                        pause
                        goto menuDev

                        :opcaoDev8
                        appget install github
                        pause
                        goto menuDev

                        :opcaoDev9
                        appget install docker-community
                        pause
                        goto menuDev

                        :opcaoDev10
                        start /wait programas/astah-uml-8_2_0-b743f7-jre-64bit-setup.exe
                        pause
                        goto menuDev

                        :opcaoDev11
                        appget install node
                        pause
                        goto menuDev

                        :opcaoDev12
                        appget install postbird
                        pause
                        goto menuDev

                        :opcaoDev13
                        appget install teamviewer
                        pause
                        goto menuDev

                        :opcaoDev14
                        appget install texmaker
                        pause
                        goto menuDev

                        :opcaoDev15
                        start /wait programas/jdk-8u251-windows-x64.exe
                        start /wait programas/jdk-14.0.1_windows-x64_bin.exe
                        start /wait programas/netbeans-8.2-windows.exe
                        pause
                        goto menuDev

                        :opcaoDev16
                        start /wait programas/wampserver3_x64_apache2.4.17_mysql5.7.9_php5.6.16_php7.0.0.exe
                        pause
                        goto menuDev

                        :opcaoDev17
                        appget install filezilla
                        pause
                        goto menuDev

                        :opcaoDev18
                        appget install filezilla-server
                        pause
                        goto menuDev

                        :opcaoDev19
                        appget install mongodb
                        pause
                        goto menuDev

                        :opcaoDev20
                        appget install virtualbox
                        pause
                        goto menuDev

                        :opcaoDev21
                        appget install winrar 
                        pause
                        goto menuDev
                        
                        :opcaoDev22
                        appget install arduino
                        pause
                        goto menuDev
                        
                        :opcaoDev23
                        appget install ruby
                        pause
                        goto menuDev
                        
                        :opcaoDev24
                        cls
                        exit
                         

                        :opcaoDev25
                        goto menu2


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



                        pause
                        goto menuDev
                        
                        :opcaoDev27
                        echo ==============================================
                        echo * Opcao Invalida! Escolha outra opcao do menu *
                        echo ==============================================
                        pause
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
                        echo            ==================================
                        
                        set /p opcaoUti= Escolha uma opcao: 
                        echo ------------------------------
                        if %opcaoUti% equ 1 goto opcaoUti1
                        if %opcaoUti% equ 2 goto opcaoUti2
                        if %opcaoUti% equ 3 goto opcaoUti3
                        if %opcaoUti% equ 4 goto opcaoUti4
                        if %opcaoUti% equ 5 goto opcaoUti5
                        if %opcaoUti% equ 6 goto opcaoUti6
                        if %opcaoUti% equ 7 goto opcaoUti7
                        if %opcaoUti% equ 8 goto opcaoUti8
                        
                        
                        if %opcaoUti% equ 9 goto opcaoUti9
                        if %opcaoUti% equ 10 goto opcaoUti10
                        if %opcaoUti% equ 11 goto opcaoUti11

                        if %opcaoUti% GEQ 12 goto opcaoUti12
                        if %opcaoUti% GEQ 0 goto opcaoUti12
                        
                        
                        :opcaoUti1
                        appget install megasync
                        pause
                        goto menuUti
                        
                        :opcaoUti2
                        appget install 4k-youtube-to-mp3
                        pause
                        goto menuUti
                        
                        :opcaoUti3
                        appget install adobe-reader
                        pause
                        goto menuUti
                        
                        :opcaoUti4
                        start /wait programas/uTorrent.exe
                        pause
                        goto menuUti
                        
                        :opcaoUti5
                        appget install spotify
                        pause
                        goto menuUti
                        
                        :opcaoUti6
                        appget install lightshot
                        pause
                        goto menuUti
                        
                        :opcaoUti7
                        start /wait programas/OneDriveSetup.exe
                         
                        :opcaoUti8
                        start /wait programas/OfficeSetup.exe
                        
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

                        
                        pause
                        goto menuUti
                        
                       :opcaoUti11
                        cls
                        exit

                        :opcaoUti12
                        echo ==============================================
                        echo * Opcao Invalida! Escolha outra opcao do menu *
                        echo ==============================================
                        pause
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
    code --install-extension christian-kohler.path-intellisense  code --install-extension esbenp.prettier-vscode   code --install-extension felixfbecker.php-intellisense   code --install-extension svipas.code-autocomplete    code --install-extension TabNine.tabnine-vscode         code --install-extension techer.open-in-browser 
                        pause
                        goto menuExt

                        :opcaoExt2
                        git config --global user.name "Adolfo Poiatti"
                        git config --global user.email adolfo.poiatti@fatec.sp.gov.br 
                        pause
                        goto menuExt
                        



                        
                        pause
                        goto menuExt
                        
                        :menuExt9
                        goto menu

                        :menuExt10
                        cls
                        exit
                       
            
                        