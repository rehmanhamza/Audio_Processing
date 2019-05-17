% Audio Processing in MATLAB
% by
% Hamza Rehman (16PWCSE1385)
% Signal and Systems Lab Project
% 4th Semester, DCSE, UET Peshawar

% Read comments for understanding

[file,path] = uigetfile('*.wav'); % Propmt Dialog Box to get .wav or .mp3 extension file
if isequal(file,0)  % If user dosen't input any file and choses cancel a warning dialog box wll be displayed 
    warndlg('Invalid File');
else
     [y,Fs]=audioread(fullfile(path,file)); %File is passed to audioread function for further analysis
     
     a = msgbox('File Added Succesfully!'); %Dialog box to inform user that file has been added succcessfully
     pause(.67)
     close(a)
     
     q1 = questdlg('How would you like to play the audio?',...
              'Audio Processing',...
              'Forward', 'Backward', 'End','dummy');
          
               f = waitbar(0,'Please wait...');
               pause(.5)
               
               waitbar(.67,f,'Processing your input');
               pause(1)

               waitbar(1,f,'Finishing');
               pause(1)

               close(f)
     switch q1
         case 'Forward'
             q2 = questdlg('Which Sample rate (Fs) would you like to play the audio?', ...
                       'Audio Processing', ...
                       'Original','2x','3x','dummy');
             switch q2
                case 'Original'
                    f = waitbar(0,'Please wait...');
                    pause(.5)
                    
                    waitbar(.67,f,'Setting Fs');
                    pause(1)

                    waitbar(1,f,'Finishing');
                    pause(1)

                    close(f)
                    
                    sound(y,Fs);
                    
                    q3=questdlg('Would you like a graph?',...
                        'Audio Processing',...
                        'Yes', 'No', 'Close', 'dummy');
                    switch q3
                        case 'Yes'
                            f = waitbar(0,'Please wait...');
                            pause(.5)

                            waitbar(.67,f,'Generating graph');
                            pause(1)

                            waitbar(1,f,'Finishing');
                            pause(1)

                            close(f)
                            
                            plot(y);
                            xlabel('t');
                            title('y');
                            
                            return 
                    end
                case '2x'
                    
                    f = waitbar(0,'Please wait...');
                    pause(.5)

                    waitbar(.67,f,'Setting Fs');
                    pause(1)

                    waitbar(1,f,'Finishing');
                    pause(1)

                    close(f)
                    
                    sound(y,2*Fs);
                    q4=questdlg('Would you like a graph?',...
                        'Audio Processing',...
                        'Yes', 'No', 'Close', 'dummy');
                    switch q4
                        case 'Yes'
                        f = waitbar(0,'Please wait...');
                        pause(.5)

                        waitbar(.67,f,'Generating graph');
                        pause(1)

                        waitbar(1,f,'Finishing');
                        pause(1)

                        close(f)
                        
                        plot(2*y);
                        title('2*y');
                        return
                    end
            case '3x'
                f = waitbar(0,'Please wait...');
                pause(.5)

                waitbar(.67,f,'Setting Fs');
                pause(1)

                waitbar(1,f,'Finishing');
                pause(1)

                close(f)
                
                sound(y,3*Fs);
                
                q5=questdlg('Would you like a graph?',...
                    'Audio Processing',...
                    'Yes','No','Close','dummy')
                switch q5
                    case 'Yes'
                    f = waitbar(0,'Please wait...');
                    pause(.5)

                    waitbar(.67,f,'Generating graph');
                    pause(1)

                    waitbar(1,f,'Finishing');
                    pause(1)

                    close(f)
                    
                    plot(3*y);
                    title('3*y');
                return
                end
             end
             
         case 'Backward'
             f = waitbar(0,'Please wait...');
             pause(.5)

             waitbar(.67,f,'Flipping audio file');
             pause(1)

             waitbar(1,f,'Finishing');
             pause(1)

             close(f)
             
             y1=flipud(y);
             
             q2 = questdlg('Which Sample rate (Fs) would you like to play the audio?', ...
                       'Audio Processing', ...
                       'Original','2x','3x','dummy');
             switch q2
                case 'Original'
                    f = waitbar(0,'Please wait...');
                    pause(.5)
                    
                    waitbar(.67,f,'Setting Fs');
                    pause(1)

                    waitbar(1,f,'Finishing');
                    pause(1)

                    close(f)
                    
                    sound(y1,Fs);
                    
                    q3=questdlg('Would you like a graph?',...
                        'Audio Processing',...
                        'Yes', 'No', 'Close', 'dummy');
                    switch q3
                        case 'Yes'
                            f = waitbar(0,'Please wait...');
                            pause(.5)

                            waitbar(.67,f,'Generating graph');
                            pause(1)

                            waitbar(1,f,'Finishing');
                            pause(1)

                            close(f)
                            
                            plot(y1);
                            title('y1');
                            
                            return 
                    end
                case '2x'
                    
                    f = waitbar(0,'Please wait...');
                    pause(.5)

                    waitbar(.67,f,'Setting Fs');
                    pause(1)

                    waitbar(1,f,'Finishing');
                    pause(1)

                    close(f)
                    
                    sound(y1,2*Fs);
                    q4=questdlg('Would you like a graph?',...
                        'Audio Processing',...
                        'Yes', 'No', 'Close', 'dummy');
                    switch q4
                        case 'Yes'
                        f = waitbar(0,'Please wait...');
                        pause(.5)

                        waitbar(.67,f,'Generating graph');
                        pause(1)

                        waitbar(1,f,'Finishing');
                        pause(1)

                        close(f)
                        
                        plot(2*y1);
                        title('2*y1');
                        return
                    end
            case '3x'
                f = waitbar(0,'Please wait...');
                pause(.5)

                waitbar(.67,f,'Setting Fs');
                pause(1)

                waitbar(1,f,'Finishing');
                pause(1)

                close(f)
                
                sound(y1,3*Fs);
                
                q5=questdlg('Would you like a graph?',...
                    'Audio Processing',...
                    'Yes','No','Close','dummy')
                switch q5
                    case 'Yes'
                    f = waitbar(0,'Please wait...');
                    pause(.5)

                    waitbar(.67,f,'Generating graph');
                    pause(1)

                    waitbar(1,f,'Finishing');
                    pause(1)

                    close(f)
                    
                    plot(3*y1);
                    title('3*y1');
                return
                end
             end
     end
end