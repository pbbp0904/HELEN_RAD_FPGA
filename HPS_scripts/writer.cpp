#include "writer.h"
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>
#include <QDebug>


Writer::Writer()
{
    hps = new HPS;
    fpga = new FPGA;

}

Writer::~Writer()
{
    qDebug() << "Exiting.";
    delete hps;
    delete fpga;
}

void Writer::DCCPolling(){

    //Creating Files
    datafile = fopen("data.bin", "ab");

    qDebug() << "Starting Data Collection...";

    uint32_t StartUp;
    StartUp = UINT32_MAX;

    fwrite(&StartUp, 4, 1, datafile);

    DCCPoll();
}



void Writer::DCCPoll(){

    fpga->ReadSet(1);

    while(1){

        // Reading Data
        fpga->ReadSet(0);
        fpga->DataRead(&buff[0]);
        fpga->ReadSet(1);

        if(!(buff[0] == buff[1])){
            fwrite(&buff[0], 4, 34, datafile);        
        }
        
        buff[1] = buff[0];
        }
    }

}









//    write_place = 0;
//    read_place = 0;

//    while (1){
//        qDebug() << "Collecting data...";
//        while(ReadData()){
//            ClockRead();
//            SDSave();
//        }

//        if (write_place != read_place){
//            SDSave();
//        }
//        ClockRead();
//    }


//bool Writer::ReadData(){
//    fpga->DccaRead(&DccaStatus[write_place]);
//    write_place += 1;
//    if (DccaStatus[write_place-1] >= 32768){
//        DccaStatus[write_place-1] -= 32768;
//        return false;
//    }else{
//        return true;
//    }
//}

//void Writer::ClockRead(){
//    fpga->ReadSet(1);
//    fpga->ReadSet(0);
//    if (write_place >= 1000000){
//        write_place = 0;
//    }
//    if (read_place >= 1000000){
//        read_place = 0;
//    }
//}

//void Writer::SDSave(){
//    //myfile << (to_string(DccaStatus[read_place]) + "\n");
//    read_place += 1;
//}


//std::clock_t start;
//double duration;
//int i;
//start = clock();







//    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
//    infofile << ("Read " + to_string(i) + " data samples from FPGA in: " + to_string(duration) + "\n");



//    start = clock();

//    fwrite(&DccPeakBuffer[0], 4, j, datafile_peak);
//    fwrite(&DccTailBuffer[0], 4, j, datafile_tail);
//    fwrite(&DccTimeBuffer[0], 4, j, datafile_time);

//    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
//    infofile << ("Wrote " + to_string(j) + " data samples to SD Card in: " + to_string(duration) + "\n");








//    start = clock();

//    for(i=0;i<1000000;i++){
//        fwrite((uint16_t *)fpga->m_dcc_a_base, 2, 1, datafile);
//    }



//    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
//    infofile << ("Wrote data in: " + to_string(duration) + "\n");


//void Writer::DCCPoll(){

//    std::clock_t start;
//    double duration;

//    int i;

//    start = clock();

//    for(i=0;i<1000000;i++){
//        fpga->SwitchRead(&DccaStatus[i]);
//    }

//    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
//    myfile << ("Read data in: " + to_string(duration) + "\n");

//    start = clock();

//    for(i=0;i<1000000;i++){
//        myfile << (to_string(DccaStatus[i]) + "\n");
//    }

//    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
//    myfile << ("Wrote data in: " + to_string(duration) + "\n");
//    myfile << "\n";

//}
