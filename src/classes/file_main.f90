program file_main
  use file_mod
  implicit none
! create one new object image
 type(info)     :: logs
 type(timing)   :: timer
 integer        :: i
 print*, 'start'
 logs= info(filename="mylog.txt")
 timer=timing(filename="timings.txt")
 call logs%loginfo("Start program")
 call timer%loginfo("Start program")
 call timer%TIMING_start()
 ! Start Portion of code I would like to time
 do i=1,10000000
   print*, 'Hello World...'
 enddo
 ! End portion of code I would like to time
 call timer%TIMING_stop() 
 call logs%loginfo("End program")
 call logs%close()
 call timer%close()
end program file_main
