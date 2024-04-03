#define F_CPU 12000000
#include <mcs51/8051.h>
#define	K2	P3_0
#define	K1	P3_1
#define PWM_OUT P3_7

#define KATOD1 P3_3
#define KATOD2 P3_4
#define KATOD3 P3_5
#define OUT_SEG P1


__code unsigned char table[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

                unsigned int PWM = 0xfe;
                unsigned char count_prg = 0;
                unsigned char dig1 =0;
                unsigned char dig2 =0;
                unsigned char dig3 =0;
                unsigned char power =0;
                unsigned char key_enable =0;



    void show_dig(void)
    {

        count_prg++;



                        if (count_prg > 2) count_prg = 0;

                        if (count_prg==2 && power>99)
                            {

                             OUT_SEG =0;
                             KATOD1 = 0;
                             KATOD2 = 1;
                             KATOD3 = 1;
                             OUT_SEG = table[dig1];
                            }

                         if (count_prg==1 && power>9 )
                            {
                             OUT_SEG =0;
                             KATOD1 = 1;
                             KATOD2 = 0;
                             KATOD3 = 1;
                             OUT_SEG = table[dig2];
                            }

                         if (count_prg==0 )
                            {
                             OUT_SEG =0;
                             KATOD1 = 1;
                             KATOD2 = 1;
                             KATOD3 = 0;
                             OUT_SEG = table[dig3];
                            }


    }

    void timer0(void) __interrupt(1)
        {
            TR1 = 0;
            TH0 = 0xfe;
            TL0 = 0xff;
            TH1= PWM;
            TR1 = 1;
            PWM_OUT = 1;
        }

    void timer1(void) __interrupt(3)
        {
            TR1 = 0;
            PWM_OUT = 0;

        }

    void delay(unsigned char t)
        {
            while (t--);
        }

    void delayms(unsigned char ms)
        {
            unsigned char i;

            while (ms--) {
                for (i = 0; i < 120; i++);
                    }
        }



        void main(void)
            {


                PWM_OUT = 0;
                TMOD = 0x21;
                TH0 = 0xfe;
                TL0 = 0x00;
                TH1 = 0xfe;
                TL1 = 0x01;

                EA = 1;
                ET0 = 1;
                ET1 = 1;

                TR0 = 1;

                while (1)
                    {
                        show_dig();
                        key_enable=0;
                        delayms(5);
                        while (K1 == 0 )

                            {
                                show_dig();
                                key_enable++;
                                if(key_enable>254)key_enable=0;
                                if (power != 100 && key_enable==0)
                                {

                                    power++;

                                    dig3= power%10;
                                    dig2= (power/10)%10;
                                    dig1= (power/100)%10;
                                    PWM= 0xff^(power * 0xff)/100;


                                }

                            }



                        while (K2 == 0)

                            {
                                show_dig();
                                key_enable++;
                                if(key_enable>254)key_enable=0;
                                if (power != 0  && key_enable ==0)
                                {


                                    power--;


                                    dig3= power%10;
                                    dig2= (power/10)%10;
                                    dig1= (power/100)%10;
                                    PWM= 0xff^(power * 0xff)/100;

                                }

                            }

                    }
            }
