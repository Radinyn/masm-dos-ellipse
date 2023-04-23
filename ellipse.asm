assume cs:code1
assume ds:data1
assume ss:stack1

RIGHT_ARROW equ 4Dh
LEFT_ARROW  equ 4Bh
UP_ARROW    equ 48h
DOWN_ARROW  equ 50h
ESCAPE_KEY  equ 01h

BLACK equ 0d
PURPLE equ 13d

SCREEN_H equ 320d
SCREEN_V equ 200d

MAX_H equ 150d
MAX_V equ 90d

SPEED equ 1d

CENTER_X equ 160d
CENTER_Y equ 100d

; num of points to draw + length of SIN and COS
RESOLUTION equ 1024d

data1 segment
    text db 128 dup(?)

    size_h dw 10d
    size_v dw 10d
    clear_x dw 0d
    clear_y dw 0d
SIN dw 0d,7d,13d,19d,26d,32d,38d,44d
    dw 51d,57d,63d,70d,76d,82d,88d,95d
    dw 101d,107d,113d,120d,126d,132d,138d,145d
    dw 151d,157d,163d,169d,176d,182d,188d,194d
    dw 200d,206d,213d,219d,225d,231d,237d,243d
    dw 249d,255d,261d,268d,274d,280d,286d,292d
    dw 298d,304d,310d,316d,322d,328d,334d,340d
    dw 345d,351d,357d,363d,369d,375d,381d,387d
    dw 392d,398d,404d,410d,415d,421d,427d,433d
    dw 438d,444d,450d,455d,461d,467d,472d,478d
    dw 483d,489d,494d,500d,505d,511d,516d,522d
    dw 527d,532d,538d,543d,548d,554d,559d,564d
    dw 569d,575d,580d,585d,590d,595d,600d,605d
    dw 610d,616d,621d,626d,630d,635d,640d,645d
    dw 650d,655d,660d,665d,669d,674d,679d,684d
    dw 688d,693d,697d,702d,707d,711d,716d,720d
    dw 725d,729d,733d,738d,742d,746d,751d,755d
    dw 759d,763d,768d,772d,776d,780d,784d,788d
    dw 792d,796d,800d,804d,808d,812d,815d,819d
    dw 823d,827d,830d,834d,838d,841d,845d,848d
    dw 852d,855d,859d,862d,866d,869d,872d,876d
    dw 879d,882d,885d,888d,891d,895d,898d,901d
    dw 904d,907d,909d,912d,915d,918d,921d,923d
    dw 926d,929d,931d,934d,937d,939d,942d,944d
    dw 947d,949d,951d,954d,956d,958d,960d,963d
    dw 965d,967d,969d,971d,973d,975d,977d,979d
    dw 980d,982d,984d,986d,987d,989d,991d,992d
    dw 994d,995d,997d,998d,1000d,1001d,1002d,1004d
    dw 1005d,1006d,1007d,1008d,1009d,1010d,1011d,1012d
    dw 1013d,1014d,1015d,1016d,1017d,1018d,1018d,1019d
    dw 1020d,1020d,1021d,1021d,1022d,1022d,1023d,1023d
    dw 1023d,1024d,1024d,1024d,1024d,1024d,1024d,1024d
    dw 1024d,1024d,1024d,1024d,1024d,1024d,1024d,1024d
    dw 1023d,1023d,1023d,1022d,1022d,1021d,1021d,1020d
    dw 1020d,1019d,1018d,1018d,1017d,1016d,1015d,1014d
    dw 1013d,1012d,1011d,1010d,1009d,1008d,1007d,1006d
    dw 1005d,1004d,1002d,1001d,1000d,998d,997d,995d
    dw 994d,992d,991d,989d,987d,986d,984d,982d
    dw 980d,979d,977d,975d,973d,971d,969d,967d
    dw 965d,963d,960d,958d,956d,954d,951d,949d
    dw 947d,944d,942d,939d,937d,934d,931d,929d
    dw 926d,923d,921d,918d,915d,912d,909d,907d
    dw 904d,901d,898d,895d,891d,888d,885d,882d
    dw 879d,876d,872d,869d,866d,862d,859d,855d
    dw 852d,848d,845d,841d,838d,834d,830d,827d
    dw 823d,819d,815d,812d,808d,804d,800d,796d
    dw 792d,788d,784d,780d,776d,772d,768d,763d
    dw 759d,755d,751d,746d,742d,738d,733d,729d
    dw 725d,720d,716d,711d,707d,702d,697d,693d
    dw 688d,684d,679d,674d,669d,665d,660d,655d
    dw 650d,645d,640d,635d,630d,626d,621d,616d
    dw 610d,605d,600d,595d,590d,585d,580d,575d
    dw 569d,564d,559d,554d,548d,543d,538d,532d
    dw 527d,522d,516d,511d,505d,500d,494d,489d
    dw 483d,478d,472d,467d,461d,455d,450d,444d
    dw 438d,433d,427d,421d,415d,410d,404d,398d
    dw 392d,387d,381d,375d,369d,363d,357d,351d
    dw 345d,340d,334d,328d,322d,316d,310d,304d
    dw 298d,292d,286d,280d,274d,268d,261d,255d
    dw 249d,243d,237d,231d,225d,219d,213d,206d
    dw 200d,194d,188d,182d,176d,169d,163d,157d
    dw 151d,145d,138d,132d,126d,120d,113d,107d
    dw 101d,95d,88d,82d,76d,70d,63d,57d
    dw 51d,44d,38d,32d,26d,19d,13d,7d
    dw 1d,-6d,-12d,-18d,-25d,-31d,-37d,-43d
    dw -50d,-56d,-62d,-69d,-75d,-81d,-87d,-94d
    dw -100d,-106d,-112d,-119d,-125d,-131d,-137d,-144d
    dw -150d,-156d,-162d,-168d,-175d,-181d,-187d,-193d
    dw -199d,-205d,-212d,-218d,-224d,-230d,-236d,-242d
    dw -248d,-254d,-260d,-267d,-273d,-279d,-285d,-291d
    dw -297d,-303d,-309d,-315d,-321d,-327d,-333d,-339d
    dw -344d,-350d,-356d,-362d,-368d,-374d,-380d,-386d
    dw -391d,-397d,-403d,-409d,-414d,-420d,-426d,-432d
    dw -437d,-443d,-449d,-454d,-460d,-466d,-471d,-477d
    dw -482d,-488d,-493d,-499d,-504d,-510d,-515d,-521d
    dw -526d,-531d,-537d,-542d,-547d,-553d,-558d,-563d
    dw -568d,-574d,-579d,-584d,-589d,-594d,-599d,-604d
    dw -609d,-615d,-620d,-625d,-629d,-634d,-639d,-644d
    dw -649d,-654d,-659d,-664d,-668d,-673d,-678d,-683d
    dw -687d,-692d,-696d,-701d,-706d,-710d,-715d,-719d
    dw -724d,-728d,-732d,-737d,-741d,-745d,-750d,-754d
    dw -758d,-762d,-767d,-771d,-775d,-779d,-783d,-787d
    dw -791d,-795d,-799d,-803d,-807d,-811d,-814d,-818d
    dw -822d,-826d,-829d,-833d,-837d,-840d,-844d,-847d
    dw -851d,-854d,-858d,-861d,-865d,-868d,-871d,-875d
    dw -878d,-881d,-884d,-887d,-890d,-894d,-897d,-900d
    dw -903d,-906d,-908d,-911d,-914d,-917d,-920d,-922d
    dw -925d,-928d,-930d,-933d,-936d,-938d,-941d,-943d
    dw -946d,-948d,-950d,-953d,-955d,-957d,-959d,-962d
    dw -964d,-966d,-968d,-970d,-972d,-974d,-976d,-978d
    dw -979d,-981d,-983d,-985d,-986d,-988d,-990d,-991d
    dw -993d,-994d,-996d,-997d,-999d,-1000d,-1001d,-1003d
    dw -1004d,-1005d,-1006d,-1007d,-1008d,-1009d,-1010d,-1011d
    dw -1012d,-1013d,-1014d,-1015d,-1016d,-1017d,-1017d,-1018d
    dw -1019d,-1019d,-1020d,-1020d,-1021d,-1021d,-1022d,-1022d
    dw -1022d,-1023d,-1023d,-1023d,-1023d,-1023d,-1023d,-1023d
    dw -1024d,-1023d,-1023d,-1023d,-1023d,-1023d,-1023d,-1023d
    dw -1022d,-1022d,-1022d,-1021d,-1021d,-1020d,-1020d,-1019d
    dw -1019d,-1018d,-1017d,-1017d,-1016d,-1015d,-1014d,-1013d
    dw -1012d,-1011d,-1010d,-1009d,-1008d,-1007d,-1006d,-1005d
    dw -1004d,-1003d,-1001d,-1000d,-999d,-997d,-996d,-994d
    dw -993d,-991d,-990d,-988d,-986d,-985d,-983d,-981d
    dw -979d,-978d,-976d,-974d,-972d,-970d,-968d,-966d
    dw -964d,-962d,-959d,-957d,-955d,-953d,-950d,-948d
    dw -946d,-943d,-941d,-938d,-936d,-933d,-930d,-928d
    dw -925d,-922d,-920d,-917d,-914d,-911d,-908d,-906d
    dw -903d,-900d,-897d,-894d,-890d,-887d,-884d,-881d
    dw -878d,-875d,-871d,-868d,-865d,-861d,-858d,-854d
    dw -851d,-847d,-844d,-840d,-837d,-833d,-829d,-826d
    dw -822d,-818d,-814d,-811d,-807d,-803d,-799d,-795d
    dw -791d,-787d,-783d,-779d,-775d,-771d,-767d,-762d
    dw -758d,-754d,-750d,-745d,-741d,-737d,-732d,-728d
    dw -724d,-719d,-715d,-710d,-706d,-701d,-696d,-692d
    dw -687d,-683d,-678d,-673d,-668d,-664d,-659d,-654d
    dw -649d,-644d,-639d,-634d,-629d,-625d,-620d,-615d
    dw -609d,-604d,-599d,-594d,-589d,-584d,-579d,-574d
    dw -568d,-563d,-558d,-553d,-547d,-542d,-537d,-531d
    dw -526d,-521d,-515d,-510d,-504d,-499d,-493d,-488d
    dw -482d,-477d,-471d,-466d,-460d,-454d,-449d,-443d
    dw -437d,-432d,-426d,-420d,-414d,-409d,-403d,-397d
    dw -391d,-386d,-380d,-374d,-368d,-362d,-356d,-350d
    dw -344d,-339d,-333d,-327d,-321d,-315d,-309d,-303d
    dw -297d,-291d,-285d,-279d,-273d,-267d,-260d,-254d
    dw -248d,-242d,-236d,-230d,-224d,-218d,-212d,-205d
    dw -199d,-193d,-187d,-181d,-175d,-168d,-162d,-156d
    dw -150d,-144d,-137d,-131d,-125d,-119d,-112d,-106d
    dw -100d,-94d,-87d,-81d,-75d,-69d,-62d,-56d
    dw -50d,-43d,-37d,-31d,-25d,-18d,-12d,-6d
