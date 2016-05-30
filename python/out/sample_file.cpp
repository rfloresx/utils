
#include sample_file.h

const std::string TOPIC_NAME = "TOSET";
const std::string TOPIC_NAME = "TOSET";
const std::string QOS_PROFILE = "TransientKeepLast";
const std::string QOS_PARTICIPANT = "TransientKeepLast";
const std::string QOS_SUBSCRIBER = "TransientKeepLast";
const std::string QOS_TOPIC = "TransientKeepLast";
const std::string QOS_READER = "TransientKeepLast";

void CCortoDataSubscriber::NewDataAvailable(Sample sample)
{
}

void CCortoDataSubscriber::InstanceNotAliveUpdate()
{
}

bool CCortoDataSubscriber::Initialize()
{
    bool retVal = false;

    retVal = ReaderInitialize();

    return retVal;
}

CCortoDataSubscriber::~CCortoDataSubscriber()
{

}

CCortoDataSubscriber::CCortoDataSubscriber()  :
    CCortoDataReader(TOPIC_NAME,
                     QOS_PROFILE,
                     QOS_PARTICIPANT,
                     QOS_SUBSCRIBER,
                     QOS_TOPIC,
                     QOS_READER)
{

}

