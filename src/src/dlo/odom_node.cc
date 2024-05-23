/************************************************************
 *
 * Copyright (c) 2022, University of California, Los Angeles
 *
 * Authors: Kenny J. Chen, Brett T. Lopez
 * Contact: kennyjchen@ucla.edu, btlopez@ucla.edu
 *
 ***********************************************************/

#include "dlo/odom.h"

void controlC(int sig)
{

    dlo::OdomNode::abort();
}

int main(int argc, char **argv)
{

    ros::init(argc, argv, "dlo_odom_node");
    ros::NodeHandle nh("~");

    signal(SIGTERM, controlC); // 信号中断
    sleep(0.5);                // 200hz

    dlo::OdomNode node(nh);
    ros::AsyncSpinner spinner(0);
    spinner.start();
    node.start(); // 主线程只打印一次信息
    ros::waitForShutdown();

    return 0;
}