COS dw 1024d,1024d,1024d,1024d,1024d,1024d,1024d,1024d
    dw 1023d,1023d,1023d,1022d,1022d,1021d,1021d,1020d
    dw 1020d,1019d,1018d,1018d,1017d,1016d,1015d,1014d
    dw 1013d,1012d,1011d,1010d,1009d,1008d,1007d,1006d
    dw 1005d,1004d,1002d,1001d,1000d,998d,997d,995d
    dw 994d,992d,991d,989d,987d,986d,984d,982d
    dw 980d,979d,977d,975d,973d,971d,969d,967d
    dw 965d,963d,960d,958d,956d,954d,951d,949d
    dw 947d,944d,942d,939d,937d,934d,931d,929d
    dw 926d,923d,921d,918d,915d,912d,909d,907d
    dw 904d,901d,898d,895d,891d,888d,885d,882d
    dw 879d,876d,872d,869d,866d,862d,859d,855d
    dw 852d,848d,845d,841d,838d,834d,830d,827d
    dw 823d,819d,815d,812d,808d,804d,800d,796d
    dw 792d,788d,784d,780d,776d,772d,768d,763d
    dw 759d,755d,751d,746d,742d,738d,733d,729d
    dw 725d,720d,716d,711d,707d,702d,697d,693d
    dw 688d,684d,679d,674d,669d,665d,660d,655d
    dw 650d,645d,640d,635d,630d,626d,621d,616d
    dw 610d,605d,600d,595d,590d,585d,580d,575d
    dw 569d,564d,559d,554d,548d,543d,538d,532d
    dw 527d,522d,516d,511d,505d,500d,494d,489d
    dw 483d,478d,472d,467d,461d,455d,450d,444d
    dw 438d,433d,427d,421d,415d,410d,404d,398d
    dw 392d,387d,381d,375d,369d,363d,357d,351d
    dw 345d,340d,334d,328d,322d,316d,310d,304d
    dw 298d,292d,286d,280d,274d,268d,261d,255d
    dw 249d,243d,237d,231d,225d,219d,213d,206d
    dw 200d,194d,188d,182d,176d,169d,163d,157d
    dw 151d,145d,138d,132d,126d,120d,113d,107d
    dw 101d,95d,88d,82d,76d,70d,63d,57d
    dw 51d,44d,38d,32d,26d,19d,13d,7d
    dw 1d,-6d,-12d,-18d,-25d,-31d,-37d,-43d
    dw -50d,-56d,-62d,-69d,-75d,-81d,-87d,-94d
    dw -100d,-106d,-112d,-119d,-125d,-131d,-137d,-144d
    dw -150d,-156d,-162d,-168d,-175d,-181d,-187d,-193d
    dw -199d,-205d,-212d,-218d,-224d,-230d,-236d,-242d
    dw -248d,-254d,-260d,-267d,-273d,-279d,-285d,-291d
    dw -297d,-303d,-309d,-315d,-321d,-327d,-333d,-339d
    dw -344d,-350d,-356d,-362d,-368d,-374d,-380d,-386d
    dw -391d,-397d,-403d,-409d,-414d,-420d,-426d,-432d
    dw -437d,-443d,-449d,-454d,-460d,-466d,-471d,-477d
    dw -482d,-488d,-493d,-499d,-504d,-510d,-515d,-521d
    dw -526d,-531d,-537d,-542d,-547d,-553d,-558d,-563d
    dw -568d,-574d,-579d,-584d,-589d,-594d,-599d,-604d
    dw -609d,-615d,-620d,-625d,-629d,-634d,-639d,-644d
    dw -649d,-654d,-659d,-664d,-668d,-673d,-678d,-683d
    dw -687d,-692d,-696d,-701d,-706d,-710d,-715d,-719d
    dw -724d,-728d,-732d,-737d,-741d,-745d,-750d,-754d
    dw -758d,-762d,-767d,-771d,-775d,-779d,-783d,-787d
    dw -791d,-795d,-799d,-803d,-807d,-811d,-814d,-818d
    dw -822d,-826d,-829d,-833d,-837d,-840d,-844d,-847d
    dw -851d,-854d,-858d,-861d,-865d,-868d,-871d,-875d
    dw -878d,-881d,-884d,-887d,-890d,-894d,-897d,-900d
    dw -903d,-906d,-908d,-911d,-914d,-917d,-920d,-922d
    dw -925d,-928d,-930d,-933d,-936d,-938d,-941d,-943d
    dw -946d,-948d,-950d,-953d,-955d,-957d,-959d,-962d
    dw -964d,-966d,-968d,-970d,-972d,-974d,-976d,-978d
    dw -979d,-981d,-983d,-985d,-986d,-988d,-990d,-991d
    dw -993d,-994d,-996d,-997d,-999d,-1000d,-1001d,-1003d
    dw -1004d,-1005d,-1006d,-1007d,-1008d,-1009d,-1010d,-1011d
    dw -1012d,-1013d,-1014d,-1015d,-1016d,-1017d,-1017d,-1018d
    dw -1019d,-1019d,-1020d,-1020d,-1021d,-1021d,-1022d,-1022d
    dw -1022d,-1023d,-1023d,-1023d,-1023d,-1023d,-1023d,-1023d
    dw -1024d,-1023d,-1023d,-1023d,-1023d,-1023d,-1023d,-1023d
    dw -1022d,-1022d,-1022d,-1021d,-1021d,-1020d,-1020d,-1019d
    dw -1019d,-1018d,-1017d,-1017d,-1016d,-1015d,-1014d,-1013d
    dw -1012d,-1011d,-1010d,-1009d,-1008d,-1007d,-1006d,-1005d
    dw -1004d,-1003d,-1001d,-1000d,-999d,-997d,-996d,-994d
    dw -993d,-991d,-990d,-988d,-986d,-985d,-983d,-981d
    dw -979d,-978d,-976d,-974d,-972d,-970d,-968d,-966d
    dw -964d,-962d,-959d,-957d,-955d,-953d,-950d,-948d
    dw -946d,-943d,-941d,-938d,-936d,-933d,-930d,-928d
    dw -925d,-922d,-920d,-917d,-914d,-911d,-908d,-906d
    dw -903d,-900d,-897d,-894d,-890d,-887d,-884d,-881d
    dw -878d,-875d,-871d,-868d,-865d,-861d,-858d,-854d
    dw -851d,-847d,-844d,-840d,-837d,-833d,-829d,-826d
    dw -822d,-818d,-814d,-811d,-807d,-803d,-799d,-795d
    dw -791d,-787d,-783d,-779d,-775d,-771d,-767d,-762d
    dw -758d,-754d,-750d,-745d,-741d,-737d,-732d,-728d
    dw -724d,-719d,-715d,-710d,-706d,-701d,-696d,-692d
    dw -687d,-683d,-678d,-673d,-668d,-664d,-659d,-654d
    dw -649d,-644d,-639d,-634d,-629d,-625d,-620d,-615d
    dw -609d,-604d,-599d,-594d,-589d,-584d,-579d,-574d
    dw -568d,-563d,-558d,-553d,-547d,-542d,-537d,-531d
    dw -526d,-521d,-515d,-510d,-504d,-499d,-493d,-488d
    dw -482d,-477d,-471d,-466d,-460d,-454d,-449d,-443d
    dw -437d,-432d,-426d,-420d,-414d,-409d,-403d,-397d
    dw -391d,-386d,-380d,-374d,-368d,-362d,-356d,-350d
    dw -344d,-339d,-333d,-327d,-321d,-315d,-309d,-303d
    dw -297d,-291d,-285d,-279d,-273d,-267d,-260d,-254d
    dw -248d,-242d,-236d,-230d,-224d,-218d,-212d,-205d
    dw -199d,-193d,-187d,-181d,-175d,-168d,-162d,-156d
    dw -150d,-144d,-137d,-131d,-125d,-119d,-112d,-106d
    dw -100d,-94d,-87d,-81d,-75d,-69d,-62d,-56d
    dw -50d,-43d,-37d,-31d,-25d,-18d,-12d,-6d
    dw 0d,7d,13d,19d,26d,32d,38d,44d
    dw 51d,57d,63d,70d,76d,82d,88d,95d
    dw 101d,107d,113d,120d,126d,132d,138d,145d
    dw 151d,157d,163d,169d,176d,182d,188d,194d
    dw 200d,206d,213d,219d,225d,231d,237d,243d
    dw 249d,255d,261d,268d,274d,280d,286d,292d
    dw 298d,304d,310d,316d,322d,328d,334d,340d
    dw 345d,351d,357d,363d,369d,375d,381d,387d
    dw 392d,398d,404d,410d,415d,421d,427d,433d
    dw 438d,444d,450d,455d,461d,467d,472d,478d
    dw 483d,489d,494d,500d,505d,511d,516d,522d
    dw 527d,532d,538d,543d,548d,554d,559d,564d
    dw 569d,575d,580d,585d,590d,595d,600d,605d
    dw 610d,616d,621d,626d,630d,635d,640d,645d
    dw 650d,655d,660d,665d,669d,674d,679d,684d
    dw 688d,693d,697d,702d,707d,711d,716d,720d
    dw 725d,729d,733d,738d,742d,746d,751d,755d
    dw 759d,763d,768d,772d,776d,780d,784d,788d
    dw 792d,796d,800d,804d,808d,812d,815d,819d
    dw 823d,827d,830d,834d,838d,841d,845d,848d
    dw 852d,855d,859d,862d,866d,869d,872d,876d
    dw 879d,882d,885d,888d,891d,895d,898d,901d
    dw 904d,907d,909d,912d,915d,918d,921d,923d
    dw 926d,929d,931d,934d,937d,939d,942d,944d
    dw 947d,949d,951d,954d,956d,958d,960d,963d
    dw 965d,967d,969d,971d,973d,975d,977d,979d
    dw 980d,982d,984d,986d,987d,989d,991d,992d
    dw 994d,995d,997d,998d,1000d,1001d,1002d,1004d
    dw 1005d,1006d,1007d,1008d,1009d,1010d,1011d,1012d
    dw 1013d,1014d,1015d,1016d,1017d,1018d,1018d,1019d
    dw 1020d,1020d,1021d,1021d,1022d,1022d,1023d,1023d
    dw 1023d,1024d,1024d,1024d,1024d,1024d,1024d,1024d
data1 ends

code1 segment
program_start:
    ; init stack
    mov ax, seg stack1
    mov ss, ax
    mov sp, offset stack_top

    ; init data
    mov ax, seg data1
    mov ds, ax

    ; change display mode
    mov ah, 0
    ; use 320x200 VGA mode
    mov al, 13h
    int 10h

    ; set es to start of video card memory
    mov ax, 0a000h
    mov es, ax
    
    main_loop:
        call draw

        call read_key

        call clear_screen

        jmp main_loop

read_key:
    xor ah, ah
    int 16h

    right_arr:
    cmp ah, RIGHT_ARROW
    jne left_arr

        ; range check
        cmp size_h, MAX_H
        je read_key_end

        add size_h, SPEED
    
    jmp read_key_end


    left_arr:
    cmp ah, LEFT_ARROW
    jne up_arr

        ; range check
        cmp size_h, 0d
        je read_key_end

        sub size_h, SPEED

    jmp read_key_end


    up_arr:
    cmp ah, UP_ARROW
    jne down_arr

        ; range check
        cmp size_v, MAX_V
        je read_key_end

        add size_v, SPEED

    jmp read_key_end


    down_arr:
    cmp ah, DOWN_ARROW
    jne escape

        ; range check
        cmp size_v, 0d
        je read_key_end
        
        sub size_v, SPEED

    jmp read_key_end


    escape:
    cmp ah, ESCAPE_KEY
    je program_end

    read_key_end:
    ret


draw:

    ; we are iterating through words (2 bytes)
    ; i = 2*RESOLUTION
    mov si, RESOLUTION
    add si, RESOLUTION

    draw_loop:

        mov ax, PURPLE ; color
        push ax

        ; y = center_y + b sin(t)
        mov ax, SIN[si]
        mov bx, size_v
        imul bx

        mov bx, RESOLUTION
        idiv bx ; trim to resolution

        add ax, CENTER_Y

        push ax

        ; x = center_x + a cos(t)
        mov ax, COS[si]
        mov bx, size_h
        imul bx

        mov bx, RESOLUTION
        idiv bx ; trim to resolution

        add ax, CENTER_X

        push ax

        call draw_pixel

        cmp si, 0
        je draw_end

        ; i -= 2
        dec si
        dec si
        jmp draw_loop

    draw_end:
    ret

; args (words): x, y, color
draw_pixel:
    push bp
    mov bp, sp

    ; SCREEN_H * y + x
    mov bx, SCREEN_H
    mov ax, word ptr ss:[bp+6]
    mul bx 

    mov bx, word ptr ss:[bp+4]
    add bx, ax 

    mov ax, word ptr ss:[bp+8] ; color

    mov byte ptr es:[bx], al ; light up a pixel

    pop bp
    ret 6


clear_screen:
    mov clear_x, SCREEN_H
    loop_x:
        mov clear_y, SCREEN_V
        loop_y:
            mov cx, BLACK

            push cx
            push clear_y
            push clear_x

            call draw_pixel

            dec clear_y
            cmp clear_y, 0d
            jge loop_y
        
        dec clear_x
        cmp clear_x, 0d
        jge loop_x
    ret


program_end:
    ; change display mode
    mov ah, 0
    ; use text mode
    mov al, 3h
    int 10h 

    mov ax, 4c00h ; end program
    int 21h


code1 ends


stack1 segment stack
            dw 1024 dup(?)
stack_top   dw ?
stack1 ends

end program_start